```scheme
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause)))
```

Because scheme uses applicative-order evaluation, both conditional expressions
passed to the `new-if` procedure will be evaluated before being substituted 
into its body.

```scheme
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

```

The `new-if` predicate fails to terminate the recursion because both
conditional expressions are always evaluated.
The `sqrt-iter` procedure never terminates in her rewritten version.
