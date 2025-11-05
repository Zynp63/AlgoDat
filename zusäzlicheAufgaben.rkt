#lang racket
;Aufgabe Frühzahlungsrabatt 
(define (early-discount betrag days)
  (cond ((<= days 7) (- betrag (* betrag 0.05)))
        ((and (> days 7) (<= days 14)) (- betrag (* betrag 0.03)))
        ((and (> days 14) (<= days 21)) (- betrag (* betrag 0.01)))
        (else betrag)))

(early-discount 200 6) 
(early-discount 150 20)
(early-discount 100 30)

; Aufgabe Parkgebühr

(define (parking-fee stunden)
  (cond ((<= stunden 1) 0)
        ((and (> stunden 1) (<= stunden 4))(* (- stunden 1) 2))
        ((> stunden 4)
         (if (> (* 3 stunden) 20) 20 (* 3 stunden)))))
        
(parking-fee 1) 
(parking-fee 3) 
(parking-fee 8)
(parking-fee 5)

; Aufgabe Stromrechnung

(define (elec-bill kwh)
  (cond ((<= kwh 100) (+(* kwh 0.2)5))
        ((and (> kwh 100) (< kwh 300)) (+ (* 100 0.2) (* (- kwh 100) 0.3) 5))
        ((+ (* 100 0.2) (* 200 0.3) (* (- kwh 300) 0.5) 5))))



(elec-bill 80) 
(elec-bill 250) 
(elec-bill 400)



;Aufgabe von Leetcom Münzen anordnen

(define (münzen eingabe)
  (iter eingabe 0))
(define (iter eingabe count)
  (if(< eingabe 0) 
        (- count 2)
      (iter (- eingabe count) (+ count 1))))


(münzen 5)
(münzen 8)
(münzen 10)
(münzen 14)


;Aufgabe Verstandkosten

(define (shipping kg speed)
  (cond ((and (<= kg 1) (eq? speed 'standard)) 4)
        ((and (<= kg 1) (eq? speed 'express)) 8)
        ((and (> kg 1) (<= kg 5) (eq? speed 'standard)) 8)
        ((and (> kg 1) (<= kg 5) (eq? speed 'express)) 15)
        ((and (> kg 5) (eq? speed 'standard)) 15)
        ((and (> kg 5) (eq? speed 'express)) 25)))


 (shipping 0.5 'standard) 
 (shipping 3 'express) 
 (shipping 7 'standard) 




;Aufgabe 6 Mobieler Datentarif

(define (data-bill x)
  (cond ((<= x 5) 10)
        ((and (> x 5) (<= x 10)) (+ (* (- x 5) 2) 10))
        ((> x 10) (+(*(- x 10) 3) (+ (* (- 10 5) 2) 10)))))


(data-bill 4)
(data-bill 8)
(data-bill 13)


;Aufgabe Bibliothek -Säumnisgebühren

(define (late-fee a)
  (cond ((<= a 3) 0)
        ((<= a 10) (* a 0.5))
        ((> a 10)
         (if (> (* a 1) 25)
             25
             (* a 1)))))


 (late-fee 2) 
 (late-fee 7) 
 (late-fee 50) 






















