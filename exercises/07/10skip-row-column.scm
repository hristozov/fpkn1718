(load "../../lib/scm/unit.scm")
(load "02filter.scm")
(load "03accumulate.scm")

; skip от предишната задача.
(define (skip m r)
  (map (lambda (i) (list-ref m i))
       (filter (lambda (i) (not (= i r)))
               (range 0 (- (length m) 1)))))

; Тук решението е подобно - махаме редове с helper-а, подобно на skip. Разликата
; е, че при добавянето на редовете викаме skip върху самите тях, за да махнем
; съответните елементи от c-тата колона.
(define (skip-row-column m r c)
  (map (lambda (row) (skip row c))
       (skip m r)))

(assert-equal '((1 3) (7 9))
              (skip-row-column '((1 2 3) (4 5 6) (7 8 9)) 1 1))
