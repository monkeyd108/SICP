#lang sicp

10 
;; => 10

(+ 5 3 4) 
;; => 12

(- 9 1) 
;; => 8

(/ 6 2) 
;; => 3

(+ (* 2 4) (- 4 6)) 
;; => 6

;; `define` is a special form which is only useful for its side-effect.
;; Scheme expressions without the need for a result value usually return the 
;; special value #<void>.
;; When an expression returns #<void>, the REPL does not print anything.

(define a 3) 
;; => #<void> 

(define b (+ a 1)) 
;; => #<void> 

(+ a b (* a b)) 
;; => 19

(= a b) 
;; => #f 

(if (and (> b a) (< b (* a b))) ;; predicate is true
b 
a) 
;; => 4

(cond ((= a 4) 6)
	  ((= b 4) (+ 6 7 a))
	  (else 25)) 
;; => 16
	  
(+ 2 (if (> b a) b a)) 
;; => 6

(* (cond ((> a b) a)
		((< a b) b)
		(else -1))
	(+ a 1)) 
;; => 16