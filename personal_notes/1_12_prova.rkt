(define (pascal_triangle row col) 
    (cond 
        ((and (= row 0) (= col 0)) 0)
        (else 
            (display "row \n")
            (display row)

            (display "col \n")
            (display col)

            (+ 
            (cond ((> row 0) (pascal_triangle (- row 1) (- col 1))) (else 0)) 
            (cond ((> col 0) (pascal_triangle (- row 1) (col))) (else 0))
            )
        )
    )   
)

(display (pascal_triangle 4 2))
