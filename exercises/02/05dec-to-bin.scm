(load "../../lib/scm/unit.scm")

; „Чисто“ рекурсивен вариант на dec-to-bin, без helper.
(define (dec-to-bin n)
  (if (= n 0)
      0
      (+ (remainder n 2)
         (* 10 (dec-to-bin (quotient n 2))))))

; Вариант с helper.
(define (dec-to-bin2 n)
  (define (helper current i)
    (if (= 0 current)
        0
        (+ (* (remainder current 2) (expt 10 i))
           (helper (quotient current 2) (+ i 1)))))
  (helper n 0))

(assert= 0 (dec-to-bin 0))
(assert= 1 (dec-to-bin 1))
(assert= 101 (dec-to-bin 5))
(assert= 10000 (dec-to-bin 16))
(assert= 1010010110000 (dec-to-bin 5296))
(assert= 0 (dec-to-bin2 0))
(assert= 1 (dec-to-bin2 1))
(assert= 101 (dec-to-bin2 5))
(assert= 10000 (dec-to-bin2 16))
(assert= 1010010110000 (dec-to-bin2 5296))
