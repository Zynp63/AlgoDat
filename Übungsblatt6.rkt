#lang racket
;Übungsblatt6

;Aufgabe1

(define (zaehlen start ende n)
  (if( and (>= (* 21 n) start) (<= (* 21 n) ende))
     (* 21 n)
     0))

(zaehlen 30 100 1)
(zaehlen 10 100 2)
(zaehlen 10 100 1337)
(zaehlen 50 1000 3)


;Aufgabe2
(define (erste-ziffer n)
  (if (< n 10)
      n
      (erste-ziffer (quotient n 10))))

(define (letzte-ziffer n)
  (remainder n 10))

(define (gleiche-ziffern zahl)
  (if (= (erste-ziffer zahl) (letzte-ziffer zahl))
      zahl
      (gleiche-ziffern (+ zahl 1))))



(gleiche-ziffern 123)
(gleiche-ziffern 4567)


;Aufgabe3
(define (konst-addierer n)
  (lambda (a) (+ a n)))

(define plus1 (konst-addierer 1))
(plus1 98)

(define plus10 (konst-addierer 10))
(plus10 98)




;Aufagabe4

(define (ggt a b)
  (if (= b 0)
      (abs a) ; abs mutlak degeri aliyor
      (ggt b(remainder a b))))

(define (konst-ggt b)
  (lambda (x)
    (ggt x b)))

(define ggt10 (konst-ggt 10))

(ggt10 25)
(ggt10 27)

(define ggt987 (konst-ggt 987))

(ggt987 762351)   
(ggt987 98123746)



;Aufagebe5

(define (paar-operation op)
  (lambda (p)
    (op (car p) (cdr p))))



(define paar=? (paar-operation =))
(paar=? (cons 2 3))
(paar=? (cons 3 3))


(define paar<? (paar-operation <))
(paar<? (cons 2 3)) 
(paar<? (cons 3 3))


(define paar+ (paar-operation +))
(paar+ (cons 2 3)) 
(paar+ (cons 3 3))



;Aufgabe6

