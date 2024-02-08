```scheme
(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))
```

When performing addition between two numbers, flipping the sign of the second
number is the equivalent to changing the operation to subtraction. 

The procedure makes use of this property will conditionally change the operator
to subtraction if `b` is a negative number to flip its sign.
