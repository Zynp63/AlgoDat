#lang racket
;Übungblatt8
;Aufgabe1

(define (compress liste)
  (iter liste '() 0))
(define (iter liste neuliste anzahl)
  (if ( null? liste )
      neuliste
      (if (