#lang racket
(define (week-sum start-day days)
  (if (= days 0)
      0
      (+ start-day (week-sum (+ start-day 1) (- days 1)))))

(define (total-money n)
  (define (helper remaining start)
    (if (<= remaining 7)
        (week-sum start remaining) ; son hafta
        (+ (week-sum start 7)      ; bir haftalık toplam
           (helper (- remaining 7) (+ start 1))))) ; sonraki hafta
  (helper n 1))

; Testler
(displayln (total-money 4))   ; 10
(displayln (total-money 10))  ; 37
(displayln (total-money 20))  ; 96
