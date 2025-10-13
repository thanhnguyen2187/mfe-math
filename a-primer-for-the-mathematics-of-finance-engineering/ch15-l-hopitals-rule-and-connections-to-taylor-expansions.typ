= 1.5 L'Hopital's rule and connections to Taylor expansions

L'Hopital's rule is a method to compute limits when direct computation would
give an undefined result of form $0/0$. Informally

- If $lim_(x->x_0) f(x) = 0$, and $lim_(x->x_0) g(x) = 0$,
- then $lim_(x->x_0) f(x)/g(x) = lim_(x->x_0) (f'(x))/(g'(x))$.

Formally, the rule can be stated as follows:

== Theorem 1.8. (L'Hopital's Rule.)

Let $x_0$ be a real number; allow $x_0 = oo$ and $x_0 = -oo$ as well. Let $f(x)$
and $g(x)$ be two differentiable functions.

(i) Assume that

- $lim_(x->x_0) f(x) = 0$ and
- $lim_(x->x_0) g(x) = 0$.

If

- $lim_(x->x_0) (f'(x))/(g'(x))$ exists, and if
- there exists an interval $(a, b)$ around $x_0$ such that $g'(x) != 0$ for all
  $x in (a, b) \\ 0$,
- then the limit $lim_(x->x_0) f(x)/g(x)$ also exists and

$
  lim_(x->x_0) f(x)/g(x) = lim_(x->x_0) (f'(x))/(g'(x))
$

(ii) Assume that

- $lim_(x->x_0) f(x)$ is either $-oo$ or $oo$, and that
- $lim_(x->x_0) g(x)$ is either $-oo$ or $oo$.

If

- the limit $lim_(x->x_0)$ exists, and if
- there exists an interval $(a, b)$ around $x_0$ such that $g'(x) != 0 forall x
  in (a, b) \\ 0$
- then the limit $lim_(x->x_0) f(x)/g(x)$ also exists, and

$
  lim_(x->x_0) f(x)/g(x) = lim_(x->x_0) (f'(x))/(g'(x))
$
