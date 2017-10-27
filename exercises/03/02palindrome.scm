(load "../../lib/scm/unit.scm")
(load "./01reverse.scm")

; Проверката дали дадено число е палиндром използва за база идеята на reverse -
; с итеративен процес постепенно обръщаме числото. Разликата е, че тук на всяка
; стъпка проверяваме дали междинният резултат (обърнатото число до тук) е равен
; на оставащата част от числото, което обръщаме. Ако се затруднявате с това
; решение, опитайте се първо да разгледате reverse.
(define (palindrome? n)
  (define (helper current result)
    (cond
      ((< current result) #f)
      ((or (= current result) (= (quotient current 10) result)) #t)
      (else (helper (quotient current 10)
                    (+ (* result 10) (remainder current 10))))))
  (if (= 0 (remainder n 10))
      #f
      (helper n 0)))

; Малко по-лесен вариант :)
(define (palindrome2? n)
  (= n (my-reverse n)))

(assert-true (palindrome? 1))
(assert-false (palindrome? 10))
(assert-true (palindrome? 101))
(assert-true (palindrome? 121))
(assert-false (palindrome? 122))
(assert-false (palindrome? 221))
(assert-false (palindrome? 1220))
(assert-true (palindrome? 1221))
(assert-false (palindrome? 12210))
(assert-true (palindrome? 1234321))
(assert-true (palindrome? 12344321))
(assert-false (palindrome? 123421))
(assert-false (palindrome? 124321))
(assert-true (palindrome2? 1))
(assert-false (palindrome2? 10))
(assert-true (palindrome2? 101))
(assert-true (palindrome2? 121))
(assert-false (palindrome2? 122))
(assert-false (palindrome2? 221))
(assert-false (palindrome2? 1220))
(assert-true (palindrome2? 1221))
(assert-false (palindrome2? 12210))
(assert-true (palindrome2? 1234321))
(assert-true (palindrome2? 12344321))
(assert-false (palindrome2? 123421))
(assert-false (palindrome2? 124321))
