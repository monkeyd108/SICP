#lang sicp

;; Implementation of Newtown's method.
(define (sqrt x)
  (define (sqrt-iter guess)
    (define next-guess (improve guess))
    (if (good-enough-p guess next-guess)
      next-guess
      (sqrt-iter next-guess)))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))

  (define (good-enough-p guess next-guess)
    ;; Strategy based on rate of change of our guesses relative to the size of 
    ;; our guess.
    (< (abs (/ (- next-guess guess) guess)) 0.00000001))

  (sqrt-iter 1))
