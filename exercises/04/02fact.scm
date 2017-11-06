(load "../../lib/scm/unit.scm")
(load "01accumulate.scm")

(define (fact n)
  (accumulate 1 plus-1 n identity * 1))

(assert= 1 (fact 1))
(assert= 24 (fact 4))
