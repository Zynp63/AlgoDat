#lang racket
;ÜB4

;Aufgabe1
(define (ganzzahlige-wurzel? n)
  (if (integer? (sqrt n))
      #t
      #f))
     

(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)



;Aufgabe2

(define (fakt n)
  (if (even? n)
      2
  (fakt-iter (ceiling (sqrt n)) (- (expt (ceiling (sqrt n)) 2) n) n)))


  (define (fakt-iter a m n)               

    (if (integer? (sqrt m))
      (- a (sqrt m))
      (fakt-iter (+ a 1)(-(expt (+ a 1) 2) n) n)))


(fakt 2183)
(fakt 25)
(fakt 100)
(fakt 11)


;Aufgabe4

(define (kubiksumme n)
  (iter n 0))
(define (iter n summe)
  (if (= n 0)
      (* summe summe summe)
      (iter (quotient n 10) (+ (remainder n 10) summe))))


(kubiksumme 101042)
(kubiksumme 34567)





;Aufgabe5

(define (caeser_encrypt n k)
  (iterrr n k 0))
(define (iterrr n k neu)
  (if (= n 0)
     (umwandlung neu)   
      (iterrr (quotient n 10) k (* (+ (remainder (+ (remainder n 10) k) 10) neu) 10))))

(define (umwandlung neu)
  (ite neu 0))

(define (ite neu um)
  (if (= neu 0)
      um
      (ite (quotient neu 10) (* (+ (remainder neu 10) um) 10))))
      
(caeser_encrypt 1234 1)
(caeser_encrypt 7901 2)
(caeser_encrypt 987 1)









