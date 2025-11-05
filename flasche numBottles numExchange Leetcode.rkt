#lang racket
(define (flasche numBottles numExchange)
  (iter numBottles numExchange  numBottles))
(define (iter numBottles numExchange  count)
  (if (< numBottles numExchange)
      (if(>= (+(+ numBottles ) count) numExchange)
         (+ count (quotient (- numBottles numExchange) numExchange))
          count)
      (iter (- numBottles numExchange) numExchange (+ count 1))))


(flasche 15 4)
(flasche 9 3)