Разгледано на упражнението
==========================

* Представяне на списъци и основни операции с тях.
  * ``` `() ``` - празен списък
  * [`(car <list>) -> <element>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_392) - връща „главата“ на списък
  * [`(cdr <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_396) - връща „опашката“ на списък
  * [`(cons <element> <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_390)
  * [`(append <list> <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_420) - „залепва“ два списъка
  * [`(list <element> <element> ... <element>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_416) - създава списък от зададени елементи (може и с ```(<element> <element> ... <element>)```, ако елементите са атоми)
  * [`(null? <list>) -> boolean`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_410) - проверява дали нещо е празният списък
  * [`(list? <list>) -> boolean`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_414) - проверява дали нещо е списък
  * [`(list-ref <list> <i>)`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_426) - връща `i`-тия елемент от списък
- [`(member x l)`](01member.scm) - предикат за проверка (с `=`) дали `x` се среща в списъка `l`; подобно на вградения `member`
- [`(my-length l)`](02length.scm) - дължина на списъка `l`; като вградения `length`
- [`(nth l n)`](03nth.scm) - `n`-ти елемент в списъка `l`; като вградената `list-ref`
- [`(my-append l1 l2)`](04append.scm) - „залепя“ два списъка; като вградения `append`
- [`(range start end)`](05range.scm) - списък с елементите в даден интервал (`[start; end]`)
- [`(my-reverse l)`](06reverse.scm) - обръща списък; като вградения `reverse`
- [`(union l1 l2)`](07union.scm) и [`(intersection l1 l2)`](08intersection.scm) - операции със списъци, представящи множества
- [`(count-occurences l1 l2)`](09count-occurences.scm) - броене на срещанията на списъка `l2` като последователност от елементи в списъка `l1`
- [`(construct-list n)`](10construct-list.scm) - конструира списък от вида `((n n-1 ... 1) (n-1 n-2 ... 1) ... (2 1) (1))`
