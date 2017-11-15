(load "../../lib/scm/unit.scm")

; Да се конструира списъкът с числата от start до end.
(define (range start end)
  (define (helper i result)
    (if (< i start)
        result
        (helper (- i 1) (cons i result))))
  (helper end '()))

(assert-equal '(1) (range 1 1))
(assert-equal '(1 2 3 4) (range 1 4))

