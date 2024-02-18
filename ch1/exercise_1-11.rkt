#lang sicp

;; Recrursive definition
(define (f-rec n)
  (if (< n 3)
    n
    (+ (f-rec (- n 1)) 
       (* 2 (f-rec (- n 2))) 
       (* 3 (f-rec (- n 3))))))

;; Iterative definition
(define (f n)
  (define (f-iter a b c nth)
    (if (= nth n)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (+ nth 1))))
  (if (< n 3)
    n
    (f-iter 2 1 0 2)))
