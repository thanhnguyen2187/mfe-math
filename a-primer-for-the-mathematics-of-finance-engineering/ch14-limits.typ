= 1.4 Limits

== Definition 1.1.

Let $g: bb(R) -> bb(R)$. The limit of $g(x)$ as $x -> x_0$ exists and is finite
and equal to $l$ if and only if for any $epsilon > 0$ there exists $delta > 0$
such that $abs(g(x) - l) < epsilon$ for all $x in (x_0 - delta, x_0 + delta)$,
i.e.,

$
  lim_(x->x_0) g(x) = l <=> forall epsilon > 0 thick exists thick delta > 0
  "such that" abs(g(x) - l) < epsilon, forall |x - x_0| < delta
$

Similarly

$
  lim_(x->x_0) g(x) = oo <=> forall C > 0 thick exists thick delta > 0
  "such that" g(x) > C, forall |x - x_0| < delta \
  \
  lim_(x->x_0) g(x) = -oo <=> forall C < 0 thick exists thick delta > 0
  "such that" g(x) < C, forall |x - x_0| < delta \
$

Limits are used, for example, to define the derivative of a function.

In this book, we will rarely need to use Definition 1.1 to compute the limit of
a function. We note that many limits can be computed by using the fact that, at
infinity, exponential functions are much bigger than absolute values of
polynomials, which are inturn much bigger than logarithms.

== Theorem 1.7.

If $P(x)$ and $Q(x)$ are polynomials and $c > 1$ is a fixed constant, then

$
  lim_(x->oo) P(x)/c^x = 0, forall c > 1 \
  lim_(x->oo) ln(Q(x))/c^x = 0 \
$

_Examples_:

$
  lim_(x->oo) x^5 e^(-x) = lim_(x->oo) x^5/e^x = 0 \
  lim_(x->oo) ln(x)/x^3 = 0 \
$

== Lemma 1.5.

Let $c > 0$ be a positive constant, then

$
  lim_(x->oo) x^(1/x) = 1 \
  lim_(x->oo) c^(1/x) = 1 \
  lim_(x arrow.br 0) c^(1/x) = 1 \
$

Where the notation $x arrow.br 0$ means that x goes to $0$ while always being
positive, i.e., $x -> 0$ with $x > 0$.

== Lemma 1.6

If $k$ is a positive integer number, and if $c > 0$ is a positive fixed
constant, then

$
  lim_(k->oo) k^(1/k) = 1 \
  lim_(k->oo) c^(1/k) = 1 \
  lim_(k->oo) c^k/k! = 1 \
$

Where $k! = 1 dot 2 dot ... dot k$.

We conclude by recalling that

$
  lim_(x->oo) (1 + 1/x)^x = e
$
