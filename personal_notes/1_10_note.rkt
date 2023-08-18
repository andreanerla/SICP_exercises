
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

;--





