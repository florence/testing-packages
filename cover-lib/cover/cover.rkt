#lang racket/base
(provide test-files!
         make-cover-environment
         get-test-coverage
         current-cover-environment environment?
         environment-compile environment-namespace
         coverage-wrapper-map
         run-file! 
         kernelize-namespace!)

#|

This module, and its partner strace.rkt implement code coverage.  In essence code coverage consists
of a protocol for between this file and all covered files, with the loger begin the communication
channel.

This module maintains a mapping between src locations in files to be covered and positions in a set
of vectors. The annotation in strace.rkt its given (mutable) access to this mapping, and an empty
set of vectors. During compilation the annotator will fill in the vector mapping and allocate the
vectors.

At annotate-module load time the module will log a request for its vector across using a pre-known
log topic combined with a key unique to each coverage environment. This module will log a responce
on a different pre-known key (combined with the same unique key). The data in this responce will be
the file->vector mapping.


Thus, In essence this module has three responsibilites:
1. setup a listening thread to responde to the protocol described above.
2. compile and run all test modules with the annotator and a coverage environment
3. interperet the coverage vectors into something useable.

|#

(require (for-syntax racket/base))
(require racket/dict
         syntax/modcode
         racket/function
         syntax/modread
         syntax/modresolve
         syntax/parse
         racket/bool
         racket/runtime-path
         racket/match
         racket/path
         racket/syntax
         rackunit/log
         racket/list
         racket/port
         racket/set
         custom-load
         "private/shared.rkt"
         "private/file-utils.rkt"
         "private/format-utils.rkt"
         "strace.rkt")

;; An environment has:
;; a `namespace`
;; a handler for `current-compile`
;; a function that will annoate expanded code, given a file name
;; a topic for logs to be reiceved on. Must be unique for every environment
;; a hash map from srcloc to (List filename index)
;; a hash map from filename to [Vector bool]. Each vector location maps to a srcloc
;;   via the table in coverage-srcloc-mapping
(struct environment (namespace compile ann-top topic
                               coverage-srcloc-mapping
                               coverage-vector-mapping))
;; A special structure used for communicating information about programs that call `exit`
;; `code` is the exit code that `exit` was called with
(struct an-exit (code))

;;; ---------------------- Running Files ---------------------------------
(define current-live-files (make-parameter #f))

;; Test files and build coverage map
;; returns true if no tests reported as failed, and no files errored.
(define (test-files! #:submod [submod-names 'test] #:env [env (current-cover-environment)]
                     #:dont-compile [dont-compile null]
                     . files)
  (parameterize ([current-cover-environment env])
    (define abs
      (for/list ([p (in-list files)])
        (if (list? p)
            (cons (->absolute (car p)) (cdr p))
            (->absolute p))))
    (define abs-names
      (for/list ([p (in-list abs)])
        (match p
          [(cons p _) p]
          [_ p])))
    (define excludes (map ->absolute dont-compile))
    (define cover-load/use-compiled (make-cover-load/use-compiled abs-names))
    (define tests-failed
      (parameterize* ([current-load/use-compiled cover-load/use-compiled]
                      [current-namespace (get-namespace)]
                      [current-live-files (list->set abs-names)])
        (with-cover-loggers
         (define-values (_ t1 t2 t3)
           (time-apply
            (lambda ()
              (for ([f (in-list abs-names)]
                    #:unless (member f excludes))
                (log-cover-info "instrumenting: ~a" f)
                (compile-file f)))
            null))
         (log-cover-benchmark-info "compile: ~a" (list t1 t2 t3))
         (define-values (result t11 t22 t33)
           (time-apply
            (lambda ()
              (for*/fold ([tests-failed #f])
                         ([f (in-list abs)]
                          [submod-name (in-list (if (list? submod-names)
                                                    submod-names
                                                    (list submod-names)))])
                (log-cover-info "running file: ~a" f)
                (define failed? (handle-file f submod-name))
                (or failed? tests-failed)))
            null))
         (log-cover-benchmark-info "run: ~a" (list t11 t22 t33))
         (first result))))
    (log-cover-debug "ran ~s\n" files)
    (not tests-failed)))

(define-syntax-rule (with-cover-loggers e ...)
  (with-cover-loggersf (lambda () e ...)))

(define (with-cover-loggersf f)
  (with-intercepted-logging/receiver
   (cover-give-file-mapping)
   f
   (make-log-receiver
    (current-logger)
    'info
    (format-symbol "~a~a" (get-topic) 'cover-internal-request-vector-mapping))))
  

;; we dont care what the msg content is, just send the vector back
(define (cover-give-file-mapping)
  (define topic (format-symbol "~a~a" (get-topic) 'cover-internal-send-vector-mapping))
  (lambda (_)
    (log-message (current-logger)
                 'info
                 topic
                 ""
                 (get-coverage-vector-mapping))))

;;; ---------------------- Running Aux ---------------------------------


;; PathString -> Boolean
(define (compile-file the-file)
  (parameterize ([current-compile (get-compile)]
                 [use-compiled-file-paths
                  (cons (build-path "compiled" "cover")
                        (use-compiled-file-paths))])
    (dynamic-require (build-file-require the-file) (void))))

;; (or PathString (list PathString Vector)) Symbol -> Boolean
;; returns true if any tests failed or errors occured
(define (handle-file maybe-path submod-name)
  (log-cover-debug "attempting to run ~s in environment ~s\n" maybe-path (get-topic))
  (define the-file (if (list? maybe-path) (first maybe-path) maybe-path))
  (define argv (if (list? maybe-path) (second maybe-path) #()))

  (or (run-file! the-file submod-name argv)
      (tests-failed?)))

;; PathString Submod [Vectorof String] -> Boolean
(define (run-file! the-file submod-name argv)
  (define tests-errored #f)

  (with-handlers ([(lambda (x) (not (exn:break? x)))
                   (lambda (x)
                     (log-cover-debug "catching exception while running test: ~a" x)
                     (cond [(an-exit? x)
                            (log-cover-debug "file ~s exited code ~s" the-file (an-exit-code x))]
                           [else
                            (set! tests-errored #t)
                            ((error-display-handler)
                             (if (exn? x)
                                 (exn-message x)
                                 "non-exn error:")
                             x)]))])
    (parameterize ([current-command-line-arguments argv]
                   [exit-handler (lambda (x) (raise (an-exit x)))])
      (log-cover-debug "running file: ~s with args: ~s" the-file argv)
      (exec-file the-file submod-name)))
  (log-cover-debug "test errored status for ~a: ~a" the-file tests-errored)
  tests-errored)

;; -> Bool
(define (tests-failed?)
  (define test-log (get-test-log))
  (define lg (test-log))
  (log-cover-debug "test log: ~a" lg)
  (and (not (= 0 (car lg)))
       (not (= 0 (cdr lg)))))
  

(define (get-test-log)
  (with-handlers ([exn:fail? (lambda _ (lambda () (cons 0 0)))])
    (parameterize ([current-namespace (get-namespace)])
      (module->namespace 'rackunit/log);make sure its loaded first
      (dynamic-require 'rackunit/log 'test-log))))

;; PathString Symbol -> Void
(define (exec-file the-file submod-name)
  (define sfile (build-file-require the-file))
  (define submod `(submod ,sfile ,submod-name))
  (run-mod (if (module-declared? submod #t) submod sfile)))

;; ModulePath -> Any
(define (run-mod to-run)
  (log-cover-debug "running ~s in environment ~s" to-run (get-topic))
  (define output
    (with-output-to-string (lambda () (dynamic-require to-run 0))))
  (log-cover-debug "file had output: ~s" output)
  (log-cover-debug "finished running ~s" to-run))

;; PathString -> ModulePath
(define (build-file-require the-file)
  `(file ,the-file))

;;; ---------------------- Compiling ---------------------------------

;; (U [Listof Path] #f) -> load/use-compiled
;; returns a value that can be set to `current-load/use-compiled`
;; forces the given files to be recompiled whenever load/use-compiled is called
(define (make-cover-load/use-compiled paths)
  (make-custom-load/use-compiled
   #:blacklist (for/list ([p (in-set paths)])
                 (regexp (regexp-quote p)))))

;; Namespace (Syntax -> Syntax) -> Compiler
;; makes a value sutable for current-compile, such that compile
;; annotates the source code with annotate-top. meant to be called
;; only by make-cover-environment
(define (make-cover-compile ns annotate-top)
  (define compile (current-compile))
  (define reg (namespace-module-registry ns))
  (define phase (namespace-base-phase ns))
  ;; define so its named in stack traces
  (define cover-compile
    (lambda (e* immediate-eval?)
      (define e (if (syntax? e*) e* (datum->syntax #f e*)))
      (define file (get-source e))
      (with-handlers ([void (lambda (e) (displayln file) (raise e))])
        (define to-compile
          (cond [(or (compiled-expression? (syntax-e e))
                     (not (eq? reg (namespace-module-registry (current-namespace))))
                     (not file)
                     ;; only annotate module forms
                     ;; to prevent phase 1 evals from executing
                     ;; covered code before the coverage table is ready
                     (not
                      (syntax-parse e
                        [(mod:id . _)
                         (free-identifier=? #'mod #'module
                                            (namespace-base-phase (current-namespace)))]
                        [_ #f])))
                 e]
                [else
                 (log-cover-debug "compiling ~s with coverage annotations in environment ~s"
                                  file
                                  (get-topic))
                 (define compiled
                   ((annotate-top file (current-live-files))
                    (expand-syntax e)
                    (namespace-base-phase (current-namespace))))
                 (log-cover-debug "compiled ~a to ~s"
                                 file
                                 (syntax->datum compiled))
                 compiled]))
        (compile to-compile immediate-eval?))))
  cover-compile)

(define (get-source stx)
  (and (syntax? stx)
       (or (let ([maybe-source (or (current-module-declare-source)
                                   (and (current-module-declare-name)
                                        (resolved-module-path-name
                                         (current-module-declare-name))))])
             (cond [(symbol? maybe-source)
                    ;TODO lookup actual source
                    #f]
                   [(path? maybe-source)
                    (path->string maybe-source)]
                   [else #f]))
           (let loop ([e stx])
             (define f (syntax-source e))
             (define (do-loop)
               (define next (syntax->list e))
               (and next
                    (ormap loop next)))
             (if f
                 (if (path? f)
                     (path->string f)
                     f)
                 (do-loop))))))

;;; ---------------------- Environments ---------------------------------

(define (make-cover-environment [ns (make-empty-namespace)])
  (kernelize-namespace! ns)
  (parameterize ([current-namespace ns])
    ;; we gensym the topic to isolate diverent coverage
    ;; instances from each other
    (define topic (gensym))
    (define loc-table (make-hash))
    (define vector-table (make-hash))
    (define ann (make-annotate-top topic loc-table vector-table))
    (environment
     ns
     (make-cover-compile ns ann)
     ann
     topic
     loc-table
     vector-table)))

(define (kernelize-namespace! ns)
  (define cns (current-namespace))
  (namespace-attach-module cns ''#%builtin ns))

(define (get-namespace)
  (get-val environment-namespace))

(define (get-compile)
  (get-val environment-compile))

(define (get-val access)
  (access (current-cover-environment)))

(define (get-topic)
  (get-val environment-topic))

(define (get-coverage-srcloc-mapping)
  (get-val environment-coverage-srcloc-mapping))

(define (get-coverage-vector-mapping)
  (get-val environment-coverage-vector-mapping))

(struct coverage-wrapper (map function)
        #:property prop:procedure (struct-field-index function))

;; -> coverage/c
(define (get-test-coverage [env (current-cover-environment)])
  (parameterize ([current-cover-environment env])
    (log-cover-debug "generating test coverage\n")

    #|
As macros may cause source locations that come from one file
to actually corrispond to other files we must merge these coverage maps together.

To do this we flatten out the nested table structure then rebuild the indirect version.
However this forgets about files that have no coverage points, so we must add those
back manually.

Yes, the extended comments here is an admittance that this code is terrible.
|#

    (define vecmap (get-coverage-vector-mapping))
    (define srcloc-mapping (get-coverage-srcloc-mapping))

    ;; flatten the coverage map
    (define raw-coverage
      (for*/hash ([(_ filemap) (in-hash srcloc-mapping)]
                  [(srcloc spot) (in-hash filemap)])
        (match-define (list file loc) spot)
        (values srcloc
                (vector-ref
                 (hash-ref vecmap file)
                 loc))))

    ;; filtered : (listof (list boolean srcloc))
    ;; collect this into an inverted mapping from coverage-ness to
    ;; the source location
    (define filtered (hash-map raw-coverage
                               (λ (k v) (list v (apply make-srcloc k)))))

    (define out (make-hash))

    ;; collect the inverted and flattened coverage map
    ;; back in to an indirected table.
    (for ([v (in-list filtered)])
      (define file (srcloc-source (cadr v)))
      (hash-update! out
                    file
                    (lambda (l) (cons v l))
                    null))
    ;; add back in any empty files
    (for ([(file _) (in-hash srcloc-mapping)])
      (unless (hash-has-key? out file)
        (hash-set! out file empty)))
    
    ;; Make the hash map immutable
    (define coverage (for/hash ([(k v) (in-hash out)]) (values k v)))

    (log-cover-debug "raw coverage maps are\nvecmap:~a\nsrclocmap:~a\nraw:~a\nfinal-table:~a"
                    vecmap
                    (get-coverage-srcloc-mapping)
                    raw-coverage
                    coverage)
    
    (define file-map (make-hash))
    (coverage-wrapper
     coverage
     (lambda (key location)
       (define f
         (hash-ref! file-map key
                    (lambda ()
                      (make-covered? coverage key))))
       (f location)))))

(define current-cover-environment
  (make-parameter (make-cover-environment)))