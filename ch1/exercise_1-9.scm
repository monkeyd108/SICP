#lang sicp

;; Comment out one of the definitions to run the file

;; This process is linear-recurive
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

;; Evaluation of `(+ 4 5)` using linear-recurive implementation:
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

;; This process is iterative
(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))

;; Evaluation of `(+ 4 5)` using iterative implementation:
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
