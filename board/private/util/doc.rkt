#lang sweet-exp racket/base

require
  scribble/eval
  scribble/manual
  scribble-example
  for-label board
            racket/base

provide
  board-examples
  racket-itemlist
  reftech
  for-label
    all-from-out board
                 racket/base


(define-examples-form board-examples board)

(define-syntax-rule (racket-itemlist racket-item ...)
  (itemlist (item (racket racket-item)) ...))

(define (reftech . content)
  (apply tech #:doc '(lib "scribblings/reference/reference.scrbl") content))
