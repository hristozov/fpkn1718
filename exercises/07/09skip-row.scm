(load "../../lib/scm/unit.scm")
(load "02filter.scm")
(load "03accumulate.scm")

; Този skip работи за r-тия ред в матрицата m. Всъщност, това е код който маха
; r-тия елемент в списъка m, а ползването му за матрици е частен случай.
(define (skip m r)
  (map (lambda (i) (list-ref m i))
       (filter (lambda (i) (not (= i r)))
               (range 0 (- (length m) 1)))))

; И вариант с рекурсия.
(define (skip2 m r)
  (define (helper i)
    (cond
      ((>= i (length m)) '())
      ((= i r) (helper (+ i 1)))
      (else (cons (list-ref m i)
                  (helper (+ i 1))))))
  (helper 0))


(assert-equal '((1 2 3) (7 8 9))
              (skip '((1 2 3) (4 5 6) (7 8 9)) 1))
(assert-equal '((1 2 3) (7 8 9))
              (skip2 '((1 2 3) (4 5 6) (7 8 9)) 1))

