#lang racket
;Übungbaltt 5
;Aufgabe 1 Lösung1
#|(define (fakultaet n)
  (if (= n 0)
      1
      (* n (fakultaet (- n 1)))))

(define (euler-n n)
  (iter n 1))
(define (iter n neu)
  (if (= n 0)
      neu
      (iter (- n 1) (+ neu (/ 1 (fakultaet n))))))

(euler-n 0)
(euler-n 1)
(euler-n 2)
(euler-n 27.0)|#

;Lösung 2

(define (euler-n n)
  (iter 0 1.0 0.0 n))
  (define (iter k term sum n)  ; k--> su an hangi termi hesapliyoruz(baslangic 0)
    (if (> k n)              ; term--> o anda elimizdeki terim 1/k!
        sum                  ; sum--> o ana kadar toplanmis toplam
        (iter (+ k 1)
              (/ term (+ k 1))
              (+ sum term ) n)))
  
  

(euler-n 0)
(euler-n 1)
(euler-n 2)
(euler-n 27)


; Aufgabe2

(define (ackermann n m)
  (cond ((= n 0) (+ m 1))
        ((= m 0) (ackermann (- n 1) 1))
        (else (ackermann (- n 1) (ackermann n (- m 1))))))

(ackermann 0 0)
(ackermann 0 1)
(ackermann 4 0)
(ackermann 3 1)
(ackermann 3 9)


;Aufgabe 3

(define (osterformel j)
  (let ((a (remainder j 19))
        (b (remainder j 4))
        (c (remainder j 7))
        (k (quotient j 100)))
  (let ((p (quotient (+ (* 8 k) 13) 25))
        (q (quotient  k 4)))
    (let ((M (remainder (+ 15 k (- p) (- q)) 30))
          (N (remainder (+ 4 k (- q)) 7)))
      (let ((d (remainder (+ (* 19 a) M) 30)))          ; let’te aynı anda tanımlanan değişkenler birbirine erişemez bu yüzden d icin önce ayri bir let yapiyoruz sonra tanimli olanlarla e icin ayi bir let yaziyoruz
         (let ((e (remainder (+ (* 2 b) (* 4 c) (* 6 d) N) 7)))
           (+ 22 d e)))))))

(osterformel 2010)
(osterformel 2011)
(osterformel 2013)


;Aufgabe 4

(define (maxziffer n)
  (itero n 0))
(define (itero n max)
  (if (= n 0)
      max
      (itero (quotient n 10) (if (> (remainder n 10) max)
                                (remainder n 10)
                                max))))
      
  
(maxziffer 345376)
(maxziffer 1012)
(maxziffer 38790)

;Aufgabe 5

(define (n x)
  (+ x 1))
(define (sum x y)
  (if (= y 0)
      x
      (n (sum x (- y 1)))))


(sum 3 7)


;Aufgabe 6

(define (n x) (+ x 1))
(define (sum x y)
  (if (= y 0)
      x
      (n (sum x (- y 1)))))

(define (mul x y)
  (if (= y 0)
      0
      (sum x (mul x (- y 1)))))

(mul 2 7)
(mul 3 6)

; Aufgabe 7
(define (q n )
  (cond ((= n 1) 1)
        ((= n 2) 1)
        (else (+ (q (- n (q (- n 1)))) (q (- n (q (- n 2))))))))

        


(q 15)
(q 16)
(q 35)

  




