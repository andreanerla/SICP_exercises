#lang racket/base
;Exercise 2.2: Consider the problem of representing line
;segments in a plane. Each segment is represented as a pair
;of points: a starting point and an ending point. Define a
;constructor make-segment and selectors start-segment and
;end-segment that define the representation of segments in
;terms of points. Furthermore, a point can be represented
;as a pair of numbers: the x coordinate and the y coordinate.
;Accordingly, specify a constructor make-point and
;selectors x-point and y-point that define this representation.
;Finally, using your selectors and constructors, define a
;procedure midpoint-segment that takes a line segment as
;argument and returns its midpoint (the point whose coordinates
;are the average of the coordinates of the endpoints).
;To try your procedures, you’ll need a way to print points:

;constructor
(define (make-point x-point y-point) (cons x-point y-point))

;selectors
(define (x-point point) (car point))
(define (y-point point) (cdr point))

;constructor
(define (make-segment start-segment end-segment) (cons start-segment end-segment))

;selectors
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (midpoint-segment segment)
    (let*( 
        (val-start-segment (start-segment segment))
        (val-end-segment (end-segment segment))
        (x-midpoint (/ (+ (x-point val-start-segment)  (x-point val-end-segment)) 2))
        (y-midpoint (/ (+ (y-point val-start-segment)  (y-point val-end-segment)) 2))
        )
    (make-point x-midpoint y-midpoint)
    )
)



;test printing 
(define (print-point point)
    (newline)
    (display "(")
    (display (x-point point))
    (display ",")
    (display (y-point point))
    (display ")"))

(define (p) (make-point 1 2) )

print-point(p)

(define (example-segment) 
    (make-segment (make-point 0 2356) (make-point -12 -2340))
) 

;test midpoint function
(define (example-midpoint)
    (midpoint-segment (example-segment))
)


print-point(example-midpoint)