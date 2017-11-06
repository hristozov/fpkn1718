(load "../../lib/scm/unit.scm")
(load "01accumulate.scm")

; Редицата ни е от вида "x * x * x * ...", като всеки от членовете е независим
; от текущия индекс. Затова подаваме за term процедура, която игнорира индекса
; и винаги връща стойността на x.
; (Името на параметъра "_" е конвенция за кръщаване на неизползвани параметри)
(define (pow x n)
  (accumulate 1 plus-1 n (lambda (_) x) * 1))

; Процедурата може да е и именована:
(define (pow2 x n)
  (define (term _) x)
  (accumulate 1 plus-1 n term * 1))

(assert= 27 (pow 3 3))
(assert= 1024 (pow 2 10))
(assert= 27 (pow2 3 3))
(assert= 1024 (pow2 2 10))
