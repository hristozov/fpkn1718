(load "../../lib/scm/unit.scm")
(load "../01/04fact.scm")

; Смята e^x с ред на Тейлър.
; Обърнете внимание на разбиването на помощни функции.
(define (ex x)
  (define iterations 50)
  (define (term n)
    (/ (expt x n)
       (fact n)))
  (define (helper n result)
    (if (> n iterations)
        result
        (helper (+ n 1)
                (+ result (term n)))))
  (helper 0 0))

(define e 2.718281828)
(assert-approx 1 0.01 (ex 0))
(assert-approx e 0.01 (ex 1))
(assert-approx (expt e 2) 0.01 (ex 2))
