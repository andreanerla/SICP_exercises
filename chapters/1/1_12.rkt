#lang racket/base

;Write a procedure that computes elements of
;Pascal’s triangle by means of a recursive process.

;    1
;   1 1
;  1 2 1
; 1 3 3 1
;1 4 6 4 1

;This algorithm returns the Pascal Triangle's number based on row and column (index of both starting at 0)

;If col or row is 0 we return 1. That should be the base case.
;

(define (pascal_triangle row col) 
    (cond 
        ((and (= row 0) (= col 0)) 0)
        (else 
            (display "row \n")
            (display row)

            (display "col \n")
            (display col)

            (cond (> row 0) (- row 1))
            (cond (> col 0) (- col 1))

            (+ 
            (pascal_triangle (- row 1) (- col 1)) 
            (pascal_triangle (- row 1) (col))
            )
        )
    )   
)

(display (pascal_triangle 4 2))








