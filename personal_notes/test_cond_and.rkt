#lang racket/base

;equal
(display
    (cond 
        ((and (= 1 1) (= 2 2)) 0)
        (else 1)
    )
)

;not equal
(display
    (cond 
        ((and (= 1 2) (= 2 2)) 0)
        (else 1)
    )
)