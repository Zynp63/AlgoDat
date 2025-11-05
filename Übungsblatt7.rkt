#lang racket
;Übungblatt7
;Aufgabe1

(define (loesche liste praedikat)
  (cond ((null? liste) '())
        ((praedikat(car liste)) (loesche (cdr liste) praedikat))
        (else liste)))


(loesche (list 4 6 8 3 2 4 5) even?)
(loesche (list 4 9 8 3 2 4 5) even?)


;Aufgabe2     Bunu daha yapmamaisim

(define (drehe liste)
  (if (null? liste)
      liste
      (drehe ((car liste) liste))))

(drehe (list 1 2 3))

;Aufagabe3

(define (typ-or typ1 typ2)
  (lambda (x)
    (or (typ1 x) (typ2 x))))

(define paar-oder-liste? (typ-or pair? list?))

( paar-oder-liste? (cons 1 2))
( paar-oder-liste? #(1 2 3 4)) ;vektör # sembolü ile baslar
( paar-oder-liste? '(1 2 3 4)) ; liste ' sembolü ile baslar

(define boolean-oder-number? (typ-or boolean? number?))
(boolean-oder-number? #t)
(boolean-oder-number? 3.14)
(boolean-oder-number? "Hi")

#| ;Aufgabe3 2.Lösung

(define (typ-or typ1 typ2)
  (define (test x)
    (or (typ1 x) (typ2 x)))
  test)

#|(define paar-oder-liste? (typ-or pair? list?))
(define integer-oder-boolean? (typ-or integer? boolean?))
(integer-oder-boolean? (paar-oder-liste? (cons 1 2)))|#


(define integer-oder-boolean? (typ-or integer? boolean?))

(integer-oder-boolean? 42)  
(integer-oder-boolean? #t)  
(integer-oder-boolean? "Hi") |#
  