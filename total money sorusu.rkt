#lang racket
(define (total-money n)
  (if (= n 0)
      0
      (+ (total-money (- n 1))
         (+ (quotient (- n 1) 7)
            (+ 1 (remainder (- n 1) 7))))))

(total-money 4)
(total-money 10)
(total-money 20)
