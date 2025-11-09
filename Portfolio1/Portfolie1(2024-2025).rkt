#lang racket
;Portfolie 1 (2024-2025)
;Aufgabe1
(define (f a b c d e)
  (or (and a b d e) (not (or (and c a d) (not (and a c))))))

(f #t #t #t #t #t)

;Aufgabe2
(define (prufeZahl n)
  (if (and (= (remainder n 3) 0)
           (> n 12)
           (<= (* n n) 999)) #t #f))

(prufeZahl 13)
(prufeZahl 15)
(prufeZahl 60)

;Aufgabe3

(define (skonto betrag anzahltage)
  (cond ((<= anzahltage 10) (- betrag (* betrag 0.03)))
        ((and (<= anzahltage 20)(> anzahltage 10)) (- betrag (* betrag 0.02)))
        (else betrag)))

(skonto 100 15)