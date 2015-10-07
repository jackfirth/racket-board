#lang sweet-exp racket/base

module+ test
  require doc-coverage
          board
  check-all-documented 'board
