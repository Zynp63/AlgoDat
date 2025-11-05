#lang racket
;Aufgabe 1
(define x (- (/ (+ 9 6) (* (- 3 1) 5)) (* (- (/ 7 8) 2) 4)))
x

;Aufgabe2

(define (g u v w)
  (+ (/ (- v (* 7 u)) (- u w)) (/ (+ u v) (- (* w 6) v))))

(g 1 2 3)
(g 3 11 2)


;Aufgabe3

(define (my-max x y)
  (cond ((> x y) x)
        ((<= x y) y)))

(my-max 5 2)
(my-max 10 23)
(my-max 4 4)

;Aufgabe 4

(define (groesser-zehn? x)
  (if (> x 10) #t #f))

(groesser-zehn? 4)
(groesser-zehn? 10)
(groesser-zehn? 15)


;Aufgabe 5

(define (groesserp? x y z)
  (if (> (+ x y) z) #t #f))


(groesserp? 4 5 6)
(groesserp? 2 12 10)
(groesserp? 3 3 6)


;Aufgabe 6
(define (squared-max x y z)
  (cond ((and (> (* x x) (* y y)) (> (* x x) (* z z))) (* x x))
        ((and (> (* y y) (* x x)) (> (* y y) (* z z))) (* y y))
        (else (* z z))))



(squared-max 2 -3 5)

;2.Lösung
(define (squared-maxx x y z)
  (max (* x x) (* y y) (* z z)))

(squared-maxx 2 6 8)

