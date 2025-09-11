#set math.equation(numbering: "1.")

= 02 Useful sums with interesting proofs

$ sum_(k=1)^n k = (n(n + 1))/2 $

$ sum_(k=1)^n k^2 = (n(n + 1)(2n + 1))/6 $

$ sum_(k=1)^n k^3 = ((n(n + 1))/2)^2 $

We can prove them using induction. For example, with the first equation:

- If $n = 1$, both sides are equal to $1$
- Assuming that the equation holds for $n$

$ sum_(k=1)^n k = (n(n + 1))/2 $ <eq-assumption> 

- Applying the equation to $n + 1$ means

$ sum_(k=1)^(n+1) k = ((n + 1)(n + 2))/2 $ 

- We can transform the right side:

$
  ((n + 1)(n + 2))/2 &= (n(n + 1) + 2(n + 1))/2 \
  &= (n(n + 1))/2 + (n + 1)
$ <transformation-right>

- The left side can also be transformed:

$
  sum_(k=1)^(n+1) k &= sum_(k=1)^n + (n + 1)
$ <transformation-left>

- Combining @transformation-right and @transformation-left, we see that it's the
  same as adding $n + 1$ to both sides of @eq-assumption:

$
  sum_(k=1)^n k + (n + 1) = (n(n + 1))/2 + (n + 1)
$

