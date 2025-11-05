#lang racket
;ÜB3-Aufgabe1
;Lösung1
(define (sinus-approx x)
  (if (<= (abs x) 0.1) x
      (- (* 3 (sinus-approx(/ x 3))) (* 4 (expt (sinus-approx(/ x 3)) 3)))))


(sinus-approx 3.0)
(sinus-approx 4)

;Lösung2
#|(define (sinus-approx x)
  (if (<= (abs x) 0.1)
      x
     (let ((y (sinus-approx (/ x 3))))
        (- (* 3 y) (* 4 (* y y y))))))


(sinus-approx 3.0)|#
;___________________________________________________________________________________________________
;ÜB-3 Aufgabe 2
;Lösung 1
(define (count-perm x)
  (iter x 1))
(define (iter x mal)
  (if (< x 2)
      mal
      (iter (- x 1) (* mal x))))

(count-perm 3)
(count-perm 2)
(count-perm 5)

;Lösung 2
#|(define (fakultaet n)
  (if (= n 1)
      1
      (* n (fakultaet (- n 1)))))

(define (count-perm x)
  (if (>= x 2)
      (fakultaet x)
      #f))

(count-perm 2)
(count-perm 5)
(count-perm -3)
(count-perm 1)|#

;_______________________________________________________________________________________________________

;ÜB-3 Aufgabe3
;Lösung 1
#|(define (isbn-test isbn)
  (define (helper n i sum)
    (if (= i 0)
        sum
        (helper (quotient n 10)    
                (- i 1)            
                (+ sum (* i (remainder n 10)))))) 
  (let ((wert (remainder (helper isbn 9 0) 11)))   ; (helper isbn 9 0) çağrılıyor, yani toplam hesaplanıyor--> sonuc mesela 245
    (if (= wert 10)
        "X"
        wert)))

(isbn-test 344615497)
(isbn-test 026201153)
(isbn-test 392511825)|#

;Lösung 2
(define (isbn-test isbn)
  (isbn-iter isbn 9 0))
(define (isbn-iter isbn anzahl sum)
  (if (= anzahl 0)
       (isb sum)     ;anzahl = 0 olduğunda, artık isb çağrılır
      (isbn-iter (quotient isbn 10) (- anzahl 1) (+ (* (remainder isbn 10) anzahl) sum))))
 (define (isb sum)
   (if (= (remainder sum 11) 10) "X"
       (remainder sum 11)))


(isbn-test 344615497)
(isbn-test 026201153)
(isbn-test 392511825)


;ÜB3-Aufgabe4

;Lösung1
(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
  (let ((volZylinder (* pi radius-zylinder radius-zylinder hoehe-zylinder))
       ( volKugel (* (/ 1 3) pi radius-kegel radius-kegel hoehe-kegel)))
  (/ volZylinder volKugel)))

(zylinder-kegel 3 5 3 5)

;Lösung2

#|(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
  (/ (* 3 radius-zylinder radius-zylinder hoehe-zylinder)
     (* radius-kegel radius-kegel hoehe-kegel)))

(zylinder-kegel 3 5 3 5)|#



;Lösung 3

#|(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
   (/ (* 3.1415926535 radius-zylinder radius-zylinder hoehe-zylinder)
     (* (/ 1 3) 3.1415926535 radius-kegel radius-kegel hoehe-kegel)))|#









