(load "../../lib/scm/unit.scm")

(define (identity x) x)
(define (plus-1 x) (+ x 1))

(define (sum-iter start end)
  (define (helper current result)
    (if (> current end)
        result
        (helper (+ current 1)
                (+ result current))))
  (helper start 0))

; Абстрахираме изчисляването на членовете на сумата, добавяйки "term".
; (sum-iter 1 100) става (sum-iter 1 100 identity)
(define (sum-term start end term)
  (define (helper current result)
    (if (> current end)
        result
        (helper (+ current 1)
                (+ result (term current)))))
  (helper start 0))

; Абстрахираме движението между "start" и "end", чрез процедура "next", която ни дава следващ
; индекс.
; (sum-iter 1 100) става (sum-iter-next 1 plus-1 100 identity)
(define (sum-term-next start next end term)
  (define (helper current result)
    (if (> current end)
        result
        (helper (next current)
                (+ result (term current)))))
  (helper start 0))

; Абстрахираме комбинирането (напр. операцията събиране при сумирането по-горе). Трябва ни е
; първоначална стойност за комбинатора. Така получаваме accumulate.
; (sum-iter 1 100) става (accumulatet 1 plus-1 100 identity + 0)
(define (accumulate start next end term comb initial)
  (define (helper current result)
    (if (> current end)
        result
        (helper (next current)
                (comb result (term current)))))
  (helper start initial))

(define (_square x) (* x x))

(assert= 36 (accumulate 1 plus-1 3 _square * 1))
