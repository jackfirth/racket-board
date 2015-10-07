#lang sweet-exp racket/base

require
  scribble/eval
  scribble-example
  for-label board
            racket/base

provide
  board-examples
  for-label
    all-from-out board
                 racket/base


(define-examples-form board-examples board)
