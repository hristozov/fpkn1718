(load "../../lib/scm/unit.scm")
(load "./05range.scm")

; Създава вложени списъци чрез generate-list (вижте примера).
(define (construct-list n)
  (if (= n 0)
    '()
    (cons (reverse (range 1 n))
          (construct-list (- n 1)))))

(assert-equal '() (construct-list 0))
(assert-equal '((1)) (construct-list 1))
(assert-equal '((5 4 3 2 1) (4 3 2 1) (3 2 1) (2 1) (1)) (construct-list 5))
