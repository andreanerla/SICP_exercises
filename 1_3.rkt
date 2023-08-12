;Define a procedure that takes three numbers
;as arguments and returns the sum of the squares of the two
;larger numbers.

(define (square x) (* x x))

(define (max a b) (if (> a b) a b))

(define (min a b) (if (> a b) b a))

(define (two_largest_nums_from_three a b c)
    (+ 
        (square 
            (max a b)
        )
        (square
            (max c (min a b))
        )
    )
)

(display (two_largest_nums_from_three 40 20 30))