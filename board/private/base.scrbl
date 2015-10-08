#lang scribble/manual

@(require "util/doc.rkt")

@title{Generic Board Interfaces}

@defthing[gen:board any/c]{
  A @reftech{generic interface} that represents a @tech{board}. The
  @racket[gen:board] interface provides the following functions:
  @racket-itemlist[board-space board-width board-height]
}

@defthing[gen:space any/c]{
  A @reftech{generic interface} that represents a @tech{space}. The
  @racket[gen:space] interface provides the following functions:
  @racket-itemlist[space-pieces]
  A space primarily exists as a customization hook for various boards.
  Some boards may wish to track extra information in spaces not related
  to pieces, for instance a particular board may use spaces that each
  have a particular color.
}

@defpredicates[[board? @board-tech{boards}]
               [space? @space-tech{spaces}]]

@defproc[(board/c [space-contract contract?]
                  [piece-contract contract?])
         contract?]{
  Given contracts for a @space-tech{space} and a @piece-tech{piece},
  returns a contract for a specific kind of @board-tech{board}.
}

@defstruct*[cell ([row exact-nonnegative-integer?]
                  [column exact-nonnegative-integer?])
            #:transparent]{
  Data structure representing a position on a @board-tech{board}.
}

@defproc[(board-width [board board?]) exact-positive-integer?]{
  A generic procedure that returns the width of a given board.
}

@defproc[(board-height [board board?]) exact-positive-integer?]{
  A generic procedure that returns the height of a given board.
}

@defproc[(board-space [board board?]
                      [cell cell?])
         space?]{
  Returns the @space-tech{space} located at @racket[cell] on the
  given @racket[board]
}
