= 1.6 Multivariable functions

Until now, we only considered functions $f(x)$ of one variable. In this section,
we introduce functions of several variables, either taking values in the
one-dimensional space $bb(R)$, i.e., scalar valued multivariable functions, or
taking values in the $m$-dimensional space $bb(R)^m$, i.e., vector valued
multivariable functions.

_Scalar Valued Functions_

Let $f: bb(R)^n -> R$ be a function of $n$ variables denoted by $x_1, x_2, ...,
x_n$, and let $x = (x_1, x_2, ..., x_n)$.

== Definition 1.2.

Let $f: bb(R)^n -> bb(R)$. The partial derivative of the function $f(x)$ with
respect to the variable $x_i$ is denoted by $(partial f)/(partial x_i) (x)$ and
is defined as

$
  (partial f)/(partial x_i)(x) =
  lim_(h->0) (f(x_1, ..., x_(i-1), x_i + h, x_(i+1), ..., x_n) - f(x_1, x_2, ..., x_n))/h
$

if the limit exists and is finite.

In practice the partial derivative $(partial f)/(partial x_i)(x)$ is computed by
considering the variables $x_1, ..., x_(i-1), x_(i+1), ..., x_n$ to be fixed,
and differentiating $f(x)$ as a function of one variable $x_i$.

A compact formula for the above limit can be given as follows: Let $e_i$ be the
vector

- with all entries equal to $0$
- with the exception of the i-th entry, which is equal to $1$,
- i.e. $e(j) = 0$ for $j != i$, $1 <= j <= n$ and $e_i(j) = 1$.

Then,

$
  (partial f)/(partial x_i)(x) = lim_(h->0) (f(x + h e_i) - f(x))/h
$

Partial derivatives of higher order are defined similarly. For example, the
second order partial derivative of $f(x)$ first with respect to $x_i$ and then
with respect to $x_j$, with $j != i$ is denoted by $(partial^2 f)/(partial x_j
partial x_i)(x)$ and is equal to

$
  (partial^2 f)/(partial x_j partial x_i)(x)
    = partial/(partial x_j)((partial f)/(partial x_i)(x))
$

While the second and third partial derivatives of $f(x)$ with respect to $x_i$
are denoted by $(partial^2 f)/(partial x_i^2)$ and $(partial^2 f)/(partial
x_i^3)$, respectively, and are given by

$
  (partial^2 f)/(partial x_i^2)(x)
    = partial/(partial x_i)((partial f)/(partial x_i)(x)) \
  (partial^2 f)/(partial x_i^3)(x)
    = partial/(partial x_i)((partial^2 f)/(partial x_i^2)(x)) \
$

While the order in which the partial derivatives of a given function are
computed might make a difference, i.e.,

- the partial derivative of $f(x)$ first with respect to $x_i$ and then with
  respect to $x_j$, with $j != i$ is not necessarily equal to
- the partial derivative of $f(x)$ first with respect to $x_j$ and then with
  respect to $x_i$, this is not the case if a function is smooth enough

== Theorem 1.9.

If all the partial derivatives of order $k$ of the function $f(x)$ exist and are
continuous, then the order in which partial derivatives of $f(x)$ of order at
most $k$ is computed does not matter.

== Definition 1.3.

Let $f: bb(R)^n -> bb(R)$ be a function of $n$ variables and assume that $f(x)$
is differentiable with respect to all variables $x_i, i = 1:n$. The gradient
$D f(x)$ of the function $f(x)$ is the following row vector of size $n$:

$
  D f(x) = (
    (partial f)/(partial x_1)(x)
    thick (partial f)/(partial x_2)(x)
    thick ...
    thick (partial f)/(partial x_n)(x)
  )
$

== Definition 1.4.

Let $f: bb(R)^n -> bb(R)$ be a function of $n$ variables. The Hessian of $f(x)$
is denoted by $D^2 f(x)$ and is defined as the following $n times n$ matrix:

$
  D^2 f(x) = mat(
    (partial^2 f)/(partial x_1^2)(x), 
    (partial^2 f)/(partial x_2 partial x_1)(x), 
    ...,
    (partial^2 f)/(partial x_n partial x_1)(x);

    (partial^2 f)/(partial x_1 partial x_2)(x), 
    (partial^2 f)/(partial x_2^2)(x), 
    ...,
    (partial^2 f)/(partial x_n partial x_2)(x);

    dots.v,
    dots.v,
    dots.down,
    dots.v;

    (partial^2 f)/(partial x_1 partial x_n)(x), 
    (partial^2 f)/(partial x_2 partial x_n)(x), 
    ...,
    (partial^2 f)/(partial x_n^2)(x);
  )
$

Another commonly used notations for the gradient and Hessian of $f(x)$ are
$triangle.b f(x)$ and $H f(x)$, respectively. We will use $D f(x)$ and $D^2
f(x)$ unless otherwise specified.

_Vector Valued Functions_

A function that takes values in a multidimensional space is called a vector
valued function. Let $F: bb(R)^n -> R^m$ be a vector valued function given by

$
  F(x) = vec(f_1(x), f_2(x), dots.v, f_m(x))
$

Where $x = (x_1, x_2, ..., x_n)$.

== Definition 1.5.

Let $F: bb(R)^n -> R^m$ given by $F(x) = (f_j(x))_(j=1:m)$, and assume that the
functions $f_j(x), j = 1 : m$ are differentiable with respect to all variables
$x_i, i = 1 : m$. The gradient $D F(x)$ of the function $F(x)$ is the following
matrix of size $m times n$:

$
  D f(x) = mat(
    (partial f_1)/(partial x_1)(x), 
    (partial f_1)/(partial x_2)(x), 
    ...,
    (partial f_1)/(partial x_n)(x);

    (partial f_2)/(partial x_1)(x), 
    (partial f_2)/(partial x_2)(x), 
    ...,
    (partial f_2)/(partial x_n)(x);

    dots.v,
    dots.v,
    dots.down,
    dots.v;

    (partial f_m)/(partial x_1)(x), 
    (partial f_m)/(partial x_2)(x), 
    ...,
    (partial f_m)/(partial x_n)(x);
  )
$

If $F: bb(R)^n -> R^n$, then the gradient $D F(x)$ is a square matrix of size
$n$.

The $j$-th row of the gradient matrix $D F(x)$ is equal to the gradient $D
f_j(x)$ of the function $f_j(x), j = 1 : m$. Therefore,

$
  D F(x) = vec(
    D f_1(x),
    D f_2(x),
    dots.v,
    D f_m(x),
  )
$

== 1.6.1 Functions of two variables

Functions of two variables are the simplest example of multivariable functions.
To classify the definitions for partial derivatives and for the gradient and the
Hessian of multivariable functions given in section 1.6, we present them
againfor both scalar and vector valued functions of two variables.

_Scalar Valued Functions_

Let $f: bb(R)^2 -> bb(R)$ be a function of two variables denoted by $x$ and $y$.
The partial derivatives of the function $f(x, y)$ with respect to the variables
$x$ and $y$ are denoted by

- $(partial f)/(partial x)(x, y)$ and
- $(partial f)/(partial y)(x, y)$, respectively,

and defined as follows:

$
  (partial f)/(partial x)(x, y) = lim_(h->0) (f(x + h, y) - f(x, y))/h \
  (partial f)/(partial y)(x, y) = lim_(h->0) (f(x, y + h) - f(x, y))/h \
$

The gradient of $f(x, y)$ is

$
  D f(x, y) = (
    (partial f)/(partial x)(x, y)
    thick (partial f)/(partial y)(x, y)
  )
$

The Hessian of $f(x, y)$ is

$
  D^2 f(x, y) = mat(
    (partial^2 f)/(partial x^2)(x, y),
    (partial^2 f)/(partial y partial x)(x, y);

    (partial^2 f)/(partial x partial y)(x, y),
    (partial^2 f)/(partial y^2)(x, y);
  )
$

_Vector Valued Functions_

Let $F: bb(R)^2 -> R^2$ given by

$
  F(x, y) = vec(f_1(x, y), f_2(x, y))
$

The gradient of $F(x, y)$ is

$
  D F(x, y) = mat(
    (partial f_1)/(partial x)(x, y),
    (partial f_1)/(partial y)(x, y);

    (partial f_2)/(partial x)(x, y),
    (partial f_2)/(partial y)(x, y);
  )
$

_Example_

Let $f(x, y) = x^2 y^3 + e^(2x + x y - 1) - (x^3 + 3y^2)^2$. Evaluate the
gradient and the Hessian of $f(x, y)$ at the point $(0, 0)$.

---

We have

$
  (partial f)/(partial x)(x, y)
    &= (partial f)/(partial x)(x^2 y^3 + e^(2x + x y - 1) - (x^3 + 3y^2)^2) \
    &= (partial f)/(partial x)(x^2 y^3) + (partial f)/(partial x)(2x + x y - 1)e^(2x + x y - 1) - 2(x^3 + 3y^2)(partial f)/(partial x)(x^3 + 3y^2) \
    &= (2x y^3) + (2 + y)e^(2x + x y - 1) - 2(x^3+3y^2) dot 3x^2 \
    &= 2x y^3 + (2 + y)e^(2x + x y - 1) - 6x^2 (x^3+3y^2) \
$
$
  (partial^2 f)/(partial x^2)(x, y)
    &= (partial f)/(partial x)((partial f)/(partial x)(x, y)) \
    &= (partial f)/(partial x)(2x y^3 + (2 + y)e^(2x + x y - 1) - 6x^2 (x^3+3y^2)) \
    &= (partial f)/(partial x)(2x y^3)
      + (partial f)/(partial x)((2 + y)e^(2x + x y - 1))
      - (partial f)/(partial x)(6x^2 (x^3+3y^2)) \
    &= (2y^3) + ((2 + y)^2 e^(2x + x y - 1))
      - (12x(x^3 + 3y^2) + 6x^2 dot 3x^2) \
    &= 2y^3 + (2 + y)^2 e^(2x + x y - 1)
      - (6x(2x^3 + 6y^2) + 6x dot 3x^3) \
    &= 2y^3 + (2 + y)^2 e^(2x + x y - 1)
      - 6x(5x^3 + 6y^2) \
$
$
  (partial^2 f)/(partial y x)(x, y)
    &= (partial f)/(partial y)((partial f)/(partial x)(x, y)) \
    &= (partial f)/(partial y)(2x y^3 + (2 + y)e^(2x + x y - 1) - 6x^2 (x^3+3y^2)) \
    &= (partial f)/(partial y)(2x y^3)
      + (partial f)/(partial y)[(2 + y)e^(2x + x y - 1)]
      - (partial f)/(partial y)(6x^2 (x^3+3y^2)) \
    &= (6x y^2) + [e^(2x + x y + 1) + (2 + y)x e^(2x + x y + 1)] - 6x^2 dot 6y \
    &= 6x y^2 + (3 + y)x e^(2x + x y + 1) - 36x^2 y \
$
$
  (partial f)/(partial y)(x, y)
    &= (partial f)/(partial y)(x^2 y^3 + e^(2x + x y - 1) - (x^3 + 3y^2)^2) \
    &= (partial f)/(partial y)(x^2 y^3)
      + (partial f)/(partial y)(e^(2x + x y - 1))
      + (partial f)/(partial y)((x^3 + 3y^2)^2) \
    &= (3 x^2 y^2) + x e^(2x + x y - 1) - 2(x^3 + 3y^2) dot 6y \
    &= 3 x^2 y^2 + x e^(2x + x y - 1) - 12y (x^3 + 3y^2) \
$
$
  (partial^2 f)/(partial x y)(x, y)
    &= (partial f)/(partial x)((partial f)/(partial y)) \
    &= (partial f)/(partial x)(3 x^2 y^2 + x e^(2x + x y - 1) - 12y (x^3 + 3y^2)) \
    &= (partial f)/(partial x)(3 x^2 y^2) 
      + (partial f)/(partial x)(x e^(2x + x y - 1)) 
      - (partial f)/(partial x)(12y (x^3 + 3y^2)) \
    &= (6x y^2) + [e^(2x + x y - 1) + x(2 + y)e^(2x + x y - 1)] - 12y dot 3x^2 \
    &= 6x y^2 + (1 + 2x + x y)e^(2x + x y - 1) - 36 x^2 y \
$
$
  (partial^2 f)/(partial y^2)(x, y)
    &= (partial f)/(partial y)((partial f)/(partial y)) \
    &= (partial f)/(partial y)(3 x^2 y^2 + x e^(2x + x y - 1) - 12y (x^3 + 3y^2)) \
    &= (partial f)/(partial y)(3 x^2 y^2) 
      + (partial f)/(partial y)(x e^(2x + x y - 1)) 
      - (partial f)/(partial y)(12y (x^3 + 3y^2)) \
    &= (6x^2 y) + (x^2 e^(2x + x y - 1)) - 12[(x^3 + 3y^2) + y dot 6y] \
    &= 6x^2 y + x^2 e^(2x + x y - 1) - 12(x^3 + 9y^2) \
$

The gradient of $f(x, y)$ is

$
  D f(x, y)
    &= ((partial f)/(partial x)(x, y) thick (partial f)/(partial y)(x, y)) \
    &= ((2x y^3 + (2 + y)e^(2x + x y - 1) - 6x^2 (x^3+3y^2))
      thick (3 x^2 y^2 + x e^(2x + x y - 1) - 12 (x^3 + 3y^2) y^2)) \
$
