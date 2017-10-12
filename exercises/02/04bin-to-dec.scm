(load "../../lib/scm/unit.scm")

; „Чисто“ рекурсивен вариант на bin-to-dec, без helper.
(define (bin-to-dec n)
  (if (= n 0)
      0
      (+ (remainder n 10)
         (* 2 (bin-to-dec (quotient n 10))))))

; Вариант с helper.
(define (bin-to-dec2 n)
  (define (helper current i)
    (if (= 0 current)
        0
        (+ (* (remainder current 10) (expt 2 i))
           (helper (quotient current 10) (+ i 1)))))
  (helper n 0))

(assert= 0 (bin-to-dec 0))
(assert= 1 (bin-to-dec 1))
(assert= 5 (bin-to-dec 101))
(assert= 16 (bin-to-dec 10000))
(assert= 5296 (bin-to-dec 1010010110000))

(assert= 0 (bin-to-dec2 0))
(assert= 1 (bin-to-dec2 1))
(assert= 5 (bin-to-dec2 101))
(assert= 16 (bin-to-dec2 10000))
(assert= 5296 (bin-to-dec2 1010010110000))
