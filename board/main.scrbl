#lang scribble/manual

@(require "private/util/doc.rkt")

@title[#:style '(toc)]{Boards}

@defmodule[board]

This library includes functions and forms for working with
@deftech[#:key "board"]{boards}. A board is a finite rectangular
2d grid of @deftech[#:key "space"]{spaces}, any of which may
or may not contain @deftech[#:key "piece"]{pieces}.

@author[@author+email["Jack Firth" "jackhfirth@gmail.com"]]

source code: @url["https://github.com/jackfirth/racket-board"]

@include-section["private/base.scrbl"]
