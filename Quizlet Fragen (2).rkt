#lang racket
;Quizlet Fragen

;Aufgabe1

(define (summer-der-quadrat n)
  (iter n 0))
(define (iter n summe)
  (if( < n 1)
     0
     (if (= n 1)
         (+ summe 1)
         (iter (- n 1) (+ (* n n) summe)))))

(summer-der-quadrat 3)
(summer-der-quadrat 6)


;Aufgabe 1.2

(define (sum-der-quadarat n)
  (if (< n 1)
      0
      (+ (* n n) (sum-der-quadarat (- n 1)))))

(sum-der-quadarat 3)
(sum-der-quadarat 6)



;Aufgabe3

(define (drehe zahl)
  (drehe-iter zahl 0))

(define (drehe-iter zahl ergebnis)
  (if (< zahl 10)
      (+ ( * 10 ergebnis ) zahl)
      (drehe-iter (quotient zahl 10)
                  (+ (* 10 ergebnis)
                     (remainder zahl 10)))))


(define (palindrom n)
  (= n (drehe n)))

(palindrom 9889)
(palindrom 7610)
(palindrom 74147)


;Aufgabe3 2.lösung;

(define (pali a)
  (if (< a 0)
      #f
      (iterr a 0 a)))
(define (iterr a neu b)
  (if (= a 0)
      (if (= neu b)
          #t
          #f)
      (iterr (quotient a 10) (+ (remainder a 10) (* neu 10)) b)))



(pali 74147)
(pali 9879)



;Beispiel
(define (palindrome x)
  (if (< x 0)
      #f
  (iterrr x 0 x)))
(define (iterrr x neu y)
  (if (= x 0)
     (if (= neu y)
         #t
         #f)
      (iterrr (quotient x 10) (+ (remainder x 10) (* neu 10)) y)))

(palindrome 121)
(palindrome -121)
(palindrome 10)
(palindrome -181)


;Aufgabe 4
(require math/number-theory)

(define (finde-primzahl n)
 
(define (iter counter anzahl )
  (if (= n anzahl)
      
      (- counter 1)

      (iter (+ 1 counter) (if (prime? counter)
                              (+ 1 anzahl)
                              anzahl))))
      (iter 3 1))

(finde-primzahl 2)
(finde-primzahl 4)
(finde-primzahl 100)




























