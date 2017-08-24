(load "../../lib/scm/unit.scm")

; Връща n-тата колона в матрицата m.
(define (get-nth-column m n)
  (map (lambda (row)
         (list-ref row n))
       m))

; Идеята е на всяка стъпка да вземем i-тата колона на матрицата m и да я добавим
; като i-ти ред в резултата.
(define (transpose m)
  (define (helper i)
    (if (= i (length m))
        '()
        (cons (get-nth-column m i)
              (helper (+ i 1)))))
  (helper 0))

; Вариант за любознателни :-) Ползва алтернативни форми на map и apply.
(define (transpose2 m)
  (apply map list m))


(assert-equal '((1 4 7) (2 5 8) (3 6 9)) (transpose '((1 2 3) (4 5 6) (7 8 9))))
(assert-equal '((1 4 7) (2 5 8) (3 6 9)) (transpose2 '((1 2 3) (4 5 6) (7 8 9))))
