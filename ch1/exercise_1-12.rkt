#lang sicp

(define (pascal-triangle-elem r c)
  (if (or (= r c) (= c 1))
    1
    (+ (pascal-triangle-elem (- r 1) c)
       (pascal-triangle-elem (- r 1) (- c 1)))))
