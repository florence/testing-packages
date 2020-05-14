16320
((3) 0 () 41 ((q lib "web-server/configuration/configuration-table-structs.rkt") (q lib "web-server/web-server.rkt") (q lib "web-server/dispatchers/dispatch-log.rkt") (q lib "web-server/private/connection-manager.rkt") (q 30288 . 8) (q lib "web-server/dispatchers/dispatch-servlets.rkt") (q 25338 . 8) (q lib "web-server/dispatchers/dispatch.rkt") (q lib "web-server/configuration/responders.rkt") (q lib "web-server/configuration/configuration-table.rkt") (q 27753 . 16) (q 7702 . 3) (q lib "web-server/web-config-sig.rkt") (q 25598 . 16) (q 26074 . 18) (q 24815 . 12) (q lib "web-server/private/timer.rkt") (q 29703 . 7) (q 26847 . 16) (q lib "web-server/private/servlet.rkt") (q 12467 . 9) (q lib "web-server/private/dispatch-server-sig.rkt") (q lib "web-server/private/cache-table.rkt") (q 27372 . 12) (q lib "web-server/private/util.rkt") (q lib "web-server/servlet/setup.rkt") (q lib "web-server/dispatchers/dispatch-passwords.rkt") (q lib "web-server/web-server-sig.rkt") (q lib "web-server/safety-limits.rkt") (q lib "web-server/configuration/namespace.rkt") (q lib "web-server/dispatchers/filesystem-map.rkt") (q lib "web-server/servlet-dispatch.rkt") (q lib "web-server/lang/serial-lambda.rkt") (q lib "web-server/private/url-param.rkt") (q lib "web-server/dispatchers/dispatch-stat.rkt") (q lib "web-server/private/mod-map.rkt") (q lib "web-server/private/gzip.rkt") (q lib "web-server/web-server-unit.rkt") (q lib "web-server/private/dispatch-server-unit.rkt") (q lib "web-server/private/mime-types.rkt") (q lib "web-server/web-config-unit.rkt")) () (h ! (equal) ((c def c (c (? . 1) q serve/ports)) q (14615 . 30)) ((c def c (c (? . 0) q struct:messages)) c (? . 18)) ((c def c (c (? . 0) q paths-servlet)) c (? . 10)) ((c def c (c (? . 2) q make)) q (8861 . 4)) ((c def c (c (? . 9) q configuration-table->sexpr)) q (24480 . 4)) ((c def c (c (? . 3) q connection)) c (? . 4)) ((c sig-val c (c (? . 12) q web-config*^ make-servlet-namespace)) q (22341 . 2)) ((c def c (c (? . 1) q serve/ips+ports)) q (16306 . 29)) ((c def c (c (? . 0) q host-table)) c (? . 6)) ((c def c (c (? . 0) q configuration-table-default-host)) c (? . 15)) ((c def c (c (? . 8) q gen-passwords-refreshed)) q (29107 . 3)) ((c form c (c (? . 32) q serial-lambda)) q (31624 . 2)) ((c def c (c (? . 2) q paren-format)) q (8631 . 2)) ((q def ((lib "web-server/dispatchers/dispatch-timeout.rkt") make)) q (8228 . 3)) ((c def c (c (? . 7) q exn:dispatcher)) c (? . 11)) ((c def c (c (? . 3) q connection-close?)) c (? . 4)) ((c def c (c (? . 5) q make)) q (10466 . 10)) ((c def c (c (? . 0) q host-paths)) c (? . 13)) ((c def c (c (? . 19) q set-servlet-namespace!)) c (? . 20)) ((c def c (c (? . 5) q url->servlet/c)) q (10164 . 2)) ((c def c (c (? . 3) q new-connection)) q (30787 . 19)) ((c def c (c (? . 0) q host-table-log-format)) c (? . 6)) ((c def c (c (? . 1) q raw:dispatch-server-connect@)) q (18645 . 3)) ((c def c (c (? . 33) q extract-param)) q (32616 . 4)) ((c def c (c (? . 0) q host-table-messages)) c (? . 6)) ((c def c (c (? . 7) q next-dispatcher)) q (7792 . 2)) ((c def c (c (? . 8) q gen-collect-garbage-responder)) q (29548 . 3)) ((c def c (c (? . 0) q responders-file-not-found)) c (? . 14)) ((c def c (c (? . 9) q write-configuration-table)) q (24691 . 4)) ((c def c (c (? . 0) q paths-passwords)) c (? . 10)) ((c def c (c (? . 7) q make-exn:dispatcher)) c (? . 11)) ((c def c (c (? . 22) q cache-table-clear!)) q (31951 . 5)) ((c form c (c (? . 12) q web-config^)) q (22399 . 2)) ((c def c (c (? . 0) q struct:host)) c (? . 13)) ((c def c (c (? . 0) q responders-servlet-loading)) c (? . 14)) ((c def c (c (? . 0) q host)) c (? . 13)) ((c def c (c (? . 16) q timer)) c (? . 17)) ((c def c (c (? . 0) q configuration-table?)) c (? . 15)) ((c def c (c (? . 0) q configuration-table-initial-connection-timeout)) c (? . 15)) ((c def c (c (? . 30) q make-url->path)) q (7861 . 3)) ((c def c (c (? . 28) q timeout/c)) q (4014 . 2)) ((c sig-val c (c (? . 21) q dispatch-server-config^ initial-connection-timeout)) q (1013 . 2)) ((c def c (c (? . 8) q file-response)) q (28314 . 9)) ((c def c (c (? . 2) q log-format/c)) q (8751 . 2)) ((c def c (c (? . 1) q make-ssl-connect@)) q (18740 . 6)) ((c def c (c (? . 16) q timer-action)) c (? . 17)) ((c def c (c (? . 0) q messages-protocol)) c (? . 18)) ((c def c (c (? . 19) q set-servlet-manager!)) c (? . 20)) ((c sig-val c (c (? . 12) q web-config*^ safety-limits)) q (22185 . 2)) ((c sig-val c (c (? . 12) q web-config*^ port)) q (22273 . 2)) ((c form c (c (? . 21) q dispatch-server-config^)) q (916 . 2)) ((c def c (c (? . 0) q make-paths)) c (? . 10)) ((c def c (c (? . 22) q cache-table?)) q (32149 . 3)) ((c def c (c (? . 26) q denied?/c)) q (9045 . 2)) ((c def c (c (? . 16) q increment-timer!)) q (30152 . 4)) ((c def c (c (? . 19) q servlet-directory)) c (? . 20)) ((c def c (c (? . 0) q paths-log)) c (? . 10)) ((c def c (c (? . 0) q messages)) c (? . 18)) ((c sig-val c (c (? . 21) q dispatch-server-connect^ port->real-ports)) q (396 . 4)) ((c def c (c (? . 0) q messages-servlet)) c (? . 18)) ((c def c (c (? . 0) q make-responders)) c (? . 14)) ((c def c (c (? . 0) q responders)) c (? . 14)) ((c def c (c (? . 0) q responders-protocol)) c (? . 14)) ((c def c (c (? . 19) q struct:servlet)) c (? . 20)) ((c def c (c (? . 1) q serve)) q (13072 . 29)) ((c sig-val c (c (? . 12) q web-config*^ virtual-hosts)) q (22224 . 2)) ((c def c (c (? . 3) q connection-o-port)) c (? . 4)) ((c sig-val c (c (? . 21) q dispatch-server-config^ max-waiting)) q (964 . 2)) ((c def c (c (? . 19) q make-servlet)) c (? . 20)) ((c def c (c (? . 1) q do-not-return)) q (18965 . 2)) ((c def c (c (? . 0) q paths?)) c (? . 10)) ((c def c (c (? . 3) q connection-timer)) c (? . 4)) ((c def c (c (? . 0) q make-host-table)) c (? . 6)) ((c def c (c (? . 3) q connection-i-port)) c (? . 4)) ((c sig-val c (c (? . 21) q dispatch-server^ serve)) q (41 . 4)) ((c def c (c (? . 0) q host-timeouts)) c (? . 13)) ((c sig-val c (c (? . 21) q dispatch-server-config*^ port)) q (560 . 2)) ((c def c (c (? . 0) q configuration-table-port)) c (? . 15)) ((c def c (c (? . 25) q path->servlet/c)) q (11743 . 2)) ((c def c (c (? . 16) q start-timer-manager)) q (29903 . 2)) ((c def c (c (? . 24) q read/bytes)) q (33676 . 3)) ((c def c (c (? . 19) q set-servlet-handler!)) c (? . 20)) ((c def c (c (? . 0) q timeouts-file-per-byte)) c (? . 23)) ((c def c (c (? . 0) q paths-mime-types)) c (? . 10)) ((c sig-val c (c (? . 21) q dispatch-server-config*^ read-request)) q (635 . 5)) ((c sig-val c (c (? . 12) q web-config^ max-waiting)) q (22435 . 2)) ((q def ((lib "web-server/dispatchers/dispatch-lift.rkt") make)) q (8305 . 3)) ((c def c (c (? . 9) q configuration-table-sexpr?)) q (24306 . 2)) ((c def c (c (? . 16) q timer?)) c (? . 17)) ((c def c (c (? . 9) q default-configuration-table-path)) q (24257 . 2)) ((c def c (c (? . 16) q timer-expire-seconds)) c (? . 17)) ((c sig-val c (c (? . 21) q dispatch-server^ serve-ports)) q (259 . 4)) ((c sig-val c (c (? . 12) q web-config^ initial-connection-timeout)) q (22484 . 2)) ((c sig-val c (c (? . 12) q web-config*^ listen-ip)) q (22301 . 2)) ((c def c (c (? . 0) q configuration-table)) c (? . 15)) ((c def c (c (? . 0) q host-table-timeouts)) c (? . 6)) ((c def c (c (? . 0) q timeouts-default-servlet)) c (? . 23)) ((c def c (c (? . 0) q responders-collect-garbage)) c (? . 14)) ((c def c (c (? . 19) q servlet-handler)) c (? . 20)) ((c def c (c (? . 8) q gen-servlets-refreshed)) q (29019 . 3)) ((c def c (c (? . 0) q struct:configuration-table)) c (? . 15)) ((c def c (c (? . 0) q host-table-indices)) c (? . 6)) ((c def c (c (? . 8) q gen-authentication-responder)) q (29196 . 4)) ((c def c (c (? . 24) q url-replace-path)) q (32908 . 4)) ((c def c (c (? . 9) q sexpr->configuration-table)) q (24367 . 3)) ((c def c (c (? . 16) q timer-tm)) c (? . 17)) ((c def c (c (? . 16) q make-timer)) c (? . 17)) ((c def c (c (? . 2) q log-format->format)) q (8784 . 3)) ((c def c (c (? . 31) q dispatch/servlet)) q (19003 . 22)) ((c def c (c (? . 0) q messages-passwords-refreshed)) c (? . 18)) ((c def c (c (? . 24) q network-error)) q (33496 . 5)) ((c def c (c (? . 25) q make-v1.servlet)) q (10985 . 5)) ((c def c (c (? . 0) q make-host)) c (? . 13)) ((c def c (c (? . 5) q make-cached-url->servlet)) q (10199 . 7)) ((c def c (c (? . 25) q make-v2.servlet)) q (11161 . 5)) ((c def c (c (? . 0) q host?)) c (? . 13)) ((c def c (c (? . 24) q exn->string)) q (33602 . 3)) ((c def c (c (? . 36) q gzip/bytes)) q (32711 . 3)) ((c def c (c (? . 0) q struct:host-table)) c (? . 6)) ((c def c (c (? . 19) q servlet-manager)) c (? . 20)) ((c def c (c (? . 8) q servlet-loading-responder)) q (28604 . 4)) ((c def c (c (? . 24) q url-path->string)) q (33039 . 3)) ((c def c (c (? . 29) q make-servlet-namespace/c)) q (12238 . 2)) ((c def c (c (? . 0) q timeouts-password)) c (? . 23)) ((c def c (c (? . 3) q connection-custodian)) c (? . 4)) ((c sig-val c (c (? . 27) q web-server^ serve-ports)) q (21837 . 4)) ((c def c (c (? . 39) q make-path->mime-type)) q (32292 . 3)) ((c def c (c (? . 9) q read-configuration-table)) q (24596 . 3)) ((c def c (c (? . 24) q path-without-base)) q (33209 . 4)) ((c def c (c (? . 24) q path-piece?)) q (33803 . 2)) ((c def c (c (? . 0) q make-timeouts)) c (? . 23)) ((c def c (c (? . 16) q reset-timer!)) q (30076 . 4)) ((c def c (c (? . 38) q dispatch-server-with-connect@)) q (7167 . 6)) ((c def c (c (? . 35) q decompress-serial)) q (32457 . 3)) ((c def c (c (? . 19) q servlet-custodian)) c (? . 20)) ((q def ((lib "web-server/dispatchers/dispatch-sequencer.rkt") make)) q (8144 . 3)) ((c def c (c (? . 26) q password-file->authorized?)) q (9542 . 4)) ((c form c (c (? . 21) q dispatch-server-connect^)) q (347 . 2)) ((c form c (c (? . 27) q web-server^)) q (21583 . 2)) ((c def c (c (? . 0) q configuration-table-virtual-hosts)) c (? . 15)) ((c def c (c (? . 0) q responders-passwords-refreshed)) c (? . 14)) ((c form c (c (? . 21) q dispatch-server-config*^)) q (511 . 2)) ((c def c (c (? . 0) q messages-servlets-refreshed)) c (? . 18)) ((c def c (c (? . 25) q make-default-path->servlet)) q (11779 . 8)) ((c def c (c (? . 28) q make-safety-limits)) q (1120 . 41)) ((c def c (c (? . 29) q make-make-servlet-namespace)) q (12283 . 4)) ((c def c (c (? . 16) q timer-manager?)) q (29643 . 3)) ((c def c (c (? . 26) q authorized?/c)) q (9410 . 2)) ((c def c (c (? . 2) q apache-default-format)) q (8706 . 2)) ((c def c (c (? . 0) q host-responders)) c (? . 13)) ((c def c (c (? . 16) q start-timer)) q (29955 . 5)) ((c def c (c (? . 24) q write/bytes)) q (33742 . 3)) ((c def c (c (? . 3) q kill-connection!)) q (31374 . 3)) ((c def c (c (? . 40) q configuration-table-sexpr->web-config@)) q (23278 . 15)) ((c def c (c (? . 3) q connection?)) c (? . 4)) ((c def c (c (? . 24) q build-path-unless-absolute)) q (33388 . 4)) ((q def ((lib "web-server/dispatchers/dispatch-filter.rkt") make)) q (8389 . 4)) ((q form ((lib "web-server/private/define-closure.rkt") define-closure)) q (31722 . 2)) ((c def c (c (? . 19) q servlet-namespace)) c (? . 20)) ((c def c (c (? . 8) q gen-file-not-found-responder)) q (29432 . 4)) ((c def c (c (? . 30) q make-url->valid-path)) q (7937 . 3)) ((c def c (c (? . 24) q explode-path*)) q (33130 . 3)) ((q def ((lib "web-server/dispatchers/dispatch-host.rkt") make)) q (9663 . 3)) ((c def c (c (? . 19) q servlet)) c (? . 20)) ((c form c (c (? . 12) q web-config*^)) q (22148 . 2)) ((c def c (c (? . 3) q make-connection)) c (? . 4)) ((c def c (c (? . 26) q make-basic-denied?/path)) q (9444 . 3)) ((c def c (c (? . 31) q serve/launch/wait)) q (20351 . 22)) ((c def c (c (? . 0) q host-table-paths)) c (? . 6)) ((c sig-val c (c (? . 21) q dispatch-server-config*^ safety-limits)) q (877 . 2)) ((q def ((lib "web-server/dispatchers/dispatch-pathprocedure.rkt") make)) q (8487 . 4)) ((c def c (c (? . 0) q host-table?)) c (? . 6)) ((c def c (c (? . 0) q host-indices)) c (? . 13)) ((c def c (c (? . 0) q timeouts?)) c (? . 23)) ((c def c (c (? . 7) q dispatcher/c)) q (7589 . 2)) ((c def c (c (? . 8) q gen-servlet-responder)) q (28900 . 4)) ((c def c (c (? . 0) q make-configuration-table)) c (? . 15)) ((c def c (c (? . 0) q timeouts-servlet-connection)) c (? . 23)) ((c def c (c (? . 19) q set-servlet-custodian!)) c (? . 20)) ((c def c (c (? . 30) q url->path/c)) q (7829 . 2)) ((c sig-val c (c (? . 27) q web-server^ serve)) q (21619 . 4)) ((c def c (c (? . 0) q messages-collect-garbage)) c (? . 18)) ((c def c (c (? . 26) q make)) q (9075 . 7)) ((c def c (c (? . 19) q servlet?)) c (? . 20)) ((c def c (c (? . 7) q struct:exn:dispatcher)) c (? . 11)) ((c def c (c (? . 8) q servlet-error-responder)) q (28805 . 4)) ((c def c (c (? . 0) q responders-servlets-refreshed)) c (? . 14)) ((q def ((lib "web-server/dispatchers/dispatch-files.rkt") make)) q (9775 . 8)) ((c def c (c (? . 0) q host-passwords)) c (? . 13)) ((c form c (c (? . 32) q serial-case-lambda)) q (31667 . 2)) ((c def c (c (? . 16) q timer-evt)) c (? . 17)) ((c sig-val c (c (? . 21) q dispatch-server-config*^ listen-ip)) q (595 . 2)) ((c def c (c (? . 22) q make-cache-table)) q (31783 . 2)) ((c def c (c (? . 0) q paths)) c (? . 10)) ((c def c (c (? . 30) q filter-url->path)) q (8028 . 4)) ((c def c (c (? . 0) q struct:timeouts)) c (? . 23)) ((c def c (c (? . 3) q struct:connection)) c (? . 4)) ((c def c (c (? . 22) q cache-table-lookup!)) q (31830 . 5)) ((c def c (c (? . 0) q configuration-table-max-waiting)) c (? . 15)) ((c def c (c (? . 0) q messages-file-not-found)) c (? . 18)) ((c def c (c (? . 34) q make-gc-thread)) q (12773 . 3)) ((c def c (c (? . 0) q struct:paths)) c (? . 10)) ((c def c (c (? . 0) q responders-authentication)) c (? . 14)) ((c form c (c (? . 21) q dispatch-server^)) q (0 . 2)) ((c def c (c (? . 8) q gen-servlet-not-found)) q (28701 . 3)) ((c def c (c (? . 33) q insert-param)) q (32521 . 5)) ((q def ((lib "web-server/dispatchers/limit.rkt") make)) q (12876 . 5)) ((c def c (c (? . 0) q paths-conf)) c (? . 10)) ((c def c (c (? . 0) q struct:responders)) c (? . 14)) ((c def c (c (? . 3) q reset-connection-timeout!)) q (31531 . 4)) ((c def c (c (? . 25) q make-stateless.servlet)) q (11337 . 9)) ((c def c (c (? . 28) q make-unlimited-safety-limits)) q (4063 . 40)) ((c def c (c (? . 16) q cancel-timer!)) q (30232 . 3)) ((c def c (c (? . 0) q timeouts)) c (? . 23)) ((c def c (c (? . 0) q timeouts-file-base)) c (? . 23)) ((c def c (c (? . 2) q extended-format)) q (8667 . 2)) ((c def c (c (? . 3) q connection-manager?)) q (30535 . 3)) ((c sig-val c (c (? . 21) q dispatch-server-config*^ dispatch)) q (828 . 2)) ((c def c (c (? . 0) q messages?)) c (? . 18)) ((c def c (c (? . 2) q format-req/c)) q (8598 . 2)) ((c def c (c (? . 0) q make-messages)) c (? . 18)) ((c def c (c (? . 37) q web-server@)) q (22051 . 3)) ((c def c (c (? . 28) q nonnegative-length/c)) q (3920 . 3)) ((c def c (c (? . 0) q host-log-format)) c (? . 13)) ((c def c (c (? . 25) q default-module-specs)) q (11689 . 2)) ((c def c (c (? . 3) q start-connection-manager)) q (30600 . 5)) ((c def c (c (? . 0) q paths-htdocs)) c (? . 10)) ((c def c (c (? . 19) q set-servlet-directory!)) c (? . 20)) ((c def c (c (? . 16) q struct:timer)) c (? . 17)) ((c def c (c (? . 0) q messages-authentication)) c (? . 18)) ((c def c (c (? . 24) q directory-part)) q (33324 . 3)) ((c def c (c (? . 34) q make)) q (12841 . 2)) ((c def c (c (? . 8) q gen-protocol-responder)) q (29327 . 3)) ((c def c (c (? . 35) q compress-serial)) q (32397 . 3)) ((c def c (c (? . 1) q serve/web-config@)) q (18000 . 11)) ((c def c (c (? . 28) q safety-limits?)) q (1060 . 3)) ((c def c (c (? . 36) q gunzip/bytes)) q (32768 . 3)) ((c def c (c (? . 37) q web-server-with-connect@)) q (21925 . 4)) ((c def c (c (? . 0) q host-log-path)) c (? . 13)) ((c def c (c (? . 0) q responders-servlet)) c (? . 14)) ((c def c (c (? . 24) q bytes-ci=?)) q (32827 . 4)) ((c def c (c (? . 0) q paths-host-base)) c (? . 10)) ((c def c (c (? . 0) q responders?)) c (? . 14)) ((c def c (c (? . 38) q dispatch-server@)) q (7399 . 4)) ((c def c (c (? . 39) q read-mime-types)) q (32207 . 3)) ((c def c (c (? . 40) q configuration-table->web-config@)) q (22531 . 12)) ((c def c (c (? . 7) q dispatcher-interface-version/c)) q (7622 . 3)) ((c def c (c (? . 7) q exn:dispatcher?)) c (? . 11)) ((c def c (c (? . 3) q adjust-connection-timeout!)) q (31437 . 4))))
signature
dispatch-server^ : signature
procedure
(serve [#:confirmation-channel confirmation-ach]) -> (-> any)
  confirmation-ach : (or/c #f (async-channel/c            = #f
                               (or/c exn? port-number?)))
procedure
(serve-ports ip op) -> any
  ip : input-port?
  op : output-port?
signature
dispatch-server-connect^ : signature
procedure
(port->real-ports ip op) -> input-port? output-port?
  ip : input-port?
  op : output-port?
signature
dispatch-server-config*^ : signature
value
port : listen-port-number?
value
listen-ip : (or/c string? #f)
procedure
(read-request c p port-addresses) -> any/c boolean?
  c : connection?
  p : listen-port-number?
  port-addresses : (input-port? . -> . (values string? string?))
value
dispatch : (-> connection? any/c any)
value
safety-limits : safety-limits?
signature
dispatch-server-config^ : signature
value
max-waiting : exact-nonnegative-integer?
value
initial-connection-timeout : timeout/c
procedure
(safety-limits? v) -> boolean?
  v : any/c
procedure
(make-safety-limits                                                                    
                    [#:max-waiting max-waiting                                         
                     #:request-read-timeout request-read-timeout                       
                     #:max-request-line-length max-request-line-length                 
                     #:max-request-headers max-request-headers                         
                     #:max-request-header-length max-request-header-length             
                     #:max-request-body-length max-request-body-length                 
                     #:max-form-data-parts max-form-data-parts                         
                     #:max-form-data-header-length max-form-data-header-length         
                     #:max-form-data-files max-form-data-files                         
                     #:max-form-data-file-length max-form-data-file-length             
                     #:form-data-file-memory-threshold form-data-file-memory-threshold 
                     #:max-form-data-fields max-form-data-fields                       
                     #:max-form-data-field-length max-form-data-field-length           
                     #:response-timeout response-timeout                               
                     #:response-send-timeout response-send-timeout])                   
 -> safety-limits?
  max-waiting : exact-nonnegative-integer? = 511
  request-read-timeout : timeout/c = 60
  max-request-line-length : nonnegative-length/c
                          = (* 8 1024) ; 8 KiB
  max-request-headers : nonnegative-length/c = 100
  max-request-header-length : nonnegative-length/c
                            = (* 8 1024) ; 8 KiB
  max-request-body-length : nonnegative-length/c
                          = (* 1 1024 1024) ; 1 MiB
  max-form-data-parts : nonnegative-length/c
                      = (+ max-form-data-fields max-form-data-files)
  max-form-data-header-length : nonnegative-length/c
                              = (* 8 1024) ; 8 KiB
  max-form-data-files : nonnegative-length/c = 100
  max-form-data-file-length : nonnegative-length/c
                            = (* 10 1024 1024) ; 10 MiB
  form-data-file-memory-threshold : nonnegative-length/c
                                  = (* 1 1024 1024) ; 1 MiB
  max-form-data-fields : nonnegative-length/c = 100
  max-form-data-field-length : nonnegative-length/c
                             = (* 8 1024) ; 8 KiB
  response-timeout : timeout/c = 60
  response-send-timeout : timeout/c = 60
value
nonnegative-length/c : flat-contract?
 = (or/c exact-nonnegative-integer? +inf.0)
value
timeout/c : flat-contract? = (>=/c 0)
procedure
(make-unlimited-safety-limits                                                                    
                              [#:max-waiting max-waiting                                         
                               #:request-read-timeout request-read-timeout                       
                               #:max-request-line-length max-request-line-length                 
                               #:max-request-headers max-request-headers                         
                               #:max-request-header-length max-request-header-length             
                               #:max-request-body-length max-request-body-length                 
                               #:max-request-files max-request-files                             
                               #:max-request-file-length max-request-file-length                 
                               #:request-file-memory-threshold request-file-memory-threshold     
                               #:max-form-data-parts max-form-data-parts                         
                               #:max-form-data-header-length max-form-data-header-length         
                               #:max-form-data-files max-form-data-files                         
                               #:max-form-data-file-length max-form-data-file-length             
                               #:form-data-file-memory-threshold form-data-file-memory-threshold 
                               #:max-form-data-fields max-form-data-fields                       
                               #:max-form-data-field-length max-form-data-field-length           
                               #:response-timeout response-timeout                               
                               #:response-send-timeout response-send-timeout])                   
 -> safety-limits?
  max-waiting : exact-nonnegative-integer? = 511
  request-read-timeout : timeout/c = +inf.0
  max-request-line-length : nonnegative-length/c = +inf.0
  max-request-headers : nonnegative-length/c = +inf.0
  max-request-header-length : nonnegative-length/c = +inf.0
  max-request-body-length : nonnegative-length/c = +inf.0
  max-request-files : nonnegative-length/c = +inf.0
  max-request-file-length : nonnegative-length/c = +inf.0
  request-file-memory-threshold : nonnegative-length/c = +inf.0
  max-form-data-parts : nonnegative-length/c = +inf.0
  max-form-data-header-length : nonnegative-length/c = +inf.0
  max-form-data-files : nonnegative-length/c = +inf.0
  max-form-data-file-length : nonnegative-length/c = +inf.0
  form-data-file-memory-threshold : nonnegative-length/c
                                  = +inf.0
  max-form-data-fields : nonnegative-length/c = +inf.0
  max-form-data-field-length : nonnegative-length/c = +inf.0
  response-timeout : timeout/c = +inf.0
  response-send-timeout : timeout/c = +inf.0
value
dispatch-server-with-connect@
 : (unit/c (import tcp^
                   dispatch-server-connect^
                   dispatch-server-config*^)
           (export dispatch-server^))
value
dispatch-server@ : (unit/c (import tcp^
                                   dispatch-server-config*^)
                           (export dispatch-server^))
value
dispatcher/c : contract?
procedure
(dispatcher-interface-version/c any) -> boolean?
  any : any/c
struct
(struct exn:dispatcher ()
    #:extra-constructor-name make-exn:dispatcher)
procedure
(next-dispatcher) -> any
value
url->path/c : contract?
procedure
(make-url->path base) -> url->path/c
  base : path-string?
procedure
(make-url->valid-path url->path) -> url->path/c
  url->path : url->path/c
procedure
(filter-url->path regex url->path) -> url->path/c
  regex : regexp?
  url->path : url->path/c
procedure
(make dispatcher ...) -> dispatcher/c
  dispatcher : dispatcher/c
procedure
(make new-timeout) -> dispatcher/c
  new-timeout : integer?
procedure
(make proc) -> dispatcher/c
  proc : (request? . -> . response?)
procedure
(make regex inner) -> dispatcher/c
  regex : regexp?
  inner : dispatcher/c
procedure
(make path proc) -> dispatcher/c
  path : string?
  proc : (request? . -> . response?)
value
format-req/c : contract?
value
paren-format : format-req/c
value
extended-format : format-req/c
value
apache-default-format : format-req/c
value
log-format/c : contract?
procedure
(log-format->format id) -> format-req/c
  id : log-format/c
procedure
(make [#:format format #:log-path log-path]) -> dispatcher/c
  format : format-req/c = paren-format
  log-path : (or/c path-string? output-port?) = "log"
value
denied?/c : contract?
procedure
(make  denied?                                               
      [#:authentication-responder authentication-responder]) 
 -> dispatcher/c
  denied? : denied?/c
  authentication-responder : (url? header? . -> . response?)
                           = (gen-authentication-responder "forbidden.html")
value
authorized?/c : contract?
procedure
(make-basic-denied?/path authorized?) -> denied?/c
  authorized? : authorized?/c
procedure
(password-file->authorized? password-file)
 -> (-> void) authorized?/c
  password-file : path-string?
procedure
(make lookup-dispatcher) -> dispatcher/c
  lookup-dispatcher : (symbol? . -> . dispatcher/c)
procedure
(make  #:url->path url->path                 
      [#:path->mime-type path->mime-type     
       #:indices indices])               -> dispatcher/c
  url->path : url->path/c
  path->mime-type : (path? . -> . (or/c false/c bytes)?)
                  = (lambda (path) #f)
  indices : (listof string?) = (list "index.html" "index.htm")
value
url->servlet/c : contract?
procedure
(make-cached-url->servlet url->path      
                          path->serlvet) 
 -> (->* () ((or/c false/c (listof url?)) (-> servlet? void?)) void?)
    url->servlet/c
  url->path : url->path/c
  path->serlvet : path->servlet/c
procedure
(make  url->servlet                                            
      [#:responders-servlet-loading responders-servlet-loading 
       #:responders-servlet responders-servlet])               
 -> dispatcher/c
  url->servlet : url->servlet/c
  responders-servlet-loading : (url? exn? . -> . can-be-response?)
                             = servlet-loading-responder
  responders-servlet : (url? exn? . -> . can-be-response?)
                     = servlet-error-responder
procedure
(make-v1.servlet directory timeout start) -> servlet?
  directory : path-string?
  timeout : integer?
  start : (request? . -> . can-be-response?)
procedure
(make-v2.servlet directory manager start) -> servlet?
  directory : path-string?
  manager : manager?
  start : (request? . -> . can-be-response?)
procedure
(make-stateless.servlet directory     
                        stuffer       
                        manager       
                        start)    -> servlet?
  directory : path-string?
  stuffer : (stuffer/c serializable? bytes?)
  manager : manager?
  start : (request? . -> . can-be-response?)
value
default-module-specs : (listof module-path?)
value
path->servlet/c : contract?
procedure
(make-default-path->servlet                                                        
                            [#:make-servlet-namespace make-servlet-namespace       
                             #:timeouts-default-servlet timeouts-default-servlet]) 
 -> path->servlet/c
  make-servlet-namespace : make-servlet-namespace/c
                         = (make-make-servlet-namespace)
  timeouts-default-servlet : integer? = 30
value
make-servlet-namespace/c : contract?
procedure
(make-make-servlet-namespace #:to-be-copied-module-specs to-be-copied-module-specs)
 -> make-servlet-namespace/c
  to-be-copied-module-specs : (listof module-path?)
struct
(struct servlet (custodian namespace manager directory handler)
    #:extra-constructor-name make-servlet
    #:mutable)
  custodian : custodian?
  namespace : namespace?
  manager : manager?
  directory : path-string?
  handler : (request? . -> . can-be-response?)
procedure
(make-gc-thread time) -> thread?
  time : integer?
procedure
(make) -> dispatcher/c
procedure
(make limit inner [#:over-limit over-limit]) -> dispatcher/c
  limit : number?
  inner : dispatcher/c
  over-limit : (symbols 'block 'kill-new 'kill-old) = 'block
procedure
(serve  #:dispatch dispatch                                 
       [#:confirmation-channel confirmation-channel         
        #:connection-close? connection-close?               
        #:dispatch-server-connect@ dispatch-server-connect@ 
        #:tcp@ tcp@                                         
        #:port port                                         
        #:listen-ip listen-ip                               
        #:max-waiting max-waiting                           
        #:initial-connection-timeout request-read-timeout   
        #:safety-limits safety-limits])                     
 -> (-> any)
  dispatch : dispatcher/c
  confirmation-channel : (or/c #f (async-channel/c
                                   (or/c exn? port-number?)))
                       = #f
  connection-close? : boolean? = #f
  dispatch-server-connect@ : (unit/c (import)
                                     (export dispatch-server-connect^))
                           = raw:dispatch-server-connect@
  tcp@ : (unit/c (import) (export tcp^)) = raw:tcp@
  port : listen-port-number? = 80
  listen-ip : (or/c string? #f) = #f
  max-waiting : exact-nonnegative-integer? = 511
  request-read-timeout : timeout/c = 60
  safety-limits : safety-limits?
                = (make-safety-limits
                   #:max-waiting max-waiting
                   #:request-read-timeout request-read-timeout)
procedure
(serve/ports                                                      
              #:dispatch dispatch                                 
             [#:confirmation-channel confirmation-channel         
              #:connection-close? connection-close?               
              #:dispatch-server-connect@ dispatch-server-connect@ 
              #:tcp@ tcp@                                         
              #:ports ports                                       
              #:listen-ip listen-ip                               
              #:max-waiting max-waiting                           
              #:initial-connection-timeout request-read-timeout   
              #:safety-limits safety-limits])                     
 -> (-> any)
  dispatch : dispatcher/c
  confirmation-channel : (or/c #f (async-channel/c
                                   (or/c exn? port-number?)))
                       = #f
  connection-close? : boolean? = #f
  dispatch-server-connect@ : (unit/c (import)
                                     (export dispatch-server-connect^))
                           = raw:dispatch-server-connect@
  tcp@ : (unit/c (import) (export tcp^)) = raw:tcp@
  ports : (listof listen-port-number?) = (list 80)
  listen-ip : (or/c string? #f) = #f
  max-waiting : exact-nonnegative-integer? = 511
  request-read-timeout : timeout/c = 60
  safety-limits : safety-limits?
                = (make-safety-limits
                   #:max-waiting max-waiting
                   #:request-read-timeout request-read-timeout)
procedure
(serve/ips+ports                                                      
                  #:dispatch dispatch                                 
                 [#:confirmation-channel confirmation-channel         
                  #:connection-close? connection-close?               
                  #:dispatch-server-connect@ dispatch-server-connect@ 
                  #:tcp@ tcp@                                         
                  #:ips+ports ips+ports                               
                  #:max-waiting max-waiting                           
                  #:initial-connection-timeout request-read-timeout   
                  #:safety-limits safety-limits])                     
 -> (-> any)
  dispatch : dispatcher/c
  confirmation-channel : (or/c #f (async-channel/c
                                   (or/c exn? port-number?)))
                       = #f
  connection-close? : boolean? = #f
  dispatch-server-connect@ : (unit/c (import)
                                     (export dispatch-server-connect^))
                           = raw:dispatch-server-connect@
  tcp@ : (unit/c (import) (export tcp^)) = raw:tcp@
  ips+ports : (listof (cons/c (or/c string? #f) (listof listen-port-number?)))
            = (list (cons #f (list 80)))
  max-waiting : exact-nonnegative-integer? = 511
  request-read-timeout : timeout/c = 60
  safety-limits : safety-limits?
                = (make-safety-limits
                   #:max-waiting max-waiting
                   #:request-read-timeout request-read-timeout)
procedure
(serve/web-config@                                                      
                    config@                                             
                   [#:dispatch-server-connect@ dispatch-server-connect@ 
                    #:tcp@ tcp@])                                       
 -> (-> void)
  config@ : (unit/c (import) (export web-config*^))
  dispatch-server-connect@ : (unit/c (import)
                                     (export dispatch-server-connect^))
                           = raw:dispatch-server-connect@
  tcp@ : (unit/c (import) (export tcp^)) = raw:tcp@
value
raw:dispatch-server-connect@
 : (unit/c (import) (export dispatch-server-connect^))
procedure
(make-ssl-connect@ server-cert-file 
                   server-key-file) 
 -> (unit/c (import) (export dispatch-server-connect^))
  server-cert-file : path-string?
  server-key-file : path-string?
procedure
(do-not-return) -> none/c
procedure
(dispatch/servlet                                                          
                   start                                                   
                  [#:regexp regexp                                         
                   #:stateless? stateless?                                 
                   #:stuffer stuffer                                       
                   #:manager manager                                       
                   #:current-directory servlet-current-directory           
                   #:responders-servlet-loading responders-servlet-loading 
                   #:responders-servlet responders-servlet])               
 -> dispatcher/c
  start : (request? . -> . response?)
  regexp : regexp? = #rx""
  stateless? : boolean? = #f
  stuffer : (stuffer/c serializable? bytes?) = default-stuffer
  manager : manager?
          = (make-threshold-LRU-manager #f (* 1024 1024 64))
  servlet-current-directory : path-string? = (current-directory)
  responders-servlet-loading : (url? any/c . -> . can-be-response?)
                             = servlet-loading-responder
  responders-servlet : (url? any/c . -> . can-be-response?)
                     = servlet-error-responder
procedure
(serve/launch/wait  make-dispatcher                           
                   [#:connection-close? connection-close?     
                    #:launch-path launch-path                 
                    #:banner? banner?                         
                    #:listen-ip listen-ip                     
                    #:port port                               
                    #:ssl-cert ssl-cert                       
                    #:ssl-key ssl-key                         
                    #:max-waiting max-waiting                 
                    #:safety-limits safety-limits])       -> any
  make-dispatcher : (semaphore? . -> . dispatcher/c)
  connection-close? : boolean? = #f
  launch-path : (or/c #f string?) = #f
  banner? : boolean? = #f
  listen-ip : (or/c #f string?) = "127.0.0.1"
  port : number? = 8000
  ssl-cert : (or/c #f path-string?) = #f
  ssl-key : (or/c #f path-string?) = #f
  max-waiting : exact-nonnegative-integer? = 511
  safety-limits : safety-limits?
                = (make-safety-limits #:max-waiting max-waiting)
signature
web-server^ : signature
procedure
(serve [#:confirmation-channel confirmation-ach]) -> (-> any)
  confirmation-ach : (or/c #f (async-channel/c            = #f
                               (or/c exn? port-number?)))
procedure
(serve-ports ip op) -> any
  ip : input-port?
  op : output-port?
value
web-server-with-connect@
 : (unit/c (web-config*^ tcp^ dispatch-server-connect^)
           (web-server^))
value
web-server@ : (unit/c (web-config*^ tcp^)
                      (web-server^))
signature
web-config*^ : signature
value
safety-limits : safety-limits?
value
virtual-hosts : (string? . -> . host?)
value
port : port-number?
value
listen-ip : (or/c #f string?)
value
make-servlet-namespace : make-servlet-namespace/c
signature
web-config^ : signature
value
max-waiting : exact-nonnegative-integer?
value
initial-connection-timeout : timeout/c
procedure
(configuration-table->web-config@                                                    
                                   path                                              
                                  [#:port port                                       
                                   #:listen-ip listen-ip                             
                                   #:make-servlet-namespace make-servlet-namespace]) 
 -> (unit/c (import) (export web-config^))
  path : path-string?
  port : (or/c false/c port-number?) = #f
  listen-ip : (or/c false/c string?) = #f
  make-servlet-namespace : make-servlet-namespace/c
                         = (make-make-servlet-namespace)
procedure
(configuration-table-sexpr->web-config@                                                    
                                         sexpr                                             
                                        [#:web-server-root web-server-root                 
                                         #:port port                                       
                                         #:listen-ip listen-ip                             
                                         #:make-servlet-namespace make-servlet-namespace]) 
 -> (unit/c (import) (export web-config^))
  sexpr : list?
  web-server-root : path-string?
                  = (directory-part default-configuration-table-path)
  port : (or/c false/c port-number?) = #f
  listen-ip : (or/c false/c string?) = #f
  make-servlet-namespace : make-servlet-namespace/c
                         = (make-make-servlet-namespace)
value
default-configuration-table-path : path?
value
configuration-table-sexpr? : (any . -> . boolean?)
procedure
(sexpr->configuration-table sexpr) -> configuration-table?
  sexpr : configuration-table-sexpr?
procedure
(configuration-table->sexpr ctable)
 -> configuration-table-sexpr?
  ctable : configuration-table?
procedure
(read-configuration-table path) -> configuration-table?
  path : path-string?
procedure
(write-configuration-table ctable path) -> void
  ctable : configuration-table?
  path : path-string?
struct
(struct configuration-table (port
                             max-waiting
                             initial-connection-timeout
                             default-host
                             virtual-hosts)
    #:extra-constructor-name make-configuration-table)
  port : port-number?
  max-waiting : exact-nonnegative-integer?
  initial-connection-timeout : natural-number/c
  default-host : host-table?
  virtual-hosts : (listof (cons/c string? host-table?))
struct
(struct host-table (indices log-format messages timeouts paths)
    #:extra-constructor-name make-host-table)
  indices : (listof string?)
  log-format : symbol?
  messages : messages?
  timeouts : timeouts?
  paths : paths?
struct
(struct host (indices
              log-format
              log-path
              passwords
              responders
              timeouts
              paths)
    #:extra-constructor-name make-host)
  indices : (listof string?)
  log-format : symbol?
  log-path : (or/c false/c path-string?)
  passwords : (or/c false/c path-string?)
  responders : responders?
  timeouts : timeouts?
  paths : paths?
struct
(struct responders (servlet
                    servlet-loading
                    authentication
                    servlets-refreshed
                    passwords-refreshed
                    file-not-found
                    protocol
                    collect-garbage)
    #:extra-constructor-name make-responders)
  servlet : (url? any/c . -> . response?)
  servlet-loading : (url? any/c . -> . response?)
  authentication : (url? (cons/c symbol? string?) . -> . response?)
  servlets-refreshed : (-> response?)
  passwords-refreshed : (-> response?)
  file-not-found : (request? . -> . response?)
  protocol : (url? . -> . response?)
  collect-garbage : (-> response?)
struct
(struct messages (servlet
                  authentication
                  servlets-refreshed
                  passwords-refreshed
                  file-not-found
                  protocol
                  collect-garbage)
    #:extra-constructor-name make-messages)
  servlet : string?
  authentication : string?
  servlets-refreshed : string?
  passwords-refreshed : string?
  file-not-found : string?
  protocol : string?
  collect-garbage : string?
struct
(struct timeouts (default-servlet
                  password
                  servlet-connection
                  file-per-byte
                  file-base)
    #:extra-constructor-name make-timeouts)
  default-servlet : number?
  password : number?
  servlet-connection : number?
  file-per-byte : number?
  file-base : number?
struct
(struct paths (conf
               host-base
               log
               htdocs
               servlet
               mime-types
               passwords)
    #:extra-constructor-name make-paths)
  conf : (or/c false/c path-string?)
  host-base : (or/c false/c path-string?)
  log : (or/c false/c path-string?)
  htdocs : (or/c false/c path-string?)
  servlet : (or/c false/c path-string?)
  mime-types : (or/c false/c path-string?)
  passwords : (or/c false/c path-string?)
procedure
(file-response http-code         
               short-version     
               text-file         
               header ...)   -> response?
  http-code : natural-number/c
  short-version : string?
  text-file : string?
  header : header?
procedure
(servlet-loading-responder url exn) -> response?
  url : url?
  exn : exn?
procedure
(gen-servlet-not-found file) -> ((url url?) . -> . response?)
  file : path-string?
procedure
(servlet-error-responder url exn) -> response?
  url : url?
  exn : exn?
procedure
(gen-servlet-responder file)
 -> ((url url?) (exn any/c) . -> . response?)
  file : path-string?
procedure
(gen-servlets-refreshed file) -> (-> response?)
  file : path-string?
procedure
(gen-passwords-refreshed file) -> (-> response?)
  file : path-string?
procedure
(gen-authentication-responder file)
 -> ((url url?) (header header?) . -> . response?)
  file : path-string?
procedure
(gen-protocol-responder file) -> ((url url?) . -> . response?)
  file : path-string?
procedure
(gen-file-not-found-responder file)
 -> ((req request?) . -> . response?)
  file : path-string?
procedure
(gen-collect-garbage-responder file) -> (-> response?)
  file : path-string?
procedure
(timer-manager? x) -> boolean?
  x : any/c
struct
(struct timer (tm evt expire-seconds action)
    #:extra-constructor-name make-timer)
  tm : timer-manager?
  evt : evt?
  expire-seconds : number?
  action : (-> void)
procedure
(start-timer-manager) -> timer-manager?
procedure
(start-timer tm s action) -> timer?
  tm : timer-manager?
  s : number?
  action : (-> void)
procedure
(reset-timer! t s) -> void
  t : timer?
  s : number?
procedure
(increment-timer! t s) -> void
  t : timer?
  s : number?
procedure
(cancel-timer! t) -> void
  t : timer?
struct
(struct connection (timer i-port o-port custodian close?)
    #:extra-constructor-name make-connection)
  timer : timer?
  i-port : input-port?
  o-port : output-port?
  custodian : custodian?
  close? : boolean?
procedure
(connection-manager? v) -> boolean?
  v : any/c
procedure
(start-connection-manager [#:safety-limits safety-limits])
 -> connection-manager?
  safety-limits : safety-limits?
                = (make-unlimited-safety-limits)
procedure
(new-connection cm i-port o-port cust close?) -> connection?
  cm : connection-manager?
  i-port : input-port?
  o-port : output-port?
  cust : custodian?
  close? : boolean?
(new-connection cm          
                timeout     
                i-port      
                o-port      
                cust        
                close?) -> connection?
  cm : connection-manager?
  timeout : number?
  i-port : input-port?
  o-port : output-port?
  cust : custodian?
  close? : boolean?
procedure
(kill-connection! c) -> any
  c : connection?
procedure
(adjust-connection-timeout! c t) -> any
  c : connection?
  t : number?
procedure
(reset-connection-timeout! c t) -> any
  c : connection?
  t : number?
syntax
(serial-lambda formals body ...)
syntax
(serial-case-lambda [formals body ...] ...)
syntax
(define-closure tag formals (free-var ...) body)
procedure
(make-cache-table) -> cache-table?
procedure
(cache-table-lookup! ct id mk) -> any/c
  ct : cache-table?
  id : symbol?
  mk : (-> any/c)
procedure
(cache-table-clear! ct [entry-ids finalize]) -> void?
  ct : cache-table?
  entry-ids : (or/c false/c (listof symbol?)) = #f
  finalize : (-> any/c void?) = void
procedure
(cache-table? v) -> boolean?
  v : any/c
procedure
(read-mime-types p) -> (hash/c symbol? bytes?)
  p : path-string?
procedure
(make-path->mime-type p) -> (path? . -> . (or/c false/c bytes?))
  p : path-string?
procedure
(compress-serial sv) -> list?
  sv : list?
procedure
(decompress-serial csv) -> list?
  csv : list?
procedure
(insert-param u k v) -> url?
  u : url?
  k : string?
  v : string?
procedure
(extract-param u k) -> (or/c string? false/c)
  u : url?
  k : string?
procedure
(gzip/bytes ib) -> bytes?
  ib : bytes?
procedure
(gunzip/bytes ib) -> bytes?
  ib : bytes?
procedure
(bytes-ci=? b1 b2) -> boolean?
  b1 : bytes?
  b2 : bytes?
procedure
(url-replace-path proc u) -> url?
  proc : ((listof path/param?) . -> . (listof path/param?))
  u : url?
procedure
(url-path->string url-path) -> string?
  url-path : (listof path/param?)
procedure
(explode-path* p) -> (listof path-piece?)
  p : path-string?
procedure
(path-without-base base p) -> (listof path-piece?)
  base : path-string?
  p : path-string?
procedure
(directory-part p) -> path?
  p : path-string?
procedure
(build-path-unless-absolute base p) -> path?
  base : path-string?
  p : path-string?
procedure
(network-error s fmt v ...) -> void
  s : symbol?
  fmt : string?
  v : any/c
procedure
(exn->string exn) -> string?
  exn : (or/c exn? any/c)
procedure
(read/bytes bstr) -> printable/c
  bstr : bytes?
procedure
(write/bytes v) -> bytes?
  v : printable/c
value
path-piece? : contract?
