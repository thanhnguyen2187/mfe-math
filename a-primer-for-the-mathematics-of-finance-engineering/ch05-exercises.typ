= 05 Exercises

#underline[Exercise 1]

Let $f: bb(R) -> bb(R)$ be an odd function.

#enum(numbering: "i)")[
  Show that
  - $x f(x)$ is an even function
  - $x^2 f(x)$ is an odd function
][
  Show that
  - The function $g_1: bb(R) -> bb(R)$ given by $g_1(x) = f(x^2)$ is an
    even function
  - The function $g_2: bb(R) -> bb(R)$ given by $g_2(x) = f(x^3)$ is an odd
    function
][
  Let $h: bb(R) -> bb(R)$ be defined as $h(x) = x^i f(x^j)$, where $i$ and $j$
  are positive integers. When is $h(x)$ an odd function?
]

#underline[Answer]

$f(x)$ is an odd function, which means:

$
  f(x) &= -f(-x) \
  f(-x) &= -f(x)
$

#enum(numbering: "i)")[
  Let $f_1: bb(R) -> bb(R)$ be defined as $f_1(x) = x f(x)$.

  $
    f_1(-x) &= -x f(-x) \
            &= x f(x) \
            &= f_1(x)
  $

  Which means $f_1(x)$ is an even function.

  Let $f_2: bb(R) -> bb(R)$ be defined as $f_2(x) = x^2 f(x)$.

  $
    f_2(-x) &= (-x)^2 f(-x) \
            &= x^2 f(-x) \
            &= -x^2 f(x) \
            &= -f_2(x)
  $

  Which means $f_2(x)$ is an odd function.
][
  $
    g_1(-x) &= f((-x)^2) \
            &= f(x^2) \
            &= g_1(x)
  $

  Which means $g_1(x)$ is an even function.

  $
    g_2(-x) &= f((-x)^3) \
            &= f(-x^3) \
            &= -f(x^3) \
            &= -g_2(x) \
  $

  Which means $g_2(x)$ is an odd function.
][
  $
    h(x)  &= x^i f(x^j) \
    h(-x) &= (-x)^i f((-x)^j) \
          &= (-1)^i x^i f((-x)^j) \
          &= (-1)^i x^i f((-1)^j x^j) \
          &= (-1)^i (-1)^j x^i f(x^j) \
          &= (-1)^(i + j) x^i f(x^j) \
          &= (-1)^(i + j) h(x) \
  $

  Because

  - $(-1)^(i + j) = -1$ when $i + j$ is odd, and 
  - $(-1)^(i + j) = 1$ when $i + j$ is even

  Then

  - $h(x) = -h(x)$ or $h(x)$ is an odd function, when $i + j$ is odd, and
  - $h(x) = h(x)$ or $h(x)$ is an even function, when $i + j$ is even
]

#underline[Exercise 2]

Let

- $S(n, 2) = sum_(k = 1)^n k^2$ and
- $S(n, 3) = sum_(k = 1)^n k^3$

#enum(numbering: "i)")[
  Let $T(n, 2, x) = sum_(k = 1)^n k^2 x^k$.

  Use formula 

  $
    T(n, j + 1, x) = x d / (d x) (T(n, j, x)) quad forall j >= 0
  $

  for $j = 1$, i.e.,

  $
    T(n, 2, x) = x d/(d x) (T(n, 1, x))
  $

  And formula 

  $
    T(n, 1, x) = (x - (n + 1) x^(n + 1) + n x^(n + 2)) / (1 - x)^2
  $

  for $T(n, 1, x)$, to show that

  $
    T(n, 2, x) =
      (
        x + x^2
        - (n + 1)^2 x^(n + 1)
        + (2 n^2 + 2 n - 1) x^(n + 2)
        - n^2 x^(n + 3)
      ) / ( (1 - x) ^ 3 )
  $
][
  Show that
  - The function $g_1: bb(R) -> bb(R)$ given by $g_1(x) = f(x^2)$ is an
    even function
  - The function $g_2: bb(R) -> bb(R)$ given by $g_2(x) = f(x^3)$ is an odd
    function
][
  Let $h: bb(R) -> bb(R)$ be defined as $h(x) = x^i f(x^j)$, where $i$ and $j$
  are positive integers. When is $h(x)$ an odd function?
]

#underline[Answer]

