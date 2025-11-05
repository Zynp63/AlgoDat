#lang racket
; Quizlet Frage 5

(define (einstellige-quersumme n)
  (iter n 0))
(define (iter n summe)
  (if (= n 0)
      (if (<= summe 9)
      summe
      (neusumme summe))
      (iter (quotient n 10) (+ (remainder n 10) summe))))

(define (neusumme summe)
  (iterr summe 0))
(define (iterr summe neu)
  (if (= summe 0)
      neu
      (iterr (quotient summe 10) (+ (remainder summe 10) neu))))
  
  


(einstellige-quersumme 123)
(einstellige-quersumme 9999999999912)



;2.Lösung

(define (quersumme n)
  (if (< n 10)
      n
     (+ (remainder n 10) (quersumme (quotient n 10)))))

(define (einstellige-quersummee n)
  (let ((qs (quersumme n)))
    (if (< qs 10)
        qs
        (einstellige-quersummee qs))))

  
(einstellige-quersummee 123)
(einstellige-quersummee 9999999999912)  ;(11 *9 +1 +2 = 102--> 1+0+2 = 3)




























