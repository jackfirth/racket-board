#lang at-exp racket/base

(require racket/contract
         scribble/eval
         scribble/manual
         scribble/decode
         scribble-example
         (for-label board
                    racket/base
                    racket/contract))

(provide board-examples
         racket-itemlist
         defpredicates
         reftech
         board-tech
         space-tech
         piece-tech
         (for-label
          (all-from-out board
                        racket/base
                        racket/contract)))


(define-examples-form board-examples board)

(define-syntax-rule (racket-itemlist racket-item ...)
  (itemlist (item (racket racket-item)) ...))

(define (reftech . content)
  (apply tech #:doc '(lib "scribblings/reference/reference.scrbl") content))

(define-syntax-rule (defpredicates [pred-id domain-doc-content] ...)
  (splice (list (defpredicate pred-id domain-doc-content) ...)))

(define-syntax-rule (defpredicate pred-id domain-doc-content)
  @defthing[#:kind "predicate" pred-id predicate/c]{Predicate recognizing @domain-doc-content})

(define (board-tech . pre-content)
  (apply tech #:key "board" pre-content))

(define (space-tech . pre-content)
  (apply tech #:key "space" pre-content))

(define (piece-tech . pre-content)
  (apply tech #:key "piece" pre-content))
