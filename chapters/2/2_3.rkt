; Exercise 2.3: Implement a representation for rectangles in
; plane. (Hint: You may want to make use of Exercise 2.2.) In
; terms of your constructors and selectors, create procedures
; that compute the perimeter and the area of a given rectangle.
; Now implement a different representation for rectangles.
; Can you design your system with suitable abstraction
; barriers, so that the same perimeter and area procedures
; will work using either representation?


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

;constructor
(define (make-rectangle-dimensions rectangle-length rectangle-width) (cons rectangle-length rectangle-width))

;selectors
(define (rectangle-length segment) (car segment))
(define (rectangle-width segment) (cdr segment))

(define (rectangle-area rectangle-dimensions)
    (let (
        (val-rectangle-length (rectangle-length rectangle-dimensions))
        (val-rectangle-width (rectangle-width rectangle-dimensions))
        )
    (* val-rectangle-length val-rectangle-width)  
    )
)
