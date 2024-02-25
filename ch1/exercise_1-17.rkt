#lang sicp

;; mult-lin does not terminate if the first argument is positive
;; and the second argument is negative.
;; Our fast-mult won't implement checks to avoid this either.
(define (mult a b)
  (if (= b 0)
      0
      (+ a (mult a (- b 1)))))

;; linear recursive implementation
(define (fast-mult a b)
  (define (double x) (+ x x))
  (define (half x) (/ x 2))
  (cond ((= b 0) 0)
        ((even? b) (fast-mult (double a) (half b)))
        (else (+ a (fast-mult a (- b 1))))))

;; iterative implementation
(define (fast-mult-iter a b)
  (define (double x) (+ x x))
  (define (half x) (/ x 2))
  (define (loop a b sum)
    (cond ((= b 0) sum)
          ((even? b) (loop (double a) (half b) sum))
          (else (loop a (- b 1) (+ sum a)))))
  (loop a b 0))
