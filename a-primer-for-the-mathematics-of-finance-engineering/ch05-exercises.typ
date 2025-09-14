#set math.equation(numbering: "1.")

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
  We have

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

  Which means $g_2(x)$ is an odd function. \
  \
  // doing some hack for page break
][
  Doing some transformation

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
  $ <e2-eq1>

  And formula 

  $
    T(n, 1, x) = (x - (n + 1) x^(n + 1) + n x^(n + 2)) / (1 - x)^2
  $ <e2-eq2>

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
  TBA
][
  TBA
]

#underline[Answer]

#enum(numbering: "i)")[
  Replacing @e2-eq2 into @e2-eq1, we have:

  $
    T(n, 2, x) &= x d / (d x) (x - (n + 1) x^(n + 1) + n x^(n + 2)) / (1 - x)^2 \
               &= (x^2 - (n + 1) x^(n + 2) + n x^(n + 3)) / (1 - x)^2 d / (d x) 
  $ <e2-eq3>

  Using the quotient rule

  $
    [u(x) / v(x)] d / (d x) = (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2
  $

  With

  $
    u(x)  &= (& x^2 - & (n + 1) x^(n + 2)         & + & n x^(n + 3)) \
    u'(x) &= (& 2x -  & (n + 1) (n + 2) x^(n + 1) & + & n (n + 3) x^(n + 2))
  $

  and

  $
    v(x)   &= (1 - x)^2 \
    v'(x)  &= 2 (-1) (1 - x) = -2 (1 - x) \
    v^2(x) &= (1 - x)^4
  $

  and

  $
    u'(x) v(x) &= ((2x -  (n + 1) (n + 2) x^(n + 1) + n (n + 3) x^(n + 2)) (1 - x)^2) \
    u(x) v'(x) &= (x^2 - (n + 1) x^(n + 2) + n x^(n + 3)) (-2 (1 - x))
               &= (x^2 - (n + 1) x^(n + 2) + n x^(n + 3)) (-2 (1 - x))
  $
]
