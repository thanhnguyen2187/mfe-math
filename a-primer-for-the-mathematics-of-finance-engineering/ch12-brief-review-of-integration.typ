= 1.2 Brief review of integration

Let $f: bb(R) -> bb(R)$ be an integrable function. Recall that $F(x)$ is the
antiderivative of $f(x)$ if and only if $F'(x) = f(x)$, i.e.,

$
  F(x) = integral f(x) d x quad <=> quad F'(x) = f(x)
$

== Theorem 1.4. (Fundamental Theorem of Calculus.)

Let $f(x)$ be a continuous function on the interval $[a, b]$, and let $F(x)$ be
the antiderivative of $f(x)$. Then

$
  integral_a^b f(x) d x = F(x)|_a^b = F(b) - F(a)
$

== Theorem 1.5. (Integration by parts.)

Let $f(x)$ and $g(x)$ be continuous functions. Then

$
  integral f(x)g(x) d x = F(x) g(x) - integral F(x)g'(x)d x
$

Where $F(x) = integral f(x) d x$ is the antiderivative of $f(x)$. For definite
integrals,

$
  integral_a^b f(x)g(x) d x = F(b)g(b) - F(a)g(a) - integral_a^b F(x)g'(x)d x
$

== Theorem 1.6. (Integration by substitution.)

Let $f(x)$ be an integrable function. Assume that $g(u)$ is an invertible and
continuously differentiable function. The substitution $x = g(u)$ changes the
integration variable from $x$ to $u$ as follows:

$
  integral f(x) d x = integral f(g(u))g'(u) d u
$

For definite integrals,

$
  integral_a^b f(x) d x = integral_(g^(-1)(a))^(g^(-1)(b)) f(g(u))g'(u) d u
$

_Examples_:

$
  integral ln(1 + x)d x = 
$

