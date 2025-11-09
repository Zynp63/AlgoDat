#lang racket
;ÜB-6


;Aufgabe 1

(define (zaehlen start ende n )
  (if (> n 0)
      (if (and (> (* 21 n) start) (< (* 21 n) ende))
          (* 21 n)
          0)
      0))
      


(zaehlen 10 100 1) 
(zaehlen 10 100 2) 
(zaehlen 10 100 3) 
(zaehlen 10 100 1337)





;Aufgabe2

(define (gleiche-ziffern zahl)
  (iter zahl zahl))
(define (iter zahl neu)
  (if (< zahl 10)
       (if (= (remainder zahl 10) (remainder neu 10))
           neu
           (iter zahl (+ neu 1)))
      (iter (quotient zahl 10) neu)))


(gleiche-ziffern 123)
(gleiche-ziffern 4567)
(gleiche-ziffern 872)











                           