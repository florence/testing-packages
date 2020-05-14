#lang scribble/doc
@(require "mz.rkt")

@title[#:style 'toc #:tag "data"]{Datatypes}

@guideintro["datatypes"]{Datatypes}

Each pre-defined datatype comes with a set of procedures for
manipulating instances of the datatype.

@local-table-of-contents[#:style 'immediate-only]

@; ------------------------------------------------------------
@include-section["booleans.scrbl"]

@; ------------------------------------------------------------
@include-section["numbers.scrbl"]

@; ------------------------------------------------------------
@include-section["strings.scrbl"]

@; ------------------------------------------------------------
@include-section["bytes.scrbl"]

@; ------------------------------------------------------------
@include-section["chars.scrbl"]

@; ------------------------------------------------------------
@include-section["symbols.scrbl"]

@; ------------------------------------------------------------
@include-section["regexps.scrbl"]

@; ------------------------------------------------------------
@include-section["keywords.scrbl"]

@; ----------------------------------------------------------------------
@include-section["pairs.scrbl"]

@; ----------------------------------------------------------------------
@include-section["mpairs.scrbl"]

@; ----------------------------------------------------------------------
@include-section["vectors.scrbl"]

@; ------------------------------------------------------------
@section[#:tag "boxes"]{Boxes}

@guideintro["boxes"]{boxes}

A @deftech{box} is like a single-element vector, normally used as
minimal mutable storage.

A box can be @defterm{mutable} or
@defterm{immutable}. When an immutable box is provided to a
procedure like @racket[set-box!], the
@exnraise[exn:fail:contract]. Box constants generated by the
default reader (see @secref["parse-string"]) are
immutable. Use @racket[immutable?] to check whether a box is
immutable.

A literal or printed box starts with @litchar{#&}. @see-read-print["box"]{boxes}

@defproc[(box? [v any/c]) boolean?]{

Returns @racket[#t] if @racket[v] is a box, @racket[#f] otherwise.}


@defproc[(box [v any/c]) box?]{

Returns a new mutable box that contains @racket[v].}


@defproc[(box-immutable [v any/c]) (and/c box? immutable?)]{

Returns a new immutable box that contains @racket[v].}


@defproc[(unbox [box box?]) any/c]{

Returns the content of @racket[box].}


For any @racket[v], @racket[(unbox (box v))] and @racket[(unbox (box-immutable v))] returns @racket[v].


@defproc[(set-box! [box (and/c box? (not/c immutable?))]
                   [v any/c]) void?]{

Sets the content of @racket[box] to @racket[v].}


@deftogether[(
@defproc[(unbox* [box (and box? (not/c impersonator?))]) any/c]
@defproc[(set-box*! [box (and/c box? (not/c immutable?) (not/c impersonator?))]
                    [v any/c]) void?]
)]{

Like @racket[unbox] and @racket[set-box!], but constrained to work on
boxes that are not @tech{impersonators}.

@history[#:added "6.90.0.15"]}


@defproc[(box-cas! [box (and/c box? (not/c immutable?) (not/c impersonator?))]
                   [old any/c] 
                   [new any/c]) 
         boolean?]{
  Atomically updates the contents of @racket[box] to @racket[new], provided
  that @racket[box] currently contains a value that is @racket[eq?] to
  @racket[old], and returns @racket[#t] in that case.  If @racket[box] 
  does not contain @racket[old], then the result is @racket[#f].

  If no other @tech{threads} or @tech{futures} attempt to access
  @racket[box], the operation is equivalent to 

  @racketblock[
  (and (eq? old (unbox loc)) (set-box! loc new) #t)]

  When Racket is compiled with support for @tech{futures},
  @racket[box-cas!] uses a hardware @emph{compare and set} operation.
  Uses of @racket[box-cas!] be performed safely in a @tech{future} (i.e.,
  allowing the future thunk to continue in parallel). }

@; ----------------------------------------------------------------------
@include-section["hashes.scrbl"]

@; ----------------------------------------------------------------------
@include-section["sequences.scrbl"]

@; ----------------------------------------------------------------------
@include-section["dicts.scrbl"]

@; ----------------------------------------------------------------------
@include-section["sets.scrbl"]

@; ----------------------------------------------------------------------
@include-section["procedures.scrbl"]

@; ----------------------------------------------------------------------
@section[#:tag "void"]{Void}

The constant @|void-const| is returned by most forms and procedures
that have a side-effect and no useful result.

The @|void-const| value is always @racket[eq?] to itself.

@defproc[(void? [v any/c]) boolean?]{Returns @racket[#t] if @racket[v] is the
 constant @|void-const|, @racket[#f] otherwise.}


@defproc[(void [v any/c] ...) void?]{Returns the constant @|void-const|. Each
 @racket[v] argument is ignored.}

@; ----------------------------------------------------------------------
@include-section["undefined.scrbl"]