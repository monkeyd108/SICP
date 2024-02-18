#lang sicp

;; The initial `good-enough?` test is not effective for finding the square 
;; roots of small numbers because the tolerated error is not relative to 
;; the magnitue of our square root. 
;; Example:
;; (sqrt 0.0001)
;; => 0.03230844

;; The initial `good-enough?` test is inadequate for very large numbers because
;; floating-point numbers become less precise with their magnitue.
;; If the closest representable numbers to our actual square-root have a
;; large enough error, the `good-enough?` test will never be satisfied.
;; The procedure never evaluates.
;; Example:
;; (sqrt 123456789123456789)

;; Solution:
;; We base the `good-enough` function on the relative change of our guess.
;; If our guess stop increasing significantly, it is good enough. 

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough-p guess new-guess)
      guess
      (sqrt-iter new-guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough-p guess new-guess)
  (< (abs (/ (- guess new-guess) guess)) 0.00001))

(define (square x)
  (* x x))
