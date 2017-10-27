(load "../../lib/scm/unit.scm")
(load "../01/04fact.scm")

; Смята cos с ред на Тейлър.
; Обърнете внимание, че разликата с ex е само във функцията term.
(define (cos-iter x)
  (define iterations 50)
  (define (term n)
    (/ (* (expt -1 n) (expt x (* 2 n)))
       (fact (* 2 n))))
  (define (helper n result)
    (if (> n iterations)
        result
        (helper (+ n 1)
                (+ result (term n)))))
  (helper 0 0))

(define pi 3.14159265359)
(assert-approx 1 0.01 (cos-iter 0))
(assert-approx 0 0.01 (cos-iter (/ pi 2)))
(assert-approx -1 0.01 (cos-iter pi))
