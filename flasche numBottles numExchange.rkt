#lang racket
#| Es gibt numBottlesWasserflaschen, die zunächst mit Wasser gefüllt sind. numExchangeLeere Wasserflaschen können Sie im Markt gegen eine volle Wasserflasche eintauschen.

Durch das Trinken einer vollen Wasserflasche wird diese zu einer leeren Flasche.

Geben Sie anhand der beiden Ganzzahlen numBottlesund die maximale Anzahl an WasserflaschennumExchange zurück, die Sie trinken können .

 

Beispiel 1:


Eingabe: numBottles = 9, numExchange = 3
 Ausgabe: 13
 Erklärung: Sie können 3 leere Flaschen gegen 1 volle Wasserflasche eintauschen.
Anzahl der Wasserflaschen, aus denen Sie trinken können: 9 + 3 + 1 = 13.
Beispiel 2:


Eingabe: numBottles = 15, numExchange = 4
 Ausgabe: 19
 Erklärung: Sie können 4 leere Flaschen gegen 1 volle Wasserflasche eintauschen.
Anzahl der Wasserflaschen, aus denen Sie trinken können: 15 + 3 + 1 = 19.|#


(define (flasche numBottles numExchange)
  (iter numBottles numExchange  numBottles 0))
(define (iter numBottles numExchange  count wasser)
  (if (< numBottles numExchange)
      (if(>= (+ numBottles wasser) numExchange)
         (+ count (quotient (+ numBottles wasser) numExchange))
          count)
      (iter (- numBottles numExchange) numExchange (+ count 1) (+ wasser 1))))


(flasche 15 4)
(flasche 9 3)




