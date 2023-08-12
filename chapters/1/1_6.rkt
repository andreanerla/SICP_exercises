#lang racket/base

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)
    )
)

(define (square x) (* x x))

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001)
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)

;(define (sqrt-iter guess x) the bad example used by Alyssa P. Hacker
;    (new-if (good-enough? guess x)
;    guess (sqrt-iter (improve guess x) x)
;    )
;)

(define (sqrt-iter guess x) 
(if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(display(sqrt 2))

"
Since Scheme uses the applicative order substitution model 
all the arguments of the functions gets evaluated before the function gets applied. 
This results in an infinite loop in the new-if because sqrt-iter is called both inside it and outside of it.
This doesn't happen with the standard if since it is a special form
infos: https://stackoverflow.com/questions/1171252/whats-the-explanation-for-exercise-1-6-in-sicp
"