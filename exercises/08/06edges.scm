(load "../../lib/scm/unit.scm")
(load "../07/02filter.scm")
(load "02cartesian-product.scm")
(load "04graph.scm")

; Връща списък от всички ребра в графа.
; Идеята на вземането на всички ребра:
; 1. Намираме всички върхове в графа.
; 2. За всеки от връх намираме всичките му съседи.
; 3. За всеки съсед от стъпка 2 създаваме двойката (връх съсед) и (с map) я
;    правим част от списък от двойки който има вида ((връх-i съсед-1)
;    (връх-i съсед-2) ...). Резултатът от тази операция ще са всичките ребра,
;    които имат за начало избрания на стъпка 2 връх.
; 4. Залепяме списъците, получени на стъпка 3.
(define (edges g)
  ; С apply append „залепяме“ списъците с ребра за всеки връх. Тоест, превръщаме
  ; списък от вида (за върховете 1, 2, 3):
  ; (((1 2) (1 3)) ((2 1) (2 4)) ((3 5)))
  ; В списък от вида:
  ; ((1 2) (1 3) (2 1) (2 4) (3 5))
  (apply
    append
    (map (lambda (vertex)
           ; Създаваме списък от всички ребра с начало vertex.
           (map (lambda (neighbour)
                  ; Добавяме ребро към резултата.
                  (list vertex neighbour))
                (neighbours vertex g)))
         (vertices g))))

; Може и с декартовото произведение :)
(define (edges2 g)
  (apply
    append
    (map (lambda (vertex)
           (cartesian-product (list vertex) (neighbours vertex g)))
         (vertices g))))

(define g1 (create-graph '(5 7)))
(add-vertex! 1 g1)
(add-vertex! 2 g1)
(add-vertex! 4 g1)
(add-vertex! 7 g1)
(add-edge! 1 2 g1)
(add-edge! 1 4 g1)
(add-edge! 5 2 g1)
(assert-equal '((5 2) (1 4) (1 2)) (edges g1))
(assert-equal '((5 2) (1 4) (1 2)) (edges2 g1))
