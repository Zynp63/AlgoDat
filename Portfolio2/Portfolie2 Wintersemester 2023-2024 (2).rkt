#lang racket
;Portfolie2 Wintersemester 2023/2024


;Aufgabe 1
(define (zaehleteiler n)
  (iter n 2 0))
(define (iter n zahl count)
  (if (= zahl n)
      count
      (iter n (+ zahl 1) (if (= (remainder n zahl) 0)
                             (+ count 1)
                             count))))




(zaehleteiler 10)
(zaehleteiler 16)




;Aufgabe2





