(load "../../lib/scm/unit.scm")

(define (pow2 x)
  (* x x))

(define (pow x n)
  (cond
    ((= n 0) 1)
    ; Викаме помощната процедура за вдигане на квадрат, защото нещо такова:
    ; (* (pow x (/n 2)) (pow x (/ n 2)))
    ; Би направило две извиквания към pow, от които няма смисъл.
    ; Вместо pow2 може да се ползва и вградената процедура за степенуване - expt.
    ((even? n) (pow2 (pow x (/ n 2))))
    (else (* x (pow x (- n 1))))))

(assert= 1 (pow 2 0))
(assert= 2 (pow 2 1))
(assert= 4 (pow 2 2))
(assert= 1024 (pow 2 10))
(assert= 1024 (pow -2 10))
(assert= -2048 (pow -2 11))
