#lang racket
;Aufgabe portfolie 1 Sommersemester 2025

;Aufgabe1

(define (volumen a b c d e)
  (if (or (<= a 0) (<= b 0) (<= c 0) (<= d 0) (<= e 0))
      -1
      (+ (* 2 b c e) (/ (* (/ d 2) (/ d 2) c 3.14159265) 2) (- (* e c d) (/ (* a d c) 2)))))



(volumen 2 2 3 4 3)


;Aufgabe2

(define (anzahl a b c)
  (cond ((< a 0) #f)
        ((> (- (* b b) (* 4 a c)) 0) 2)
        ((= (- (* b b) (* 4 a c)) 0) 1)
        ((< (- (* b b) (* 4 a c)) 0) 0)))

(anzahl 1 1 -2)


;Aufgabe2 2. Lösung
(define (anzahll a b c)
  (if (= a 0)
      #f
      (let ((D (- (* b b) (* 4 a c))))
        (cond ((> D 0) 2)
              ((= D 0) 1)
              (else 0)))))


(anzahll 1 1 -2)



;Aufgabe3

(define (f a b c d e)
  (or (and a b d e) (not (or (and c a d) (not (and (or (and (not a) e) (and a (not e))) c))))))

(f #f #f #f #t #t)
(f #t #t #t #t #t)








                                                    



   