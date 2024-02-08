(define (square x) 
  (* x x))

(define (square-sum x y)
  (+ (square x) (square y)))
  
(define (largest-square-sum a b c)
  (cond ((and (< a b) (< a c)) (square-sum b c))
        ((and (< b a) (< b c)) (square-sum a c))
        (else (square-sum a c))))
