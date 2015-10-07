#lang scribble/manual

@(require "util/doc.rkt")

@title{Generic Board Interfaces}

@defthing[gen:board any/c]{
  A @reftech{generic interface} that represents a @tech{board}. The
  @racket[gen:board] interface provides the following functions:
  @racket-itemlist[board-ref board-set board-width board-height]
}
