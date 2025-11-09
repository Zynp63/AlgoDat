#lang racket
(define (aufsteigendes-produkt? a b c d)
   (<= a b c d))
(aufsteigendes-produkt? 1 2 3 6)

(define (aufsteigendes-produkt2? a b c d)
  (or (< a b c d) (= (* a b c) d)))
(aufsteigendes-produkt2? 2 4 6 24)
