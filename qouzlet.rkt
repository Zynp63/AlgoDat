#lang racket

;Zusätzliche Leetcode Aufgabe

#|
Eine positive ganze Zahl ist magisch , wenn sie durch 2 aoder 3 teilbar ist b.

Gegeben seien die drei ganzen Zahlen n, a, und b. Gesucht ist die magische Zahl. Da das Ergebnis sehr groß sein kann, wird es modulo zurückgegeben .nth109 + 7

 

Beispiel 1:

Eingabe: n = 1, a = 2, b = 3
 Ausgabe: 2
Beispiel 2:

Eingabe: n = 4, a = 2, b = 3
 Ausgabe: 6 

|#
;878. N-te magische Zahl

(define (magisch n a b)
  (iter n a b 1))
(define (iter n a b zahl)
  (if (= n 0)
     (- zahl 1)
      (iter (if (or (= (remainder zahl a) 0) (= (remainder zahl b)0))
                            (- n 1)
                            n) a b  (+ zahl 1))))
  

(magisch 1 2 3)
(magisch 4 2 3)
(magisch 5 2 3)
























