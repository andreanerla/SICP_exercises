#lang racket/base

;The good-enough? test used in computing
;square roots will not be very effective for finding the square
;roots of very small numbers. Also, in real computers, arithmetic
;operations are almost always performed with limited
;precision. This makes our test inadequate for very large
;numbers. Explain these statements, with examples showing
;how the test fails for small and large numbers. An alternative
;strategy for implementing good-enough? is to watch
;how guess changes from one iteration to the next and to
;stop when the change is a very small fraction of the guess.
;Design a square-root procedure that uses this kind of end
;test. Does this work better for small and large numbers?

;RES
;It won't be performant for small numbers because it will take more time (infinite time, possibly) for the difference between square guess and x to be less than 0.001
;Also initial guess as 1 works well just for numbers close to one.


(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(define (sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      (begin
        (print guess) ; print the current guess
        (newline)
        guess) ; return the current guess
      (begin
        (print (improve guess x)) ; print the improved guess
        (newline)
        (sqrt-iter (improve guess x) x)) ; recurse with the improved guess
    )  
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (new-good-enough? guess previous_guess)
    ;(< (abs (- (square guess) x)) 0.001)
    (< (abs (- guess previous_guess)) (/ previous_guess 100000))
)

(define (square x) (* x x))

(print (sqrt 10.0))
;(print(sqrt 0.001))
