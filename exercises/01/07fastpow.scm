(load "../../lib/scm/unit.scm")

(define (square x) (* x x))

; Бързо степенуване.
; Работи като нормалното, като единствената разлика е оптимизацията при четни n.
(define (fastpow x n)
  (cond
    ((= n 0) 1)
    ; Викаме помощната процедура за вдигане на квадрат, защото нещо такова:
    ; (* (fastpow x (/n 2)) (fastpow x (/ n 2)))
    ; Би направило две извиквания към fastpow, от които няма смисъл.
    ; Вместо fastpow2 може да се ползва и вградената процедура за степенуване - expt.
    ((even? n) (square (fastpow x (/ n 2))))
    (else (* x (fastpow x (- n 1))))))

(assert= 1 (fastpow 2 0))
(assert= 2 (fastpow 2 1))
(assert= 4 (fastpow 2 2))
(assert= 1024 (fastpow 2 10))
(assert= 1024 (fastpow -2 10))
(assert= -2048 (fastpow -2 11))
