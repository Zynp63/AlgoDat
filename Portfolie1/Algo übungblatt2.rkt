#lang racket
;Aufgabe 1 
(define (nat-wurzel x)
  (define (wurzel-iter ungerade-zahl summe summand Parametre)
    (if (= summe Parametre)
        summand
        (wurzel-iter(+ ungerade-zahl 2)(+ ungerade-zahl summe) (+ summand 1)Parametre)))

        (wurzel-iter 1 0 0 x))
;summe-ungerade: Başlangıçta 0 olarak atanır, çünkü toplamı henüz başlatmadık.
;ungerade-iter: Başlangıçta 1 olarak atanır, çünkü ilk adımda 1'den başlayarak her adımda bir sonraki tek sayıyı elde etmek istiyoruz.Başlangıçta 1 olarak atanır ve her adımda 2 artırılarak güncellenir. Dolayısıyla, bu değer her adımda bir sonraki tek sayıyı belirler
;zaehler: Başlangıçta 0 olarak atanır, çünkü henüz hiç adım atlamadık.Bu değer, kaç adet tek sayı toplandığını (kaç adım atlandığını) sayar.
;x: Bu, karekökünü bulmak istediğimiz sayıdır.
;iter" kelimesi, "iteration" yani "tekrar" anlamına gelir. Burada ungrade-iter terimi, her adımda bir sonraki tek sayıya geçmek için kullanılan bir sayaçtır

(nat-wurzel 36)
(nat-wurzel 81)






;Ausgabe 2
(define (zahl-umdrehen x)
  (umdrehen-iter x 0))
  (define (umdrehen-iter zahl result)
    (if (= zahl 0)
         result
        (umdrehen-iter (quotient zahl 10)
                 (+ (* result 10) (remainder zahl 10)))))


(zahl-umdrehen 123)









;Übungsbaltt 3

;Aufgabe 1

(define (sinus-approx x)
  (cond ((<= x 0.1) x)
        (else (- (* 3 (sinus-approx (/ x 3)))
                 (* 4 (expt (sinus-approx (/ x 3)) 3))))))   ;Burada expt fonksiyonu, bir sayının üssünü almak için kullanılır. 




(sinus-approx 6.5)
(sinus-approx 0.5)
(sinus-approx 0.1)
(sinus-approx 6.2)




;Aufgabe 3

(define (isbn-test isbn)
  (if (= (remainder(isbn-iter isbn 9 ) 11) 10) "X" (remainder (isbn-iter isbn 9) 11)))
(define (isbn-iter zahl zaehler)
  (if (> zahl 0)
      (+ (* (remainder zahl 10) zaehler)(isbn-iter (quotient zahl 10) (- zaehler 1))) 0))

;Aufgabe 4
(define (zylinder-kegel radius-zylinder hoehe-zylinder
radius-kegel hoehe-kegel)
(let* (pi 3.1415926535897932384626433832795)
    (volumen-zylinder (* pi (expt radius 2) hoehe-zylinder))
  (volumen-kegel (*(/ 1 3) pi (expt radius 2)hoehe-kegel)))
    
  (/  volumen-zylinder  volumen-kege))



;AUFGABE 4
(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
  (define (volumen-zylinder r h)
   (* pi (* r r h)))

  (define (volumen-kegel r h)
    (/ (* pi (* r r h)) 3))

  (define pi 3.1415926535897932384626433832795)

  (if (or (<= radius-zylinder 0) (<= hoehe-zylinder 0) (<= radius-kegel 0) (<= hoehe-kegel 0))
      (error "Ungültige Eingabe: Radius und Höhe müssen größer als 0 sein.")
     (/ (volumen-zylinder radius-zylinder hoehe-zylinder)
         (volumen-kegel radius-kegel hoehe-kegel))))
    
(zylinder-kegel 3 5 3 5)












;Übungsblatt 4
;Aufgabe 1

(define (ganzzahlige-wurzel? n)
(if (integer? (sqrt n))#t #f))

(ganzzahlige-wurzel? 25) 
(ganzzahlige-wurzel? 24)



;Aufgabe2
(define (fakt n)
  (if (even? n)
      2
      (prozedur (ceiling (sqrt n))(- (quadrat (ceiling (sqrt n))) n) n)))
  (define (prozedur a b n)
    (if (integer? (sqrt b))
        (- a (sqrt b))
        (prozedur (+ a 1)(- (quadrat (+ a 1)) n) n)))
(define (quadrat x)
  (* x x))
;Aufgabe2 mit let*
(define (fakt n)
  (if (even? n)
      2
      (let* ((sqrt-n (ceiling (sqrt n)))
             (a sqrt-n)
             (b (- (quadrat sqrt-n) n)))
        (fakt-iter a b n))))

(define (fakt-iter a b n)
  (if (integer? (sqrt b))
      (- a (sqrt b))
      (let* ((a-next (+ a 1))
             (b-next (- (quadrat a-next) n)))
        (fakt-iter a-next b-next n))))

(define (quadrat x) (* x x))





;Aufgabe 5
(define (caesar-encrypt n k)
  (define (encrypt-ziffer x)
    (if (= x 0)
        0
        (+ (modulo (+ x k) 10)
           (* 10 (encrypt-ziffer (quotient x 10))))))

  (encrypt-ziffer n))

(caesar-encrypt 1234 2)
(caesar-encrypt 1234 1)
(caesar-encrypt 7901 2) 
(caesar-encrypt 987 1) 


;İşte encrypt-ziffer fonksiyonunun çalışma mantığı:

;x parametresi, şifrelenmeye başlanacak olan sayıdır. Örneğin, x 1234 olduğunda, şifreleme işlemi 1. basamaktan başlar.
;Fonksiyon, x'in son basamağını (modulo x 10 ile alınan kalan) şifreler. Bu işlem, x'in son basamağını k (kaydırma miktarı) kadar kaydırır ve 10'a bölerek mod alır.
;Bu şifrelenmiş basamak, sonuç değeri olarak kullanılır.
;Daha sonra, x değeri güncellenir. x'in son basamağı çıkartılarak (quotient x 10 ile alınan bölüm) yeni x değeri elde edilir.
;Bu sayede şifreleme işlemi bir sonraki basamak için hazırlanmış olur.
;Bu adımlar, x değeri 0 olana kadar tekrarlanır. Yani, tüm basamaklar şifrelendiğinde işlem sona erer.
;x, encrypt-ziffer fonksiyonunun içinde her adımda güncellenen ve şifreleme işleminin gerçekleştiği basamakları temsil eden bir değişkendir

   
  

;Tabii ki, işte encrypt-ziffer fonksiyonunun adım adım çalışma mantığı:

;encrypt-ziffer fonksiyonu bir parametre alır, bu parametre x olarak adlandırılır.
;Fonksiyon, (if (= x 0) 0 ...) ifadesi ile başlar. Eğer x 0 ise, işlem sonlanır ve sonuç 0 olur.
;Eğer x 0 değilse, (modulo (+ x k) 10) ifadesi ile x'in son basamağını k kadar kaydırıp 10'a bölerek modunu alır. Bu şifrelenmiş basamak, sonuç değeri olarak kullanılır.
;Daha sonra, (* 10 (encrypt-ziffer (quotient x 10))) ifadesi ile x değeri güncellenir. quotient x 10 ifadesi, x'in son basamağından arındırılmış halini temsil eder. Bu değer, encrypt-ziffer fonksiyonuna geri döner ve işlem bir sonraki basamak için tekrarlanır.
;Adımlar, x değeri 0 olana kadar tekrarlanır. Yani, tüm basamaklar şifrelendiğinde işlem sona erer.
;Sonuç olarak, şifrelenmiş sayı elde edilir.
;Örneğin, caesar-encrypt 1234 2 ifadesi ile encrypt-ziffer fonksiyonu şu şekilde çalışır:

;x başlangıçta 1234'tür.
;İlk adımda, x'in son basamağı 4'tür. Bu basamak, (modulo (+ x 2) 10) ifadesi ile şifrelenir ve sonuç 6 olur.
;x güncellenir ve 123 olur.
;İkinci adımda, x'in son basamağı 3'tür. Bu basamak, (modulo (+ x 2) 10) ifadesi ile şifrelenir ve sonuç 5 olur.
;x güncellenir ve 12 olur.
;Adımlar tekrarlanır ve sonuç olarak şifrelenmiş sayı 65 elde edilir.
;Bu şekilde, her adımda bir önceki basamağın şifrelenmiş halini alarak sayının tüm basamakları şifrelenir.

  
        
       
;Übungblatt 5
 ;Aufgabe 1
(define (euler-n n)       ;n burada iterasyon sayısını ifade eder. Yani, kaç adet terim kullanarak e sayısının yaklaşık değerini hesaplamak istediğimizi belirler
  (euler-n-iter 0 1 0 n))

(define (euler-n-iter sum fakt-sonuç step n)
  (if (< n step)
      sum
      (euler-n-iter (+ sum (/ 1 fakt-sonuç))
                    (* fakt-sonuç (+ 1 step))
                    (+ step 1)
                    n)))



    (euler-n 0)
    (euler-n 1)
    (euler-n 2)

;Aufgabe 4 

(define (maxziffer n)
  (define (hilfsfunktion zahl aktuelles-maximum)
    (if (= zahl 0)
        aktuelles-maximum
        (let ((letzte-ziffer (modulo zahl 10)))
          (hilfsfunktion (quotient zahl 10)
                         (if (> letzte-ziffer aktuelles-maximum)
                             letzte-ziffer
                             aktuelles-maximum)))))
   (hilfsfunktion (abs n) 0))


;Aufgabe 5
                ;n fonksiyonu, bir sayının (natürsel sayıların) "sonraki" sayısını oluşturan bir yardımcı işlevdir.
  
(define (sum x y)                      ;Yani, n(x) ifadesi, x'in bir sonraki sayısını verir. Örneğin, n(3) ifadesi 4'ü döndürür.
  (if (= y 0)                          ;Bu fonksiyon, verilen x sayısına 1 ekleyerek sonraki sayıyı elde etmektedir.
      x                                ;Bu, özellikle rekürsif bir yapıda kullanıldığında sayıları artırmak ve bir temel durum (base case) elde etmek için yaygın olarak kullanılır.
      (n (sum x (- y 1)))))
     (define (n x) (+ x 1)) 
                      
(sum 2 4)
(sum 3 4)
;Bu rekürsif çağrılar devam eder, her seferinde y değeri bir azaltılır, ve sonunda y sıfır olana kadar devam eder.
;Temel durum olan y'nin sıfıra eşit olduğu duruma ulaştığımızda, yani if (= y 0) şartı sağlandığında, x değeri döndürülür.







  