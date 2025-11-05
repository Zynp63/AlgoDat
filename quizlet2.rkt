#lang racket
(define (palindrom n)
(=(palindrom-iter n 0 ) n))

  (define (palindrom-iter n neuZahl )
    (if (= n 0)
        neuZahl
        (palindrom-iter (quotient n 10) (+ (* neuZahl 10) (remainder n 10)))))

#|(define (neu-iter neuZahl n)
  (if (= neuZahl n)
      #t
      #f))|#
        

        

(palindrom 9879)
                                  
       


#|(define (palindrom n)
(if (=(palindrom-iter n 0 ) n) #t #f))

  (define (palindrom-iter n neuZahl )
    (if (= n 0)
        neuZahl
        (palindrom-iter (quotient n 10) (+ (* neuZahl 10) (remainder n 10)))))

#|(define (neu-iter neuZahl n)
  (if (= neuZahl n)
      #t
      #f))|#|#