#lang racket
; ÜB5
;Aufgabe 1

(define (euler-n n)
  (define (iter i term sum)
    (if (> i n)
        sum
        (iter (+ i 1)
              (/ term (+ i 1))                ; yeni terim = eski terim / (i+1)
              (+ sum (/ term (+ i 1))))))
  (if (= n 0)
      1.0
      (iter 0 1.0 1.0)))



(euler-n 0)
(euler-n 1)
(euler-n 2)
(euler-n 3)

#|   ; Bu cözümüm rekursiv(ama soruda iterativ cöz demis) ve hesaplamalri her seferinde fakt ile bastan yaptigi icin aslinda daha zahmetli 
(define (fakt n)
  (if (= n 0)
      1
      (* n (fakt (- n 1)))))

(define (euler-n n)
  (if (= n 0)
      1
      (+ (/ 1 (fakt n)) (euler-n (- n 1)))))


(euler-n 0)
(euler-n 1)
(euler-n 27)
(euler-n 3)|#



;Aufgabe 2

(define (ackermann n m)
  (cond ((= n 0) (+ m 1))
        ((= m 0) (ackermann (- n 1) 1))
        (else (ackermann (- n 1) (ackermann n (- m 1))))))




(ackermann 0 0) 
(ackermann 0 1) 
(ackermann 4 0) 
(ackermann 3 1) 
(ackermann 3 9) 
;(ackermann 4 1)


;Aufgabe 3

(define (osterformel j)
  (let ((a (remainder j 19))
        (b (remainder j 4 ))
        (c (remainder j 7))
        (k (quotient j 100)))
  (let ((p (floor (/ (+ (* 8 k) 13) 25)))
        (q (floor (/ k 4))))
   (let ((M (remainder (+ 15 k (- p) (- q)) 30))
         (N (remainder (+ 4 k (- q)) 7)))
      (let ((d (remainder (+ (* 19 a) M) 30)))
         (let ((e (remainder (+ (* 2 b) (* 4 c) (* 6 d) N) 7)))
            (let ((o (+ 22 d e))) o)   #|Bu şunu yapıyor:

o adlı değişkeni oluşturuyor, değerini (22 + d + e) olarak hesaplıyor.

Sonra bu o’yu fonksiyonun çıktısı olarak döndürüyor.

Yani burada o:

Hem formüldeki son adımın sonucu,

Hem de fonksiyonun döndürdüğü değer oluyor.|#
  ))))))    
       


(osterformel 2010)
(osterformel 2011) 
(osterformel 2013)



;Aufgabe 4

(define (maxziffer n)
  (iter n ))
(define (iter n max)
  (if (= n 0)
      max
      (iter (quotient n 10) (if (= 














