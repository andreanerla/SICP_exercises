#lang racket/base

;recursive

(define (recursive_f n)
    (cond
        ((< n 3) n)
        (else (+ 
            (recursive_f(- n 1))  
            (* 2 (recursive_f (- n 2)))  
            (* 3 (recursive_f (- n 3)))
        )
    )
    )
)

;iterative

; the algo is (+ (- n 1) (* 2 (- n 2)) (* 3 (- n 3)))
; the algo is (+ a (* 2 b) (* 3 c))
; if n < 3, we return whatever n is. 
; if n = 3, we compute n with the algo with a = 2, b = 1, c = 0
; otherwise we compute n with the algo with a for loop from 3 to n assigning a, b, c  
; a = [algo]
; b = a 
; c = b

(define (iterative_f n)
    (f_iter n))

(define (algorithm f_n_min_1 f_n_min_2 f_n_min_3)
    (+ f_n_min_1 (* 2 f_n_min_2) (* 3 f_n_min_3))
)

(define (f_iter n )(
    cond
        ((< n 3) 
            n
        )
        ((= n 3) 
            (algorithm 2 1 0)
        )
        ((> n 3) 
            (+ (algorithm (algorithm 2 1 0) 2 1)
            (- n 1)
        )
    )
    )
)   

(display (iterative_f 1))

