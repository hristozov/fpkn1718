(load "../../lib/scm/unit.scm")

(define (fact n)
  (if (<= n 1)
      1
      (* n (fact (- n 1)))))

(define (cos-iter x)
  (define iterations 50)
  (define (term n)
    (/ (* (expt -1 n) (expt x (* 2 n)))
       (fact (* 2 n))))
  (define (helper n result)
    (if (> n iterations)
        result
        (helper (+ n 1)
                (+ result (term n)))))
  (helper 0 0))

(define pi 3.14159265359)
(assert-approx 1 0.01 (cos-iter 0))
(assert-approx 0 0.01 (cos-iter (/ pi 2)))
(assert-approx -1 0.01 (cos-iter pi))
