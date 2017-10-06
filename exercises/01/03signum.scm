(load "../../lib/scm/unit.scm")

; Връща -1, 0 или 1 в зависимост от това дали числото е отрицателно, нула или положително.
(define (signum1 n)
  (if (> n 0)
    1
    (if (< n 0)
      -1
      0)))

; Същото като горното, но направено с cond.
; Препоръчвам ви да ползвате cond, когато е възможно.
(define (signum2 n)
  (cond
    ((> n 0) 1)
    ((< n 0) -1)
    (else 0)))

(assert= 0 (signum2 0))
(assert= -1 (signum2 -4))
(assert= 1 (signum2 4))
(assert= 0 (signum2 0))
(assert= -1 (signum2 -4))
(assert= 1 (signum2 4))
