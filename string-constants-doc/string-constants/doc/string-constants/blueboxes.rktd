687
((3) 0 () 1 ((q lib "string-constants/string-constant.rkt")) () (h ! (equal) ((c def c (c (? . 0) q set-language-pref)) q (509 . 3)) ((c form c (c (? . 0) q string-constant)) q (0 . 2)) ((c def c (c (? . 0) q dynamic-string-constant-in-current-language?)) q (358 . 3)) ((c def c (c (? . 0) q dynamic-string-constants)) q (200 . 3)) ((c form c (c (? . 0) q string-constant-in-current-language?)) q (63 . 2)) ((c form c (c (? . 0) q string-constants)) q (31 . 2)) ((c def c (c (? . 0) q string-constant?)) q (296 . 3)) ((c form c (c (? . 0) q all-languages)) q (486 . 2)) ((c def c (c (? . 0) q dynamic-string-constant)) q (115 . 3)) ((c form c (c (? . 0) q this-language)) q (463 . 2))))
syntax
(string-constant name)
syntax
(string-constants name)
syntax
(string-constant-in-current-language? name)
procedure
(dynamic-string-constant name) -> string?
  name : string-constant?
procedure
(dynamic-string-constants name) -> (listof string?)
  name : string-constant?
procedure
(string-constant? v) -> boolean?
  v : any/c
procedure
(dynamic-string-constant-in-current-language? key) -> boolean?
  key : string-constant?
syntax
(this-language)
syntax
(all-languages)
procedure
(set-language-pref lang) -> void?
  lang : string?
