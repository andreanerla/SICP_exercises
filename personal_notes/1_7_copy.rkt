#lang racket/base

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (begin
        (print guess) ; print the current guess
        (newline)
        guess) ; return the current guess
      (begin
        (print (improve guess x)) ; print the improved guess
        (newline)
        (sqrt-iter (improve guess x) x)))) ; recurse with the improved guess

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess next-guess)
  (< (abs (- guess next-guess)) (* guess 0.000000000000000000000000000001)))

(define (square x)
  (* x x))

print (sqrt 10)