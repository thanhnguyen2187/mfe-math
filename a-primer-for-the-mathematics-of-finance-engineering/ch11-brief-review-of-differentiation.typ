= 1.1 Brief review of differentiation

The function $f: R -> R$ is differentiable at the point $x in bb(R)$ if the
limit

$
  lim_(h->0) (f(x+h) - f(x)) / h
$

exists, in which case the derivative $f'(x)$ is defined as

$
  f'(x) = lim_(h->0) (f(x+h) - f(x))/h
$

The function $f(x)$ is called differentiable if it is differentiable at all
points $x$.

== Theorem 1.1. (Product Rule.)

The product $f(x)g(x)$ of two differentiable functions $f(x)$ and $g(x)$ is
differentiable, and

$
  (f(x)g(x))' = f'(x)g(x) + f(x)g'(x)
$

== Theorem 1.2. (Quotient Rule.)

The quotient $f(x)/g(x)$ of two differentiable functions $f(x)$ and $g(x)$ is
differentiable at every point $x$ where the function $f(x)/g(x)$ is well
defined, and

$
  (f(x)/g(x))' = (f'(x)g(x) - f(x)g'(x))/(g(x))^2
$

== Theorem 1.3. (Chain Rule.)

The composite function $(g compose f) = g(f(x))$ of two differentiable functions
$f(x)$ and $g(x)$ is differentiable at every point $x$ where $g(f(x))$ is well
defined and

$
  (g(f(x)))' = g'(f(x)) f'(x)
$

_Example_: Chain Rule is often used for power functions, exponential functions,
and logarithmic functions.

$
  d / (d x) ((f(x))^n) = n(f(x))^(n-1) f'(x) \
  d / (d x) (e^(f(x))) = e^(f(x)) f'(x) \
  d / (d x) (ln(f(x))) = (f'(x))/(ln(f(x)))  \
$

== Lemma 1.1.

Let $f: [a, b] -> [c, d]$ be a differentiable function, and assume that $f(x)$
has an inverse function denoted by $f^(-1)(x)$ with $f^(-1): [c, d] -> [a, b]$.
The function $f^(-1)(x)$ is differentiable at every point $x in [c, d]$ where
$f'(f^(-1)(x)) != 0$ and

$
  (f^(-1)(x))' = 1/(f'(f^(-1)(x))) \
  (1/f(x))' = 1/(f'(f^(-1)(x))) \
$

Reuse the Chain Rule

$
  (g(f(z)))' = g'(f(z)) f'(z)
$

With $g = f^(-1)$, we have

$
  (f^(-1)(f(z)))' = (f^(-1))'(f(z)) f'(z) \
  z' = (f^(-1))'(f(z)) f'(z) \
  1 = (f^(-1))'(f(z)) f'(z) \
$

Let $z = f^(-1)(x)$, then $f(z) = f(f^(-1)(x)) = x$ and

$
  1 &= (f^(-1))'(x) f'(f^(-1)(x)) \
  1 / (f'(f^(-1)(x))) &= (f^(-1))'(x) \
                      &= (f^(-1)(x))' \
$

_Examples_:

$
  d/(d x) (x e^(3x^2 - 1)) &= x' e^(3x^2 - 1) + x (e^(3x^2 - 1))' \
    &= e^(3x^2 - 1) + x (3x^2 - 1)' (e^(3x^2 - 1)) \
    &= e^(3x^2 - 1) + 6x^2 (e^(3x^2 - 1)) \
    &= (1 + 6x^2) (e^(3x^2 - 1)) \
$

$
  d/(d x) ((sqrt(3x^2 - 1)) / (sqrt(3x^2 - 1) + 4))
    &= d/(d x) ((sqrt(3x^2 - 1) + 4 - 4) / (sqrt(3x^2 - 1) + 4)) \
    &= d/(d x) (1 - 4/(sqrt(3x^2 - 1) + 4)) \
    &= (4/(sqrt(3x^2 - 1) + 4))' \
$

---

$
  d/(d x) ((sqrt(3x^2 - 1)) / (sqrt(3x^2 - 1) + 4))
    &= d/(d x) (1 - 4/(sqrt(3x^2 - 1) + 4)) \
$

Apply Quotient Rule:

$
  d/(d x) (f(x) / g(x))
    &= (f'(x)g(x) - f(x)g'(x)) / (g(x))^2 \
$

With $f(x) = -4$, $g(x) = sqrt(3x^2 - 1) + 4$:

$
  f'(x) &= 0 \
  g'(x) &= (sqrt(3x^2 - 1))' \
    &= 1/2 dot (3x^2 - 1)^(-1/2) dot 6x \
    &= (3x) / sqrt(3x^2 - 1) \
  (g(x))^2 &= (sqrt(3x^2 - 1) + 4)^2 \
$

$
  (f'(x)g(x) - f(x)g'(x)) / (g(x))^2
    &= (0 dot (sqrt(3x^2 - 1) + 4) + 4(3x div sqrt(3x^2 - 1))) / ((sqrt(3x^2 - 1) + 4)^2) \
    &= ((12x div sqrt(3x^2 - 1))) / ((sqrt(3x^2 - 1) + 4)^2) \
    &= (12x) / (sqrt(3x^2 - 1) (sqrt(3x^2 - 1) + 4)^2) \
$

---

To calculate:

$
  d/(d x) ((e^(x^2) + 1) / (x - 1))
$

Apply Quotient Rule:

$
  d/(d x) (f(x) / g(x))
    &= (f'(x)g(x) - f(x)g'(x)) / (g(x))^2 \
$

With

$
  f(x)  &= e^(x^2) + 1 \
  f'(x) &= (x^2)' e^(x^2) \
        &= 2x e^(x^2) \
  g(x)  &= x - 1 \
  g'(x) &= 1 \
  f'(x)g(x) - f(x)g'(x) &= 2x e^(x^2) (x - 1) - (e^(x^2) + 1) \
  (g(x))^2 &= (x - 1)^2 \
$

We have

$
  (f'(x)g(x) - f(x)g'(x)) / (g(x))^2
    &= (2x e^(x^2) (x - 1) - (e^(x^2) + 1)) / (x - 1)^2 \
$

---

$
  d/(d x) (ln (x / (2x^2 + 1)))
    &= d/(d x) (ln(x) - ln(2x^2 + 1)) \
    &= ln(x)' - ln(2x^2 + 1)' \
    &= 1/x - (2x^2 + 1)' / (2x^2 + 1) \
    &= 1/x - (4x) / (2x^2 + 1) \
    &= (2x^2 + 1)/(x(2x^2 + 1)) - (4x^2)/(x(2x^2 + 1)) \
    &= (-2x^2 + 1)/(x(2x^2 + 1)) \
$

