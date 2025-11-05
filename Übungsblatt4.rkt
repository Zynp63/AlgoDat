#lang racket
;Übungsblatt-4   ---> tüm sorulari cözmedim bu blatt a tekrar bak
;Aufgabe-1

(define (ganzzahlige-wurzel? n)
  (if (integer? (sqrt n)) #t #f))


(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)


;Aufgabe-2

(define (fakt n)
  (if (even? n)
      2
      (let loop ((a (ceiling (sqrt n))))
                 (let ((b2 (- (* a a) n)))
                   (if (= (* (floor (sqrt b2)) (floor (sqrt b2))) b2)
                       (- a(floor (sqrt b2)))
                       (loop (+ a 1)))))))

(fakt 25)
(fakt 13)
(fakt 100)
(fakt 2183)


;Aufgabe 4

(define (kubiksumme n)
  (iter n 0 ))
(define (iter n summe)
  (if (= n 0)
      (* summe summe summe)
      (iter (quotient n 10) (+ (remainder n 10) summe))))

(kubiksumme 101042)
(kubiksumme 34567)


;Aufgabe 5

(define (caesar_encrypt n k)
  (iterr n k 0 0))
(define (iterr n k umdrehen neu)
  (if (= n 0)
       (if (= umdrehen 0)
           neu
           (iterr n k (quotient umdrehen 10) (+ (remainder umdrehen 10) (* neu 10))))
      (iterr (quotient n 10) k (+ (remainder (+ (remainder n 10) k) 10) (* umdrehen 10)) neu)))

(caesar_encrypt 1234 1)
(caesar_encrypt 7901 2)
(caesar_encrypt 987 1)



;Eski cözümlerim bunlar ihtiyac olursa diye
#|
 ;A-1 
(define (ganzzahlige-wurzel? n)
   (if (integer? (sqrt n ))#t #f))

(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)


;A-1
(define (ganzzahlige-wurzel1? n)
    (integer? (sqrt n )))

(ganzzahlige-wurzel1? 25)
(ganzzahlige-wurzel1? 24)




;A-2

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


;A-2 mit let

(define (faktt n)
  (if (even? n)
      2
      (let* ((a (ceiling (sqrt n))))
        (faktt-iter a n)))
  )

(define (faktt-iter a n)
    (let ((b (sqrt (- (* a a) n))))
      (if (integer? (sqrt (* b b)))
        (- a (sqrt (* b b)))
        (faktt-iter (+ a 1) n)))
  )


(fakt 2183)
(fakt 25) 
(fakt 100) 
(fakt 11) 


;A-3
(define (primzahl? n)
  (cond (( not (integer? n)) #f)
        ((<= n 1) #f)
        ( (or  (= (fakt n) 1.0) (= n 2)) #t)
        (else #f)))


(primzahl? 11) 
(primzahl? 26737)
(primzahl? 200) 
(primzahl? 121)




;A-4
(define (kubiksumme n)
  (kubiksumme-iter n 0))
  (define (kubiksumme-iter n zahl)
    (if (= n 0)
       (expt zahl 3)
  (kubiksumme-iter (quotient n 10)  (+ zahl (remainder n 10)))))

(kubiksumme 101042)
(kubiksumme 34567)



;A-5
(define (caesar_encrypt n k)
  (caeser_encrypt-iter n k 0 0))
(define (caeser_encrypt-iter n k umdrehen neuZahl)
  (if (> n 0)
      (caeser_encrypt-iter (quotient n 10) k (+ (* 10 umdrehen)(remainder (+ k (remainder n 10)) 10)) neuZahl)
      (if (= umdrehen 0)
          neuZahl
          (caeser_encrypt-iter n k (quotient umdrehen 10) (+ (* 10 neuZahl) (remainder umdrehen 10))))))

          

(caesar_encrypt 1234 1)
(caesar_encrypt 7901 2) 
(caesar_encrypt 987 1)
       


 |#







