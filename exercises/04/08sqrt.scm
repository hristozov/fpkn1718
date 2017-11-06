(load "../../lib/scm/unit.scm")
(load "01accumulate.scm")

; Тук на всеки индекс съпоставяме самия него чрез identity - членовете на
; редицата изобщо не зависят от индексите. Истинската работа се случва в
; комбиниращата процедура, която изчислява всеки нов член чрез този преди него.
; Затова и тази процедура игнорира аргумента си, който съдържа текущия индекс.
(define (my-sqrt x)
  (accumulate 1
              plus-1
              10
              identity
              (lambda (result _)  (/ (+ result (/ x result)) 2))
              1))

(assert-approx 4 0.01 (my-sqrt 16))
(assert-approx 2 0.01 (my-sqrt 4))
(assert-approx 10 0.01 (my-sqrt 100))
(assert-approx (expt 2 0.5) 0.01 (my-sqrt 2))
(assert-approx (expt 171 0.5) 0.01 (my-sqrt 171))
(assert-approx (expt 2237 0.5) 0.01 (my-sqrt 2237))
