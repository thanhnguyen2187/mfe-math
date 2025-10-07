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
  integral ln(1 + x)d x
    &= integral ln(1 + x) thin 1 thin d x \
$

Apply the Integral by parts formula:

$
  integral f(x) g(x) = F(x) g(x) - integral F(x) g'(x) d x \
$

With 

$
  f(x)  &= 1 \
  F(x)  &= x \
  g(x)  &= ln(1 + x) \
  g'(x) &= 1/(1 + x) \
$

$
  integral ln(1 + x)d x
    &= x ln(1 + x) - integral x/(1 + x) d x \
    &= x ln(1 + x) - integral 1 - 1/(1 + x) d x \
    &= x ln(1 + x) - integral d x + integral 1/(1 + x) d x \
    &= x ln(1 + x) - x + ln(1 + x) + C \
    &= (1 + x) ln(1 + x) - x + C \
$

---

$
  integral_1^3 x e^x d x
$

Apply Integration by parts formula:

$
  integral_a^b f(x)g(x)d x = F(x)g(x)|_a^b - integral_a^b F(x)g'(x)d x
$

With

$
  a &= 1 \
  b &= 3 \
  f(x) &= e^x \
  g(x) &= x \
  F(x) &= e^x \
  g'(x) &= 1 \
$

We have

$
  F(x)g(x)|_a^b &= x e^x |_1^3 \
    &= 3 e^3 - e \
  integral_a^b F(x)g'(x)d x &= integral_1^3 e^x d x \
    &= e^x |_1^3 \
    &= e^3 - e \
$

$
  integral_1^3 x e^x d x = (3e^3 - e) - (e^3 - e) = 2e^3
$

---

$
  integral x^2 ln(x) d x
$

Apply Integration by parts formula:

$
  integral f(x)g(x)d x = F(x)g(x) - integral F(x)g'(x)d x
$

With

$
  f(x)  &= x^2 \
  g(x)  &= ln(x) \
  F(x)  &= x^3 / 3 \
  g'(x) &= 1/x \
  \
  F(x)g(x) &= x^3/3 dot ln(x) \
    &= (x^3 ln(x))/3 \
  integral F(x)g'(x)d x &= integral x^3/3 dot 1/x dot d x \
    &= 1/3 integral x^2 d x \
    &= 1/9 x^3 + C \
$

$
  integral x^2 ln(x) d x
    &= (x^3 ln(x))/3 - 1/9 x^3 - C \
    &= x^3/3 (ln(x) - 1/3) - C \
$

---

$
  integral e^(sqrt(x))/sqrt(x) d x
$

Apply integration by substitution formula:

$
  integral f(x) d x = integral f(g(u)) g'(u) d u
$

With

$
  u &= sqrt(x) \
  d u &= (sqrt(x))' d x = (d x)/sqrt(x) \
  integral e^(sqrt(x))/sqrt(x) d x &= integral e^u d u = e^u + C = e^(sqrt(x)) + C
$

---

$
  integral_(-1)^0 x^2(x^3 - 1)^4 d x
$

Let

$
  u = x^3 - 1
  d u = 3x^2 d x
$

Then with

$
  x = -1 &quad u = -2 \
  x = 0 &quad u = -1 \
$

$
  integral_(-1)^0 x^2(x^3 - 1)^4 d x
    &= 1/3 integral_(-1)^0 (x^3 - 1)^4 3x^2 d x \
    &= 1/3 integral_(-2)^(-1) u^4 d u \
    &= 1/3 lr(u^5 / 5 mid(|))_(-2)^(-1) \
    &= 1/15 lr(u^5 mid(|))_(-2)^(-1) \
    &= 1/15 ((-1)^5 - (-2)^5) \
    &= 31/15 \
$

---

$
  integral (e^x + e^(-x))/(e^x - e^(-x)) d x
$

Let

$
  u   &= e^x - e^(-x) \
  d u &= (e^x - e^(-x))' d x = (e^x + e^(-x)) d x \
$

$
  integral (e^x + e^(-x))/(e^x - e^(-x)) d x
    &= integral 1 / u d u \
    &= ln(u) + C \
    &= ln(e^x - e^(-x)) + C \
$
