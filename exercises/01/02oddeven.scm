(load "../../lib/scm/unit.scm")

; Определя дали дадено число е нечетно.
(define (my-odd? a)
  (if (= (remainder a 2) 1)
    #t
    #f))

; Опростен вариант на горното решение - директно връщаме стойността на булевия израз.
(define (my-even? a)
  (= (remainder a 2) 0))

(assert-true (my-odd? 3))
(assert-false (my-odd? 4))
(assert-false (my-even? 1))
(assert-true (my-even? 2))
