λ (2017/2018)
=============

Тук са събрани помощни материали за упражненията по Функционално програмиране за специалност Компютърни науки през учебната 2017/2018 във [ФМИ](https://www.fmi.uni-sofia.bg). Това хранилище спомага учебните занятия на X-та и X-та група на 2-ри поток (при [проф. Магдалина Тодорова](https://www.fmi.uni-sofia.bg/bg/lecturers/ci/magda)), но може да бъде използвано от всички студенти, изучаващи Функционало програмиране във ФМИ.

Това хранилище съдържа всички задачи, решавани на упражнения по ФП. Към тях има коментари, както и кратки записки какъв материал е разгледан на упражнение.

Moodle курсът може да бъде намерен [тук](http://moodle.openfmi.net/enrol/index.php?id=XXX). В него се намират съобщения за учебната дейност.

Следните хранилища съдържат ресурси от миналогодишни издания на курса:

- [Зимен семестър 2014/2015 - проф. Магдалина Тодорова](https://github.com/hristozov/fpkn1415)
- [Зимен семестър 2015/2016 - проф. Магдалина Тодорова](https://github.com/hristozov/fpkn1516)
- [Зимен семестър 2016/2017 - Бойко Банчев](https://github.com/hristozov/fpkn1617)

Кодът на Scheme е базиран на R5RS стандарта (с много малка част на Racket), а този на Haskell - на Haskell 98.

Структура
=========

- Материалите за различните упражнения (планове на разгледаното и решения на задачите) са в директорията [/exercises](/exercises).
- Заданията за домашна работа и инструкции как да бъдат изпратени са в директорията [/assignments](/assignments).
- Задачите от контролните са в директорията [/tests](/tests).

В някои от директориите има скриптове на име `run.sh`. Те служат за изпълнение на тестовете за кода, публикуван тук.

Среда за разработка
===================

## Scheme

### Препоръчително: Racket / PLT Scheme

Racket дистрибуцията (съдържаща графична среда за разработка) [официалния сайт на Racket](http://racket-lang.org).

Ако ползвате DrRacket, не забравяйте първо да сложите R5RS за език, тъй като той не е зададен по подразбиране. Това става от менюто Language -> Choose Language -> Other Languages -> R5RS.

### Онлайн алтернатива: REPL.it

Ако не ви се инсталира Racket, можете да ползвате уеб-базирания [repl.it](http://repl.it/languages). Обърнете внимание, че repl.it е базиран на R6RS стандарта и има някои дребни разминавания с R5RS. Въпреки това, той може да бъде използван за решаване на задачи без големи проблеми.

### За напреднали: plt-r5rs и paredit

Racket дистрибуцията съдържа `plt-r5rs` - конзолен вариант на Scheme интерпретатора, вграден в DrRacket. Той може да бъде извикван от всевъзможни среди и редактори.

Допълнително, можете да настроите `paredit` plugin за любимия си редактор. Това ще улесни редактирането на Scheme код.

## Haskell

### Подобна на DrRacket среда за Windows: WinHugs

Можете да си свалите [WinHugs](https://www.haskell.org/haskellwiki/WinHugs) и с него да зареждате `.hs` файловете и да ги редактирате интерактивно.

За съжаление, WinHugs е вече неподдържан софтуер, който работи само на Windows. Въпреки това, той може да е полезен за по-прости програми.

### Конзолен вариант: Glasgow Haskell Compiler

Друг вариант е да използвате [ghc](https://www.haskell.org/ghc/) пакета, съдържащ компилатор и интерактивна среда.

За редактиране на Haskell код може да ви бъде удобен [Sublime Text](http://www.sublimetext.com/), който може да бъде надграден със [SublimeHaskell](https://github.com/SublimeHaskell/SublimeHaskell). Plugin-и за Haskell има за всички по-популярни текстови редактори.

Контакт
=======

Мейлът ми е [georgi@forkbomb.nl](mailto:georgi@forkbomb.nl). Можете да ми пишете с всякакви въпроси, забележки и коментари, дори да не сте от групите на които преподавам.

За грешки
=========

Ако откриете нещо, което според вас не е наред, не се притеснявайте да направите едно от следните неща:

- да създадете issue [тук](https://github.com/hristozov/fpkn1718/issues) с описание какво точно не е наред
- да ми [напишете мейл](mailto:georgi@forkbomb.nl)

Благодаря предварително!

Литература
==========

Ресурсите по-долу са безплатни. Можете да намерите още препоръчана литература в анотацията на курса.

### Scheme

- [Structure and Interpretation of Computer Programs (SICP)](https://mitpress.mit.edu/sicp/)
- [R5RS стандарт](http://www.schemers.org/Documents/Standards/R5RS/HTML/)
- [Wikibook за Scheme](https://en.wikibooks.org/wiki/Scheme_Programming)

### Haskell

- [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters)
- [Haskell 98 стандарт](https://www.haskell.org/onlinereport/)
- [Wikibook за Haskell](https://en.wikibooks.org/wiki/Haskell)

### Общи

Книги, разглеждащи общата теоретична информатика, включително аспекти на функционалното програмиране.

- [Understanding Computation](http://computationbook.com/)
- [New Turing Omnibus](https://www.amazon.com/New-Turing-Omnibus-Sixty-Six-Excursions/dp/0805071660)
