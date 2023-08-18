#lang racket/base

;Exercise 1.10: e following procedure computes a mathematical
;function called Ackermann’s function.
;(define (A x y)
;(cond ((= y 0) 0)
;((= x 0) (* 2 y))
;((= y 1) 2)
;(else (A (- x 1) (A x (- y 1))))))
;What are the values of the following expressions?
;(A 1 10)
;(A 2 4)
;(A 3 3)

;Exercise 1.10: e following procedure computes a mathematical
;function called Ackermann’s function.
(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A (- x 1) (A x (- y 1))))))

;What are the values of the following expressions?
(A 1 10)
(A 2 4)
(A 3 3)


X = 1
Y = 10

;iters 

;--
;The expansion proceeds

(A 0 (A 1 9))
(A 0 (A 0 (A 1 8)))
(A 0 (A 0 (A 0 (A 1 7))))
;...
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))

;-- 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))

;-- 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))

;-- 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))

;-- 
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))

;-- 
(A 0 (A 0 (A 0 (A 0 (A 0 32)))))

;-- 
(A 0 (A 0 (A 0 (A 0 64))))

;-- 
(A 0 (A 0 (A 0 128)))

;-- 
(A 0 (A 0 256))

;-- 
(A 0 512)

;-- 
1024



(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A 0 (A 1 (9))))))

;--

(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A 0 (A 0 (A 1 (8)))))))

;--
;--



(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A (- x 1) (A x (- y 1))))))

X = 2
Y = 4


;iters 

;--
;The expansion proceeds

(A (- x 1) (A x (3)))

(A (- x 1) (A 2 3))

(A (- x 1) (A 1 (A 2 2)))

(A (- x 1) (A 1 (A 1 (A 2 1))))

(A (- x 1) (A 1 (A 1 2)))

(A (- x 1) (A 1 (A 0 (A 1 1))))

(A (- x 1) (A 1 (A 0 2)))

(A (- x 1) (A 1 4))

(A (- x 1) (A 0 (A 1 3)))

(A (- x 1) (A 0 (A 0 (A 1 2))))

(A (- x 1) (A 0 (A 0 (A 0 (A 1 1)))))

(A (- x 1) (A 0 (A 0 (A 0 2))))

(A (- x 1) (A 0 (A 0 4)))

(A (- x 1) (A 0 8))

(A (- 2 1) 16)

(A 1 16) 

; (A 1 16) == 2^16




;Consider the following procedures, where A is the procedure
;defined above:
;(define (f n) (A 0 n))
;(define (g n) (A 1 n))
;(define (h n) (A 2 n))
;(define (k n) (* 5 n n))
;Give concise mathematical definitions for the functions computed
;by the procedures f, g, and h for positive integer values
;of n. For example, (k n) computes 5n2.

;(define (f n) (A 0 n))
;(f n) -> n*2

;(define (g n) (A 1 n))
;(g n) -> n^2

;(define (h n) (A 2 n))
;(h n) -> ...

;(define (k n) (* 5 n n))
;(k n) -> ...
