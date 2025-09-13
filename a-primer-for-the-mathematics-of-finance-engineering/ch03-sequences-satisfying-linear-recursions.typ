= 03 Sequences satsifying linear recursions

A sequence $(x_n)_(n >= 0)$ satisfies a linear recursion of order $k$ if and
only if there exist constants \ $a_i, i = 0 : k$, with $a_k != 0$, such that:

$
  sum_(i = 0)^(k) a_i x_(n + i) = 0, forall n >= 0
$

Intuition: $k$ is like _how many past element would a new element depend on_.

Example 1: geometric growth

#block(inset: (left: 1em))[
  Sequence: $1, 2, 4, 8, 16, 32, ...$

  Formula: $x_(n+1) = 2x_n$

  Parameters: $k = 1: a_1 = 2$
]

Example 2: Fibonacci

#block(inset: (left: 1em))[
  Sequence: $0, 1, 1, 2, 3, 5, 8, 13, ...$

  Formula: $x_(n+2) = x_(n + 1) + x_n$

  Parameters: $k = 1: a_1 = 1, a_2 = 1$
]

The recursion is called a linear recursion because of the following linearity
properties:

1. If the sequence $(x_n)_(n >= 0)$ satisfies the linear recursion, then the
   sequence $(z_n)_(n >= 0)$ given by

   $
     z_n = C x_n, forall n >= 0
   $

   also satisfies the linear recursion.

2. If the sequences $(x_n)_(n >= 0)$ and $(y_n)_(n >= 0)$ satisfy the linear
   recursion, then the sequence $(z_n)_(n >= 0)$ given by

   $
     z_n = x_n + y_n, forall n >= 0
   $

   also satisfies the linear recursion.

If the first $k$ elements of the sequence, i.e., $x_0, x_1, ..., x_(k - 1)$, are
specified, then all entries in the sequence are uniquely determined by the
recursion formula: since $a_k != 0$, we can solve linear recursion formula, we
can solve for $x_(n + k)$

$
  x_(n + k) = -1/a_k sum_(i=0)^(k-1) a_i x_(n + i) quad forall n >= 0
$

Using Fibonacci as an example, with $x_0 = 0$, and $x_1 = 1$, we then find out:

- $x_2 = x_0 + x_1 = 0 + 1 = 1$
- $x_3 = x_1 + x_2 = 1 + 1 = 2$
- $x_4 = x_2 + x_3 = 1 + 2 = 3$
- $x_5 = x_3 + x_4 = 2 + 3 = 5$
- ...

The characteristic polynomial $P(z)$ corresponding to the linear recursion is
defined as:

$
  P(z) = sum_(i=0)^k a_i z^i
$

Note that P(z) is a polynomial of degree $k$. Recall that every polynomial of
degree $k$ with real coefficients has extractly $k$ roots (which could be
complex numbers), when counted with their multiplicities.

More precisely, if $P(z)$ has

- $p$ different roots $lambda_j, j = 1 : p$, with 
- $p <= k$, and if
- $m(lambda_j)$ denotes the multiplicity of the root $lambda_j$

Then $sum_(j=1)^(p) m(lambda_j) = k$.

Let

- $(x_n)_n$ be a sequence satisfying the linear recursion with
- $P(z) = sum_(i=0)^k a_i z^i$ be the associated characteristic polynomial

The general form of the sequence $(x_n)_(n>=0)$ satisfying the linear recursion
is:

$
  x_n = sum_(j=1)^p (sum_(i=0)^(m(lambda_j -1)) C_(i,j) n^i) lambda_j^n
  quad forall n >= 0
$

Example question: find the general formula for the terms of the Fibonacci
sequence.

Answer:

- The linear recursion formula of the Fibonacci sequence:

$
  x_(n+2)                   &= x_(n + 1) + x_n \
  x_(n+2) - x_(n + 1) - x_n &= 0
$

- The characteristic polynomial $P(z)$:

$
  z^2 - z - 1 = 0
$

- The roots of $P(z)$:

$
  lambda_1 = (1 + sqrt(5)) / 2 quad
  lambda_2 = (1 - sqrt(5)) / 2
$

- The general form of $x_n$:

$
  x_n = C_1 lambda_1^n + C_2 lambda_2^n
$

- Suppose the sequence is $0, 1, 1, 2, ...$, we pick $x_n = 1$ and $x_(n + 1) =
  1$

$
  C_1 + C_2 &= 1 \
  C_1 lambda_1 + C_2 lambda_2 &= 1
$

- The solution to the above is:

$
  C_1 &= (sqrt(5) + 1) / (2 sqrt(5)) \
  C_2 &= (sqrt(5) - 1) / (2 sqrt(5))
$

- Replace it back to the general form, we have:

$
  x_n &= (sqrt(5) + 1) / (2 sqrt(5)) ((1 + sqrt(5)) / 2)^n
      + (sqrt(5) - 1) ((1 - sqrt(5)) / 2)^n \
      &= 1/sqrt(5) ((1 + sqrt(5)) / 2) ^ (n + 1)
      - 1/sqrt(5) ((1 - sqrt(5)) / 2) ^ (n + 1)
      quad forall n >= 0
$

