;; What are the values of the following expressions?
(define (A x y)
  (cond ((= y 0) 0)
    ((= x 0) (* 2 y))
    ((= y 1) 2)
    (else (A (- x 1) (A x (- y 1))))))

(A 1 10)
;; (A 0 (A 1 9))
;; (A 0 (A 0 (A 8)))
;; ...
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
;; Because the formal argument x is 0 in every application of A,
;; every application will return (* 2 y).
;; Therefore, (A 1 10) will evaluate to 2^10 = 1024
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
;; ...
;; => 1024

(A 2 4)
;; (A 1 (A 2 3))
;; (A 1 (A 1 (A 1 2)))
;; (A 1 (A 1 (A 1 (A 1 1))))
;; (A 1 (A 1 (A 1 2)) 
;; (A 1 (A 1 (A 0 (A 1 1))))
;; (A 1 (A 1 (A 0 2)))
;; (A 1 (A 1 4))
;; (A 1 (A 0 (A 1 3)))
;; (A 1 (A 0 (A 0 (A 1 2))))
;; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
;; (A 1 (A 0 (A 0 (A 0 2))))
;; (A 1 (A 0 (A 0 (A 0 2))))
;; ...
;; (A 1 16)
;; Following the pattern above, (A 1 y) will evaluate to 2^y
;; => 65536

(A 3 3)
;; (A 2 (A 3 2)
;; (A 2 (A 2 (A 3 1)
;; (A 2 (A 2 2))
;; (A 2 (A 1 (A 2 1))
;; (A 2 (A 1 2)
;; (A 2 (A 0 (A 1 1)))
;; (A 2 (A 0 2))
;; (A 2 4)
;; same as last expression:
;; => 65536

;; Give concise mathematical definitions for the functions computed by the 
;; following procedures, given a positive integer value of n
(define (f n) (A 0 n))    ;; f(n) = 2^n
(define (g n) (A 1 n))    ;; g(n) = 2 * n
(define (h n) (A 2 n))    ;; h(n) = 2^(2^n)
(define (k n) (* 5 n n))  ;; k(n) = 5 * n^2 

