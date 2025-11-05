#lang racket
;Portfolie Sommersemester 2024
#|Aufgabe 1: Regenmesser

Ihre neu gegründete Firma stellt individuelle Regenmesser in Form eines Zylinders her, deren
Parameter Durchmesser und Hohe der Kunde frei wahlen kann. Die Regenmemer mijmen
wie nuf dem Bild des realen Regenmessers rechte zu sehen, mit einer pamenden Beschriftung/
der Regenmenge versehen werden. Das bedeutet, dass Sie z.B. berechnen münten, anf welcher
Höhe die Beschriftung für die Regenmenge 1 Lm-2 aufgedruckt werden mus.
Schreiben Sie eine Prozedur
(define (regenmesser durchmesner hoehe menge) ... )
die für gegebene Abmessungen durchmesser und hoehe des Regenmessers (in em) and die Regen-
mengenangabe menge (in Lm"2) die Aufdruckhöhe (in cm) der entsprechenden Markierung ausgibe.
Für unsinnige Eingaben, die keinen sinnvollen Regenmeaser beschreiben, soll das Ergebnis 0 sein
Ebenso soll das Ergebnis 0 sein, wenn der Regenmesser bei der angegebenen Menge überläuft.

Hinweis: Folgende Formeln und Konstanten können ggf. hilfreich sein:
- Fläche AKrein = 7 . Radius2
- Volumen Vzylinder = Grundfläche · Höhe
- 1dm3=1L
- T=3.141592653589
Beispiel:
(regenmesser 100 20 1) -> 0.1
 |#

;Aufgabe 1
(define (regenmesser durchmesser hoehe menge)
  (let ((a (* menge 0.1)))
    (if (or (<= durchmesser 0)
            (<= hoehe 0)
            (> a hoehe)
            (> a hoehe))
        0
        a)))


(regenmesser 100 20 1)


;Aufgabe2

(define (f a b c d e)
  (or (and a b d e) (and c a d) (and a c)))


(f #f #f #f #t #t)



;Aufgabe 3

(define (note vortrag hausarbeit kolloquium)
  (let (( n (+ (* vortrag 0.25) (* hausarbeit 0.25) (* kolloquium 0.5))))
    (if (> n 4.0)
        5.0
        (cond ((and (>= n 1.0) (< n 1.3)) 1.0)
              ((and (>= n 1.3) (< n 1.7)) 1.3)
              ((and (>= n 1.7) (< n 2.0)) 1.7)
              ((and (>= n 2.0) (< n 2.3)) 2.0)
              ((and (>= n 2.3) (< n 3.0)) 2.3)
              ((and (>= n 3.0) (< n 3.7)) 3.0)
              ((and (>= n 3.7) (< n 4.0)) 3.7)
              ((and (>= n 4.0) (< n 5.0)) 4.0)))))
              
              


(note 2.0 3.0 2.3)   
(note 1.0 1.0 1.0)    
(note 1.0 2.0 2.0)   
(note 3.7 4.0 4.5)   
(note 1.3 1.7 1.7)



    












       