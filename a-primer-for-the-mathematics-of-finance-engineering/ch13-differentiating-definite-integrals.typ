= 1.3 Differentiating definite integrals

A definite integral of the form $integral_a^b f(x)$ is a real number. However,
if a definite integral as functions as limits of integration, e.g.,

$
  integral_a(t)^b(t) f(x) d x
$

Or if the function to be integrated is a function of the integrating variable
and another variables, e.g.,

$
  integral_a^b f(x, t) d x
$

Then the result of the integration is a function (of the variable $t$ in both
cases above). If certain conditions are met, this function is differentiable.

== Lemma 1.2. 

Let $f: bb(R) -> bb(R)$ be a continuous function. Then,

$
  d/(d t) (integral_a(t)^b(t) f(x) d x) = f(b(t))b'(t) - f(a(t))a'(t)
$

Where $a(t)$ and $b(t)$ are differentiable functions.

== Lemma 1.3.

Let $f: bb(R) times bb(R) -> bb(R)$ be a continuous function such that the
partial derivative $(diff f)/(diff t)(x,t)$ exists and is continuous in both
variables $x$ and $t$. Then,

$
  d/(d t) (integral_a^b f(x, t) d x) = integral_a^b 
$

== Lemma 1.4.

Let $f(x, t)$ to be a continuous function such that the partial derivative
$(partial f)/(partial t)(x, t)$ exists and is continuous. Then,

$
  d/(d t) (integral_a(t)^b(t) f(x, t) d x)
    = integral_a(t)^b(t) (partial f)/(partial t) d x
    + f(b(t), t)b'(t)
    - f(a(t), t)a'(t)
$

Note that Lemma 1.2 and Lemma 1.3 are special cases of Lemma 1.4.

