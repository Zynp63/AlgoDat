#lang racket
(define (sinus-approx x)
  (if (<= x 0.1)
      x
      (- (* 3 (sinus-approx (/ x 3))) (* 4 (sinus-approx (/ x 3)) (sinus-approx (/ x 3)) (sinus-approx (/ x 3))))))
      


(sinus-approx 9)
(sinus-approx 60)

(sinus-approx -3)


;2.Lösung
(define (sinus-approxy y)
  (if (<= (abs y) 0.1)
      y
      (let ((s (sinus-approx (/ y 3))))
        (- (* 3 s) (* 4 s s s)))))

(sinus-approxy -3)

;Aufagabe 2

(define (count-perm x)
  (if (< x 2)
      x
      (* x (count-perm (- x 1)))))

(count-perm 5)
(count-perm 3)
(count-perm 2)
(count-perm 1)
(count-perm 0)
(count-perm -3)

;2. Lösung
(define (count-permm x)
  (iter x 1))
  (define (iter x acc)
  (if (= x 1)
      acc
      (iter (- x 1) (* acc x))))
  
      
(count-permm 6)


;Aufgabe 3

(define (isbn-test isbn)
  (iterr isbn 0 9))
(define (iterr isbn summe count)
  (if(= isbn 0)
     (if (= (remainder summe 11) 10) "X"
         (remainder summe 11))
     (iterr (quotient isbn 10) (+ (* (remainder isbn 10) count) summe) (- count 1))))
     
         

(isbn-test 344615497)
(isbn-test 026201153) 
(isbn-test 392511825) 


;Aufagabe 4
(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
(define VolumenDesZylinder (* radius-zylinder radius-zylinder hoehe-zylinder  3.141592653))
(define VolumenKegel (* (/ 1 3) 3.141592653  radius-kegel radius-kegel hoehe-kegel))
        (/ VolumenDesZylinder VolumenKegel))


(zylinder-kegel 3 5 3 5)















   




      



         
