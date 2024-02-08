(define (cube-root-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough-p guess new-guess)
      guess
      (cube-root-iter new-guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))
  
(define (good-enough-p guess new-guess)
  (< (abs (/ (- guess new-guess) guess)) 0.00001))
