```scheme
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
```

Applicative-order evaluation means to always reduce (evaluate) when possible 
and expand (substitute) if necessary.
Normal-order evaluation means to expand until the leftmost operator can be
evaluated using only primitive operators, then evaluate.

Using application-order evaluation, the interpreter will immediatly try to 
evaluate the procedure `(p)` given the expression `(test 0 (p))`.
The procedure `p` is recursive without termination condition and will therefore
never finish evaluating.

Using normal-order application, substituion will be performed first:

```scheme
(if (= 0 0) 0 (p))
```

Since the predicate contains only primitive operators, the if-expression can 
now be evaluated using only primitive operators.
The interpreter will evaluate the expression to the value `0` using 
normal-order evaluation.
