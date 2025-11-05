#lang racket
#|Finde eine Beziehung zwischen der Summe der ersten n ungeraden Zahlen und
der Summe der ersten n geraden Zahlen.
Implementiere eine Prozedur,
 die beide Summen für ein gegebenes n berechnet und vergleicht. |#

;;Ilk n cift sayinin toplami: 2 + 4 + 6 +.....+ 2n

(define (gerade n)
  (iter n 1 0))
(define (iter n i sum)
  (if (> i n)
      sum
      (iter n (+ i 1) (+ sum (* 2 i)))))



(gerade 2)
(gerade 6)



;;Ilk n tek sayinin toplami: 1 + 3 + 5 + ....+ (2n - 1)

(define (ungerade n)
  (iterr n 1 0))
(define (iterr n i sum)
  (if (> i n)
      sum
      (iterr n (+ i 1) (+ sum (- (* 2 i) 1)))))



(ungerade 2)
(ungerade 6)



;;

(define (kubikwurzel n)
  (ite 1 0 0 n))
(define (ite ungerade summe summand parameter)
  (if (= summe parameter)
       summand
       (ite (+ ungerade 2) (+ summe summand) (+ summand 1) parameter)))


(kubikwurzel 8)
(kubikwurzel 63)
















