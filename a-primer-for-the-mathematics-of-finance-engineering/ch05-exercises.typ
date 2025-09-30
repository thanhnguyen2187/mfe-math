// #set math.equation(numbering: "1.")

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
  $ // <e2-eq1>

  And formula 

  $
    T(n, 1, x) = (x - (n + 1) x^(n + 1) + n x^(n + 2)) / (1 - x)^2
  $ // <e2-eq2>

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
  Note that $S(n, 2) = T(n, 2, 1)$. Use l'Hopital's rule to evaluate $T(n, 2,
  1)$, and conclude that $S(n, 2) = (n(n + 1)(2n + 1))/6$
][
  Compute $T(n, 3, x) = sum_(k = 1)^n k^3 x^k$ using formula

  $
    T(n, j + 1, x) = x d / (d x) (T(n, j, x)) quad forall j >= 0
  $

  for $j = 2$, i.e,

  $
    T(n, 3, x) = x d/(d x) (T(n, 2, x))
  $
][
  Note that $S(n, 3) = T(n, 3, 1)$. Use l'Hopital's rule to evaluate $T(n, 3,
  1)$ and conclude that $S(n, 3) = ((n(n + 1)) / 2)^2$.
]

#underline[Answer]

#enum(numbering: "i)")[
  // Replacing @e2-eq2 into @e2-eq1, we have:

  $
    T(n, 2, x) &= x d / (d x) (x - (n + 1) x^(n + 1) + n x^(n + 2)) / (1 - x)^2 \
  $ <e2-eq3>


  Using the quotient rule

  $
    [u(x) / v(x)] d / (d x) = (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2
  $

  With

  $
    u(x)   &= x - (n + 1)x^(n + 1) + n x^(n + 2) \
    u'(x)  &= 1 - (n + 1)^2 x^n + n (n + 2) x^(n + 1) \
    v(x)   &= (1 - x)^2 \
    v'(x)  &= -2 (1 - x) \
    \
    u'(x) v(x) &= (1 - (n + 1)^2 x^n + n (n + 2) x^(n + 1)) thin (1 - x)^2 \
               &= (1 - x)^2 (1 - (n + 1)^2 x^n + n (n + 2) x^(n + 1)) \
    u(x) v'(x) &= (x - (n + 1)x^(n + 1) + n x^(n + 2)) thin -2(1 - x) \
               &= -2(1 - x)(x - (n + 1)x^(n + 1) + n x^(n + 2)) \
    \
    u'(x) v(x) - u(x) v'(x)
      &= (1 - x)^2 (1 - (n + 1)^2 x^n + n (n + 2) x^(n + 1)) \
      &quad + 2(1 - x)(x - (n + 1)x^(n + 1) + n x^(n + 2)) \
      &= (1 - x)[
        (1 - x)(1 - (n + 1)^2 x^n + n (n + 2) x^(n + 1)) \
        &quad + 2(x - (n + 1)x^(n + 1) + n x^(n + 2))
      ] \
      &= (1 - x)(1 + x - (n + 1)^2 x^n + (2 n^2 + 2n - 1) x^(n + 1) - n^2 x^(n + 2)) \
    (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2 &=
      ((1 - x)(1 + x - (n + 1)^2 x^n + (2 n^2 + 2n - 1) x^(n + 1) - n^2 x^(n + 2))) /
        (1 - x)^4 \
      &= (1 + x - (n + 1)^2 x^n + (2 n^2 + 2n - 1) x^(n + 1) - n^2 x^(n + 2)) /
        (1 - x)^3
  $

  Which means

  $
    x d/(d x)(T(n, 1, x))
      &= x (1 + x - (n + 1)^2 x^n + (2 n^2 + 2n - 1) x^(n + 1) - n^2 x^(n + 2)) / (1 - x)^3 \
      &= (x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3)) / (1 - x)^3
      quad square
  $
][
  $
    T(n, 2, x)
      &= (x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3)) / (1 - x)^3 \
    T(n, 2, 1)
      &= (1 + 1 - (n + 1)^2 + (2 n^2 + 2 n - 1) - n^2) / 0 \
      &= (2 - (n^2 + 2 n + 1) + (2 n^2 + 2 n - 1) - n^2) / 0 \
      &= 0 / 0
  $

  Which is indeterminate. Apply l'Hopital's rule:

  $
    lim_(x -> 1) T(n, 2, x) &= 
    lim_(x -> 1) (
      d/(d x) [x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3)]
    ) / (
      d/(d x) [(1 - x)^3]
    ) \
    &= lim_(x -> 1) (
      1 + 2x - (n + 1)^3 x^n + (n + 2)(2 n^2 + 2 n - 1) x^(n + 1) - (n + 3) n^2 x^(n + 2)
    ) / (
      -3 (1 - x)^2
    ) \
    &= lim_(x -> 1) (
      2 - n(n + 1)^3 x^(n - 1) + (n + 1)(n + 2)(2 n^2 + 2 n - 1) x^n - (n + 2)(n + 3) n^2 x^(n + 1)
    ) / (
      6 (1 - x)
    ) \
    &= lim_(x -> 1) (
      -(n - 1)n(n + 1)^3 x^(n - 2) + n(n + 1)(n + 2)(2 n^2 + 2 n - 1) x^(n - 1) - (n + 1)(n + 2)(n + 3) n^2 x^n
    ) / (-6) \
    &= (
      -(n - 1)n(n + 1)^3 + n(n + 1)(n + 2)(2 n^2 + 2n - 1) - (n + 1)(n + 2)(n + 3) n^2
    ) / (-6) \
    &= (
      n(n + 1) thin -(n - 1)(n + 1)^2 + n(n + 1) thin (n + 2)(2 n^2 + 2 n - 1)
      + n(n + 1) thin -n(n + 2)(n + 3)
    ) / (-6) \
    &= (
      n(n + 1) [-(n - 1)(n + 1)^2 + (n + 2)(2n^2 + 2n - 1) - n(n + 2)(n + 3)]
    ) / (-6) \
    &= (
      n(n + 1) [-2n - 1]
    ) / (-6)
    = (
      n(n + 1)(2n + 1)
    ) / 6 \
  $
][
  $
    T(n, 3, x) &= x d/(d x) thin (T(n, 2, x)) \
               &= x d/(d x) [(x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3)) / (1 - x)^3]
  $

  Using the quotient rule

  $
    [u(x) / v(x)] d / (d x) = (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2
  $

  With

  $
    u(x)     &= x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3) \
    u'(x)    &= 1 + 2x - (n + 1)^3 x^n + (2n^2 + 2n - 1)(n + 2) x^(n + 1) - (n + 3) n^2 x^(n + 2) \
    v(x)     &= (1 - x)^3 \
    v'(x)    &= -3 (1 - x)^2 \
    [v(x)]^2 &= (1 - x)^6 \
    \
    u'(x) v(x) &= (1 + 2x - (n + 1)^3 x^n + (2n^2 + 2n - 1)(n + 2) x^(n + 1) - (n + 3) n^2 x^(n + 2)) thin (1 - x)^3 \
               &= (1 - x)(1 + 2x - (n + 1)^3 x^n + (n + 2)(2n^2 + 2n - 1) x^(n + 1) - (n + 3) n^2 x^(n + 2)) thin (1 - x)^2 \
    u(x) v'(x) &= (x + x^2 - (n + 1)^2 x^(n + 1) + (2 n^2 + 2 n - 1) x^(n + 2) - n^2 x^(n + 3)) times -3 (1 - x)^2 \
               &= (-3x - 3x^2 + 3(n + 1)^2 x^(n + 1) - 3(2 n^2 + 2 n - 1) x^(n + 2) + 3n^2 x^(n + 3)) thin (1 - x)^2 \
  $

  Let $g(x) = (1 + 2x - (n + 1)^3 x^n + (n + 2)(2n^2 + 2n - 1) x^(n + 1) - (n +
  3) n^2 x^(n + 2))$, which means $u'(x) v(x) = (1 - x) g(x) thin (1 - x)^2$.
  Here is the calculation of $(1 - x) g(x)$ putting onto a grid:

  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    [],                    [$1$], [$x$], [$x^2$], [$x^n$],        [$x^(n + 1)$],              [$x^(n + 2)$],              [$x^(n + 3)$],
    [$g(x)$],              [$1$], [$2$], [],      [$-(n + 1)^3$], [$(n + 2)(2n^2 + 2n - 1)$], [$-(n + 3) n^2$],           [],
    [$x g(x)$],            [],    [$1$], [$2$],   [],             [$-(n + 1)^3$],             [$(n + 2)(2n^2 + 2n - 1)$], [$-(n + 3) n^2$],
    [$(1 - x) thin g(x)$], [$1$], [$1$], [$-2$],  [$-(n + 1)^3$], [$...$],                    [$...$],                    [$n^3 + 3n^2$],
  )

  Because

  $
    (n + 2)(2n^2 + 2n - 1) - [-(n + 1)^3]
      &= (2n^3 + 4n^2 + 2n^2 + 4n - n - 2) \
      &quad + med (n^3 + 3n^2 + 3n + 1) \
      &= (2n^3 + 6n^2 + 3n - 2) \
      &quad + med (n^3 + 3n^2 + 3n + 1) \
      &= 3n^3 + 9n^2 + 6n - 1
  $

  and

  $
    -(n + 3) n^2 - (n + 2)(2n^2 + 2n - 1)
      &= -(n^3 + 3n^2) \
      &quad - thick (2n^3 + 6n^2 + 3n - 2) \
      &= -3n^3 - 9n^2 - 3n + 2 \
  $

  We have

  $ (1 - x) thin g(x) &= 1 + x - 2x^2 - (n + 1)^3 x^n + (3n^3 + 9n^2 + 6n - 1) x^(n + 1) \
      &quad + thick (-3n^3 - 9n^2 - 3n + 2) x^(n + 2) + (n^3 + 3n^2) x^(n + 3) \
    u'(x) v(x) &= (1 - x) thin g(x) thin (1 - x)^2 \
               &= [1 + x - 2x^2 - (n + 1)^3 x^n + (3n^3 + 9n^2 + 6n - 1) x^(n + 1) \
               &quad + thick (-3n^3 - 9n^2 - 3n + 2) x^(n + 2) + (n^3 + 3n^2) x^(n + 3)] thin (1 - x)^2
  $

  Let

  $
    h_1(x) &= [1 + x - 2x^2 - (n + 1)^3 x^n + (3n^3 + 9n^2 + 6n - 1) x^(n + 1) \
           &quad + thick (-3n^3 - 9n^2 - 3n + 2) x^(n + 2) + (n^3 + 3n^2) x^(n + 3)] \
    u'(x) v(x) &= h_1(x) thin (1 - x)^2 \
    h_2(x) &= -3x - 3x^2 + 3(n + 1)^2 x^(n + 1) \
           &quad - thick 3(2 n^2 + 2 n - 1) x^(n + 2) + 3n^2 x^(n + 3) \
    u(x) v'(x) &= h_2(x) thin (1 - x)^2 \
    \
    u'(x) v(x) - u(x) v'(x) &= (h_1(x) - h_2(x)) thin (1 - x)^2
  $

  The calculation can be put into a grid like this:

  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    [],                  [$1$], [$x$],  [$x^2$], [$x^n$],        [$x^(n + 1)$],            [$x^(n + 2)$],             [$x^(n + 3)$],
    [$h_1(x)$],          [$1$], [$1$],  [$-2$],  [$-(n + 1)^3$], [$3n^3 + 9n^2 + 6n - 1$], [$-3n^3 - 9n^2 - 3n + 2$], [$n^3 + 3n^2$],
    [$h_2(x)$],          [],    [$-3$], [$-3$],  [],             [$3(n + 1)^2$],           [$-3(2n^2 + 2n - 1)$],     [$3n^2$],
    [$h_1(x) - h_2(x)$], [$1$], [$4$],  [$1$],   [$-(n + 1)^3$], [$...$],                  [$...$],                   [$n^3$],
  )

  Because

  $
    (3n^3 + 9n^2 + 6n - 1) - 3(n + 1)^2
      &= (3n^3 + 9n^2 + 6n - 1) - (3n^2 + 6n + 3) \
      &= 3n^3 + 6n^2 - 4 \
    \
    (-3n^3 - 9n^2 - 3n + 2) - (-3)(2n^2 + 2n - 1)
      &= (-3n^3 - 9n^2 - 3n + 2) + (6n^2 + 6n - 3) \
      &= -3n^3 - 3n^2 + 3n - 1 \
  $

  Then

  $
    u'(x) v(x) - u(x) v'(x) &=
      [1 + 4x + x^2 - (n + 1)^3 x^n + (3n^3 + 6n^2 - 4) x^(n + 1) + \
      &quad (-3n^3 - 3n^2 + 3n - 1) x^(n + 2) + n^3 x^(n + 3)] thin (1 - x)^2 \
    (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2 &=
      [1 + 4x + x^2 - (n + 1)^3 x^n + (3n^3 + 6n^2 - 4) x^(n + 1) + \
      (-3n^3 - 3n^2 + 3n - 1) x^(n + 2) + n^3 x^(n + 3)] / (1 - x)^4 \
    T(n, 3, x) &=
      x [1 + 4x + x^2 - (n + 1)^3 x^n + (3n^3 + 6n^2 - 4) x^(n + 1) + \
      (-3n^3 - 3n^2 + 3n - 1) x^(n + 2) + n^3 x^(n + 3)] / (1 - x)^4 \
      &= [x + 4x^2 + x^3 - (n + 1)^3 x^(n + 1) + (3n^3 + 6n^2 - 4) x^(n + 2) + \
      (-3n^3 - 3n^2 + 3n - 1) x^(n + 3) + n^3 x^(n + 4)] / (1 - x)^4 \
  $

  ---

  _The second way to solve this_

  $
    F(x)  &= P(x) / (1 - x)^m \
          &= u(x) / v(x) \
    F'(x) &= (u'(x) v(x) - u(x) v'(x)) / [v(x)]^2 \
          &= (P'(x) (1 - x)^m - P(x) (-m) (1 - x)^(m - 1)) / (1 - x)^(2m) \
          &= (P'(x) + (m P(x)) / (1 - x) ) / (1 - x)^m \
          &= ((1 - x) P'(x) + m P(x)) / (1 - x)^(m + 1) \
  $

  Let

  $
    P(x) &= x + x^2 - (n + 1)^2 x^(n + 1) + (2n^2 + 2n - 1) x^(n + 2)
            - thick n^2 x^(n + 3) \
    P'(x) &= 1 + 2x - (n + 1)^3 x^n + (n + 2) (2n^2 + 2n - 1) x^(n + 1)
            - thick (n + 3) n^2 x^(n + 2) \
  $

  Using a grid to calculate $(1 - x) thin P'(x)$

  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    $$,              $1$, $x$, $x^2$, $x^n$,        $x^(n + 1)$,               $x^(n + 2)$,               $x^(n + 3)$,
    $P(x)$,          $$,  $1$, $1$,   $$,           $-(n + 1)^2$,              $2n^2 + 2n - 1$,           $-n^2$,
    $P'(x)$,         $1$, $2$, $$,    $-(n + 1)^3$, $(n + 2)(2n^2 + 2n - 1)2$, $-(n + 3)(2n^2 + 2n - 1)$, $$,
    $x P'(x)$,       $$,  $1$, $2$,   $$,           $-(n + 1)^3$,              $(n + 2)(2n^2 + 2n - 1)2$, $-(n + 3)(2n^2 + 2n - 1)$,
    $(1 - x) P'(x)$, $1$, $1$, $-2$,  $-(n + 1)^3$, $...$,                     $...$,                     $(n + 3)(2n^2 + 2n - 1)$,
  )
][
  $
    T(n, 3, x)
      &= [x + 4x^2 + x^3 - (n + 1)^3 x^(n + 1) + (3n^3 + 6n^2 - 4) x^(n + 2) + \
      (-3n^3 - 3n^2 + 3n - 1) x^(n + 3) + n^3 x^(n + 4)] / (1 - x)^4 \
    T(n, 3, 1)
      &= [1 + 4 + 1 - (n + 1)^3 + (3n^3 + 6n^2 - 4) + (-3n^3 - 3n^2 + 3n - 1) + n^3] / 0 \
      &= [6 - (1 + 3n + 3n^2 + n^3) + (-4 + 6n^2 + 3n^3) + (-1 + 3n - 3n^2 - 3n^3) + n^3] / 0 \
  $

  Simplifying the numerator using a grid we have:

  #table(
    columns: (auto, auto, auto, auto, auto),
    [],       [$1$],  [$n$],  [$n^2$], [$n^3$],
    [],       [$6$],  [],     [],      [],
    [],       [$-1$], [$-3$], [$-3$],  [$-1$],
    [],       [$-4$], [],     [$6$],   [$3$],
    [],       [$-1$], [$3$],  [$-3$],  [$-3$],
    [],       [],     [],     [],      [$1$],
    [Total], [$0$],  [$0$],  [$0$],   [$0$],
  )

  Which means the numerator is $0$ and $T(n, 3, 1) = 0/0$.

  To apply l'Hopital's rule, let $f(x)$ be the numerator and $g(x)$ be the
  denominator and

  $
    f(x)       &= [x + 4x^2 + x^3 - (n + 1)^3 x^(n + 1) + (3n^3 + 6n^2 - 4) x^(n + 2) + \
               &quad (-3n^3 - 3n^2 + 3n - 1) x^(n + 3) + n^3 x^(n + 4)] \
               &= [x + 4x^2 + x^3 - (n + 1)^3 x^(n + 1) + l(n) x^(n + 2) + m(n) x^(n + 3) + n^3 x^(n + 4)] \
               &= f_1(x) + f_21(x) + f_22(x) + f_23(x) + f_24(x) \
    g(x) &= (1 - x)^4 \
   "where" \
    f_1(x)    &= x + 4x^2 + x^3 \
    f_(21)(x) &= -(n + 1)^3 x^(n + 1) \
    f_(22)(x) &= (3n^3 + 6n^2 - 4) x^(n + 2) \
    f_(23)(x) &= (-3n^3 - 3n^2 + 3n - 1) x^(n + 3) \
    f_(24)(x) &= n^3 x^(n + 4) \
  $

  Derivatives of $g(x)$ and $f_1(x)$ and other functions:

  $
    f_1(x)       &= x + 4x^2 + x^3 \
    f'_1(x)      &= 1 + 8x + 3x^2 \
    f^((2))_1(x) &= 8 + 6x \
    f^((3))_1(x) &= 6 \
    f^((4))_1(x) &= 0 \
    \
    f_(21)(x)       &= -(n + 1)^3 x^(n + 1) \
    f'_(21)(x)      &= -(n + 1)^4 x^n \
    f^((2))_(21)(x) &= -n(n + 1)^4 x^(n - 1) \
    f^((3))_(21)(x) &= -(n - 1)n(n + 1)^4 x^(n - 2) \
    f^((4))_(21)(x) &= -(n - 2)(n - 1)n(n + 1)^4 x^(n - 3) \
  $

  $
    f_(22)(x)       &= (3n^3 + 6n^2 - 4) x^(n + 2) \
    f'_(22)(x)      &= (n + 2)(3n^3 + 6n^2 - 4) x^(n + 1) \
    f^((2))_(22)(x) &= (n + 1)(n + 2)(3n^3 + 6n^2 - 4) x^n \
    f^((3))_(22)(x) &= n(n + 1)(n + 2)(3n^3 + 6n^2 - 4) x^(n - 1) \
    f^((4))_(22)(x) &= (n - 1)n(n + 1)(n + 2)(3n^3 + 6n^2 - 4) x^(n - 2) \
    \
    f_(23)(x)       &= (-3n^3 - 3n^2 + 3n - 1) x^(n + 3) \
    f'_(23)(x)      &= (n + 3)(-3n^3 - 3n^2 + 3n - 1) x^(n + 2) \
    f^((2))_(23)(x) &= (n + 2)(n + 3)(-3n^3 - 3n^2 + 3n - 1) x^(n + 1) \
    f^((3))_(23)(x) &= (n + 1)(n + 2)(n + 3)(-3n^3 - 3n^2 + 3n - 1) x^(n) \
    f^((4))_(23)(x) &= n(n + 1)(n + 2)(n + 3)(-3n^3 - 3n^2 + 3n - 1) x^(n - 1) \
    \
    f_(24)(x)       &= n^3 x^(n + 4) \
    f'_(24)(x)      &= (n + 4)n^3 x^(n + 3) \
    f^((2))_(24)(x) &= (n + 3)(n + 4)n^3 x^(n + 2) \
    f^((3))_(24)(x) &= (n + 2)(n + 3)(n + 4)n^3 x^(n + 1)  \
    f^((4))_(24)(x) &= (n + 1)(n + 2)(n + 3)(n + 4)n^3 x^(n)  \
    \
    g(x)       &= (1 - x)^4 \
    g'(x)      &= -4 (1 - x)^3 \
    g^((2))(x) &= 12 (1 - x)^2 \
    g^((3))(x) &= -24 (1 - x) \
    g^((4))(x) &= 24 \
  $

  $
    f^((4))_(21)(x) + f^((4))_(22)(x)
      &= -(n - 2)(n - 1)n(n + 1)^4 x^(n - 3) \
      &quad + thick (n - 1)n(n + 1)(n + 2)(3n^3 + 6n^2 - 4) x^(n - 2) \

    f^((4))_(21)(1) + f^((4))_(22)(1)
      &= -(n - 2)(n - 1)n(n + 1)^4 \
      &quad + thick (n - 1)n(n + 1)(n + 2)(3n^3 + 6n^2 - 4) \

      &= (n - 1)n(n + 1)[-(n - 2)(n + 1)^3] \
      &quad + thick (n - 1)n(n + 1)[(n + 2)(3n^3 + 6n^2 - 4)] \

      &= (n - 1)n(n + 1)[-(n - 2)(n + 1)^3 + (n + 2)(3n^3 + 6n^2 - 4)] \

      &= (n - 1)n(n + 1)[(-n + 2)(n^3 + 3n^2 + 3n + 1) \
      &quad + thick (n + 2)(3n^3 + 6n^2 - 4)] \

      &= (n - 1)n(n + 1)[((-n^4 + 2n^3) + (-3n^3 + 6n^2) + (-3n^2 + 6n) + (-n + 2)) \
      &quad + thick ((3n^4 + 6n^3) + (6n^3 + 12n^2) + (-4n - 8))] \

      &= (n - 1)n(n + 1)[(-1 + 3)n^4 + (2 - 3 + 6 + 6)n^3 \
      &quad + thick (6 - 3 + 12)n^2 + (6 - 1 - 4)n + (2 - 8)] \

      &= (n - 1)n(n + 1)[2n^4 + 11n^3 + 15n^2 + n - 6] \
  $

  ---

  $
    f^((4))_(23)(x) + f^((4))_(24)(x)
      &= n(n + 1)(n + 2)(n + 3)(-3n^3 - 3n^2 + 3n - 1) x^(n - 1) \
      &quad + thick (n + 1)(n + 2)(n + 3)(n + 4)n^3 x(n) \

    f^((4))_(23)(1) + f^((4))_(24)(1)
      &= n(n + 1)(n + 2)(n + 3)(-3n^3 - 3n^2 + 3n - 1) \
      &quad + thick (n + 1)(n + 2)(n + 3)(n + 4)n^3 \

      &= n(n + 1)(n + 2)(n + 3)[-3n^3 - 3n^2 + 3n - 1] \
      &quad + thick n(n + 1)(n + 2)(n + 3)[(n + 4)n^2] \

      &= n(n + 1)(n + 2)(n + 3)[(-3n^3 - 3n^2 + 3n - 1) + (n + 4)n^2] \
      &= n(n + 1)(n + 2)(n + 3)[(-3n^3 - 3n^2 + 3n - 1) + (n^3 + 4n^2)] \
      &= n(n + 1)(n + 2)(n + 3)[(-3 + 1)n^3 + (-3 + 4)n^2 + 3n - 1] \
      &= n(n + 1)(n + 2)(n + 3)[-2n^3 + n^2 + 3n - 1] \
  $

  Because $f^((4))_(1)(x) = 0$

  $
    f^((4))(1) &=
      f^((4))_(21)(1) +
      f^((4))_(22)(1) +
      f^((4))_(23)(1) +
      f^((4))_(24)(1) \

      &= (n - 1)n(n + 1)[2n^4 + 11n^3 + 15n^2 + n - 6] \
      &quad + thick n(n + 1)(n + 2)(n + 3)[2n^3 + n^2 + 3n - 1] \

      &= n(n + 1)[(n - 1)(2n^4 + 11n^3 + 15n^2 + n - 6)] \
      &quad + thick n(n + 1)[(n + 2)(n + 3)(-2n^3 + n^2 + 3n - 1)] \

      &= n(n + 1)[(n - 1)(2n^4 + 11n^3 + 15n^2 + n - 6) + \
      &quad + thick (n + 2)(n + 3)(-2n^3 + n^2 + 3n - 1)] \
  $

  Let

  $
    h_1(n) &= (n - 1)(2n^4 + 11n^3 + 15n^2 + n - 6) \

           &= (2n^5 - 2n^4) + (11n^4 - 11n^3) + (15n^3 - 15n^2) + (n^2 - n) + (-6n + 6) \

           &= 2n^5 + (-2 + 11)n^4 + (-11 + 15)n^3 + (-15 + 1)n^2 + (-1 - 6)n + 6 \

           &= 2n^5 + 9n^4 + 4n^3 - 14n^2 - 7n + 6 \

    h_2(n) &= (n + 2)(n + 3)(-2n^3 + n^2 + 3n - 1) \

           &= (n^2 + 5n + 6)(-2n^3 + n^2 + 3n - 1) \

           &= (-2n^5 - 10n^4 - 12n^3) + (n^4 + 5n^3 + 6n^2) \
           &quad + thick (3n^3 + 15n^2 + 18n) + (-n^2 - 5n - 6) \

           &= -2n^5 + (-10 + 1)n^4 + (-12 + 5 + 3)n^3 + (6 + 15 - 1)n^2 + (18 - 5)n - 6 \

           &= -2n^5 - 9n^4 - 4n^3 + 20n^2 + 13n - 6 \
  $

  $
    h_1(n) + h_2(n)
      &= (2n^5 + 9n^4 + 4n^3 - 14n^2 - 7n + 6) \
      &+ thick (-2n^5 - 9n^4 - 4n^3 + 22n^2 + 13n - 6) \

      &= 6n^2 + 6n \

      &= 6n(n + 1)
  $

  Which means

  $
    f^(4)(1) &= n(n + 1) thin 6n(n + 1) \
             &= 6(n(n + 1))^2 \

    (f^(4)(1)) / (g^(4)(1)) &= (6(n(n + 1))^2) / 24 \
                            &= (n(n + 1)^2) / 4 \
                            &= ((n(n + 1)) / 2)^2 \
    S(n, 3) &= T(n, 3, 1) \
            &= lim_(x -> 1) (f(1)) / (g(1)) \
            &= (f^(4)(1)) / (g^(4)(1)) \
            &= ((n(n + 1)) / 2)^2 quad square
  $
]

#underline[Exercise 3]

Compute $S(n, 4) = sum_(k = 1)^n k^4$ using the recursion formula

$
  S(n, i)
    = 1 / (i + 1) ((n + i)^(i + 1) - 1 - sum_(j = 0)^(i - 1) vec(i + 1, j)
      S(n, j)) forall i >= 1
$

The term $vec(i + 1, j)$ is the binomial coefficient defined as follows:

$
  vec(i + 1, j) = (i + 1)! / (j! (i + 1 - j)!)
$

#underline[Answer]

$
  S(n, i)
    &= 1 / (i + 1) ((n + 1)^(i + 1) - 1 - sum_(j = 0)^(i - 1) vec(i + 1, j)
       S(n, j)) forall i >= 1 \

  S(n, 4)
    &= 1 / 5 ((n + 1)^5 - 1 - sum_(j = 0)^3 vec(5, j) S(n, j)) \

    &= 1 / 5 ((n + 1)^5 - 1 - [vec(5, 0) S(n, 0) + vec(5, 1) S(n, 1) + vec(5, 2) S(n, 2) + vec(5, 3) S(n, 3)]) \

    &= 1 / 5 ((n + 1)^5 - 1 - [vec(5, 0) n + vec(5, 1) (n(n + 1)) / 2 + vec(5, 2) (n(n + 1)(2n + 1)) / 6 + vec(5, 3) ((n(n + 1)) / 2)^2]) \

    &= 1 / 5 ((n + 1)^5 - 1 - [n + 5n(n + 1) / 2 + 10 (n(n + 1)(2n + 1)) / 6 + 10 ((n(n + 1)) / 2)^2]) \

    &= 1 / 5 ((n + 1)^5 - [(n + 1) + (5n(n + 1)) / 2 + (10 n(n + 1)(2n + 1)) / 6 + (10 (n(n + 1)) / 2)^2]) \

    &= (n + 1) / 5 ((n + 1)^4 - [1 + (5n) / 2 + (10 n(2n + 1)) / 6 + (10 n^2(n + 1)) / 4]) \

    &= (n + 1) / 5 ((n + 1)^4 - [1 + (5n) / 2 + (5 n(2n + 1)) / 3 + (5 n^2(n + 1)) / 2]) \

    &= (n + 1) / 30 (6(n + 1)^4 - [6 + 15n + 10n(2n + 1) + 15n^2(n + 1)]) \

    &= (n + 1) / 30 (6(n^4 + 4n^3 + 6n^2 + 4n + 1) \
    &quad - thick [6 + 15n + (20n^2 + 10n) + 15n^3 + 15n^2]) \

    &= (n + 1) / 30 ([6n^4 + 24n^3 + 36n^2 + 24n + 6] \
    &quad - thick [15n^3 + 35n^2 + 25n + 6]) \

    &= (n + 1) / 30 (6n^4 + 9n^3 + n^2 - n) \

    &= (n(n + 1)(6n^3 + 9n^2 + n - 1)) / 30 quad square
$

#underline[Exercise 4]

It's easy to see that the sequence $(x_n)_(n >= 1)$ given by $x_n = sum_(k=1)^n
k^2$ satisfies the recursion

$
  x_(n+1) = x_n + (n + 1)^2, forall n >= 1
$

with $x_1 = 1$

#enum(numbering: "i)")[
  By substituting $n + 1$ for $n$ in the above formula, obtain that

  $
    x_(n+2) = x_(n+1) + (n + 2)^2
  $

  Subtract $x_(n+1)$ from $x_(n+2)$ to find that

  $
    x_(n+2) = 2x_(n+1) - x_n + 2n + 3 quad forall n >= 1
  $

  with $x_1 = 1$ and $x_2 = 5$.
][
  Similarly, substitute $n + 1$ for $n$ in the above finding and obtain that

  $
    x_(n+3) = 2x_(n+2) - x_(n+1) + 2(n + 1) + 3
  $

  Subtract $x_(n+2)$ from $x_(n+3)$ to find that

  $
    x_(n+3) = 3x_(n+2) - 3x_(n+1) + x_n + 2 quad forall n >= 1
  $

  with $x_1 = 1$, $x_2 = 5$, and $x_3 = 14$.
][
  Use a similar method to prove that the sequence $(x_n)_(n>=0)$ satisfies the
  linear recursion

  $
    x_(n+4) - 4x_(n+3) + 6x_(n+2) - 4x_(n+1) + x_n = 0
  $

  The characteristic polynomial associated to the above recursion function is:

  $
    P(z) = z^4 - 4z^3 + 6z^2 - 4z + 1 = (z - 1)^4
  $

  Use the fact that $x_1 = 1$, $x_2 = 5$, $x_3 = 14$, and $x_4 = 30$ to show
  that

  $
    x_n = (n(n + 1)(2n + 1)) / 6, quad forall n >= 1
  $

  and conclude that

  $
    S(n, 2) = sum_(k=1)^n k^2 = (n(n + 1)(2n + 1)) / 6, quad forall n >= 1
  $
]

#underline[Answer]

#enum(numbering: "i)")[
  $
    x_(n+1) &= x_n + (n + 1)^2 \
    x_(n+2) &= x_(n+1) + (n + 2)^2 \
    x_(n+2) - x_(n+1) &= [x_(n+1) + (n + 2)^2] - [x_(n) + (n + 1)^2] \
    x_(n+2) - x_(n+1) &= x_(n+1) - x_(n) + (n + 2)^2 - (n + 1)^2 \
    x_(n+2) - x_(n+1) &= x_(n+1) - x_(n) + (n^2 + 4n + 4) - (n^2 + 2n + 1) \
    x_(n+2) - x_(n+1) &= x_(n+1) - x_(n) + 2n + 3 \
    x_(n+2) &= 2 x_(n+1) - x_(n) + 2n + 3 \
  $
][
  $
    x_(n+2) &= 2x_(n+1) - x_(n) + 2n + 3 \
    x_(n+3) &= 2x_(n+2) - x_(n+1) + 2(n + 1) + 3 \
    x_(n+3) - x_(n+2)
      &= [2x_(n+2) - x_(n+1) + 2(n + 1) + 3] - [2x_(n+1) - x_(n) + 2n + 3] \
      &= 2x_(n+2) + (-1 - 2)x_(n+1) + x_(n) + (2 - 2)n + (2 + 3 - 3) \
      &= 2x_(n+2) - 3x_(n+1) + x_n + 2 \

    x_(n+3) &= 3x_(n+2) - 3x_(n+1) + x_n + 2 \
  $
][
  $
    x_(n+3) &= 3x_(n+2) - 3x_(n+1) + x_n + 2 \
    x_(n+4) &= 3x_(n+3) - 3x_(n+2) + x_(n+1) + 2 \
    x_(n+4) - x_(n+3)
      &= [3x_(n+3) - 3x_(n+2) + x_(n+1) + 2] - [3x_(n+2) - 3x_(n+1) + x_n + 2] \
      &= 3x_(n+3) + (-3 - 3)x_(n+2) + (1 + 3)x_(n+1) - x_n + (2 - 2) \
      &= 3x_(n+3) - 6x_(n+2) + 4x_(n+1) - x_n \

    x_(n+4) &= 4x_(n+3) - 6x_(n+2) + 4x_(n+1) - x_n \
    x_(n+4) - 4x_(n+3) + 6x_(n+2) - 4x_(n+1) + x_n &= 0 \
  $

  The characteristic polynomial is:

  $
    P(z) = z^4 - 4z^3 + 6z^2 - 4z + 1 = (z - 1)^4
  $

  Which means the only root of $P(z)$ is $lambda = 1$. The general form of
  $x_n$:

  $
    x_n = C_1 + C_2 n + C_3 n^2 + C_4 n^3
  $

  As

  $
    x_1 = 1 \
    x_2 = 5 \
    x_3 = 14 \
    x_4 = 30 \
  $

  We have this linear system:

  $
    vec(
      1 & quad 1 & quad 1 & quad 1,
      1 & quad 2 & quad 4 & quad 8,
      1 & quad 3 & quad 9 & quad 27,
      1 & quad 4 & quad 16 & quad 64,
    )
    thick
    vec(
      C_1,
      C_2,
      C_3,
      C_4,
    )
    =
    vec(
      1,
      5,
      14,
      30,
    )
  $

  Solving the system yields

  $
    C_1 = 0 \
    C_2 = 1/6 \
    C_3 = 1/2 \
    C_4 = 1/3 \
  $

  Which means

  $
    x_n &= C_1 + C_2 n + C_3 n^2 + C_4 n^3 \
        &= 0 + n/6 + n^2/2 + n^3/3 \
        &= (n(n + 1)(2n + 1)) / 6 quad square
  $
]

#underline[Exercise 5]

Find the general form of the sequence $x(n)_(n>=0)$ satisfiying the linear
recursion

$
  x_(n+3) = 2x_(n+1) + x_n, quad forall n >= 0
$

With $x_0 = 1$, $x_1 = -1$ and $x_2 = 1$

#underline[Answer]

$
  x_(n+3) = 2x_(n+1) + x_n
  x_(n+3) - 2x_(n+1) - x_n = 0
$

The characteristic polynomial is:

$
  P(z) &= z^3 - 2z - 1 \
    // &= z(z^2 - 1) - (z + 1)
    // &= z(z - 1)(z + 1) - (z + 1)
    &= (z + 1)(z^2 - z - 1) \
    &= (z + 1)[z - (1 + sqrt(5))/2][z - (1 - sqrt(5))/2] \
$

Which means the roots of $P(z)$ are:

$
  lambda_1 = 1 \
  lambda_2 = (1 + sqrt(5))/2 \
  lambda_3 = (1 - sqrt(5))/2 \
$

The general form of $x_n$ is:

$
  x_n = C_1 lambda_1^n + C_2 lambda_2^n + C_3 lambda_3^n
$

With $x_0 = 1$, $x_1 = -1$ and $x_2 = 1$:

$
  1 &= C_1 + C_2 + C_3 \
  -1 &= C_1 + (1 + sqrt(5))/2 C_2 + (1 - sqrt(5))/2 C_3 \
  1 &= C_1 + (1 + sqrt(5))^2/4 C_2 + (1 - sqrt(5))^2/4 C_3 \
    &= C_1 + (3 + sqrt(5))/2 C_2 + (3 - sqrt(5)) / 2 C_3 \
$

Solving the linear equation system yields:

$
  C_1 &= -1 \
  C_2 &= (1 + sqrt(5)) / sqrt(5) \
  C_3 &= (-1 + sqrt(5)) / sqrt(5) \
$

Which means the general form of $x_n$ is:

$
  x_n &= -1 + [(1 + sqrt(5)) / (sqrt(5)) ((1 + sqrt(5)) / 2)^n] + [(-1 + sqrt(5)) / (sqrt(5)) ((1 - sqrt(5)) / 2)^n]
  quad square
$

#underline[Exercise 6]

The sequence $(x_n)_(n>=0)$ satisfies the recursion

$
  x_(n+1) = 3x_n + 2, quad forall n >= 0
$

with $x_0 = 1$.

#enum(numbering: "i)")[
  Show that the sequence $(x_n)_(n>=0)$ satisfies the linear recursion

  $
    x_(n+2) = 4x_(n+1) - 3x_n, quad forall n >= 0
  $

  with $x_0 = 1$ and $x_1 = 5$.
][
  Find the general formula for $x_n, n >= 0$.
]

#underline[Answer]

#enum(numbering: "i)")[
  Replacing $n+2$ into $x_(n+1)$, we have

  $
    x_(n+1) &= 3x_n + 2 \
    x_(n+2) &= 3x_(n+1) + 2 \
    \
    x_(n+2) - x_(n+1) &= 3x_(n+1) - 3x_n \
    x_(n+2) &= 4x_(n+1) - 3x_n \
  $
][
  From the above transformation, we have:

  $
    x_(n+2) - 4x_(n+1) + 3x_n = 0
  $

  The characteristic polynomial is:

  $
    P(z) = z^2 - 4z + 3 = (z - 3)(z - 1)
  $

  Which means the roots of $P(z)$ are:

  $
    lambda_1 = 3 \
    lambda_2 = 1 \
  $

  The general form of $x_n$ is:

  $
    x_n = C_1 lambda_1^n + C_2 lambda_2^n
  $

  With $x_0 = 1$ and $x_1 = 5$, we have this system of equations:

  $
    1 = C_1 + C_2 \
    5 = 3C_1 + C_2 \
  $

  Solving it yields:

  $
    C_1 = 2 \
    C_2 = -1 \
  $

  Then the general form of $x_n$ is:

  $
    x_n = 2 times 3^n - 1
  $
]

#underline[Exercise 7]

The sequence $(x_n)_(n>=0)$ satisfies the recursion

$
  x_(n+1) = 3x_n + n + 2, quad forall n >= 0
$

with $x_0 = 1$.

#enum(numbering: "i)")[
  Show that the sequence $(x_n)_(n>=0)$ satisfies the linear recursion

  $
    x_(n+3) = 5x_(n+2) - 7x_(n+1) + 3x_n, quad forall n >= 0
  $

  With $x_0 = 1$, $x_1 = 5$, and $x_2 = 18$.
][
  Find the general formula for $x_n$, $n >= 0$.
]

#underline[Answer]

#enum(numbering: "i)")[
  $
    x_(n+1) &= 3x_n + n + 2 \
    x_(n+2) &= 3x_(n+1) + (n + 1) + 2 \
    x_(n+2) - x_(n+1) &= [3x_(n+1) + (n + 1) + 2] - [3x_n + n + 2] \
      &= 3x_(n + 1) - 3x_n + (1 - 1)n + (1 + 2 - 2) \
      &= 3x_(n + 1) - 3x_n + 1 \
    x_(n+2) &= 4x_(n + 1) - 3x_n + 1 \
    x_(n+3) &= 4x_(n + 2) - 3x_(n + 1) + 1 \
    x_(n+3) - x_(n+2)
      &= [4x_(n + 2) - 3x_(n + 1) + 1] - [4x_(n + 1) - 3x_n + 1] \
      &= 4x_(n+2) + (-3 - 4)x_(n+1) + 3x_n + (1 - 1) \
      &= 4x_(n+2) - 7x_(n+1) + 3x_n \
    x_(n+3) &= 5x_(n+2) - 7x_(n+1) + 3x_n quad qed \
  $
][
  From the above transformation, we have:

  $
    x_(n+3) - 5x_(n+2) + 7x_(n+1) - 3x_n = 0
  $

  The characteristic polynomial is:

  $
    P(z) = z^3 - 5z^2 + 7z - 3 = (z - 3)(z - 1)^2
  $

  Which means the roots of $P(z)$ are:

  $
    lambda_1 = 3 \
    lambda_2 = 1 \
  $

  The general form of $x_n$ is:

  $
    x_n = C_1 lambda_1^n + C_2 + C_3 n
  $

  With $x_0 = 1$, $x_1 = 5$, and $x_2 = 18$, we have this system of equations:

  $
    1 = C_1 + C_2 \
    5 = 3C_1 + C_2 + C_3 \
    18 = 9C_1 + C_2 + 2 C_3 \
  $

  Solving it yields:

  $
    C_1 = 9/4 \
    C_2 = -5/4 \
    C_3 = -1/2 \
  $

  Then the general form of $x_n$ is:

  $
    x_n = 9/4 times 3^n - 5/4 - n/2
  $
]

#underline[Exercise 8]

Let $P(z) = sum_(i=0)^k a_i z^i$ be the characteristic polynomial corresponding
to the linear recursion

$
  sum_(i=0)^(k) a_i x_(n+i) = 0, quad forall n >= 0
$

Assume that $lambda$ is a root of multiplicity of $2$ of $P(z)$. Show that the
sequence $(y_n)_(n>=0)$ is given by

$
  y_n = C n lambda^n, quad n >= 0
$

Where $C$ is an arbitrary constant, satistifes the recursion above.

Hint: Show that

$
  sum_(i=1)^k a_i y_(n+i) = C n lambda^n P(lambda) + C lambda^(n+1) P'(lambda),
  quad forall n >= 0
$

and recall that $lambda$ is a root of multiplicity 2 of the polynomial $P(z)$ if
and only if $P(lambda) = 0$ and $P'(lambda) = 0$.

#underline[Answer]

Because $lambda$ is a root of multiplicity $2$ of $P(z)$

$
  P(z) &= (z - lambda)^2 Q(z) \
$

Where $Q(z)$ is some polynomial with $Q(lambda) != 0$. It's easily see that:

$
  P(lambda) &= (lambda - lambda)^2 Q(z) = 0 \
$

Using product rule:

$
  P'(z) &= d/(d z) [(z - lambda)^2 Q(z)] \
        &= 2(z - lambda) Q(z) + (z - lambda)^2 Q'(z) \
        &= (z - lambda)[2Q(z) + (z - lambda)Q'(z)] \
  P'(lambda) &= (lambda - lambda)[2Q(lambda) + (lambda - lambda)Q'(z)] \
             &= 0[2Q(lambda) + 0 (lambda - lambda)Q'(z)] \
             &= 0
$

We then have

$
  P(z) &= sum_(i=0)^k a_i z^i \
  P(lambda) &= sum_(i=0)^k a_i lambda^i = 0 \
  P'(z) &= (sum_(i=0)^k a_i z^i)' = sum_(i=1)^k i a_i z^(i-1) \
  P'(lambda) &= sum_(i=1)^k i a_i lambda^(i-1) = 0 \
$

Because $y_n &= C n lambda^n$ then $y_(n+i) &= C (n+i) lambda^(n+1)$ and

$
  sum_(i=0)^k a_i y_(n+i) &= sum_(i=0)^k a_i C(n+i) lambda^(n+i) \
    &= C n sum_(i=0)^k a_i lambda^(n+i) + C sum_(i=0)^k i a_i lambda^(n+i) \
    &= C n lambda^n sum_(i=0)^k a_i lambda^i + C lambda^(n+1) sum_(i=0)^k i a_i lambda^(i-1) \
    &= C n lambda^n P(lambda) + C lambda^(n+1) P'(lambda) \
    &= C n lambda^n times 0 + C lambda^(n+1) times 0 \
    &= 0 \
$

Or $(y_n)_(n>=0)$ satisfies the linear recursion.

