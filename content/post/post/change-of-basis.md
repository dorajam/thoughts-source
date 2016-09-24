+++
date = "2016-09-20T21:53:36+02:00"
title = "Change of basis in a vector space"
hasMath = true
+++

A fascinating characteristic of the human mind is the ability to make connections between different objects and phenomena. What allows us to do this is a common ground along which things can be understood, connected and thus compared.

You can think of units as the words and expressions that define a language. I say ‘apple’ in my language, which you may or may not perceive as the same object depending whether you speak the same language as me.

To represent different points in space we need some sort of unit of measurement that allows us to speak about things in the same language. Space has no intrinsic grid. Our chosen units will allow us to understand space by breaking it into some imaginary gridlines. Along these gridlines we can define any point by using our unit of basis. This basis serves as some kind of constructing element or brick that makes up the whole.

Now imagine a flat world, a two-dimensional universe or plane that’s defined along x and y axes. The conventional way of representing points in 2D space is to use the standard coordinate system, defined by the basis vectors \(i\) and \(j\). Notice, that it is just a choice we have collectively made. We could also represent points in 2D using some alternative units of measurement (i.e. along some different set of gridlines).
Given our choice, we can now think of a vector as a scaled version of our basis vectors \(i\) and \(j\):

```
$$
  v=\begin{pmatrix}
  3\\
  2
 \end{pmatrix}
  *\begin{pmatrix}
  1 & 0 \\
  0 & 1
 \end{pmatrix}
$$
```

As in our standard system we always refer to `\(i\)` and `\(j\)` as our basis, we can ignore them and just use the following notation:
```
$$
  v=\begin{pmatrix}
  3\\
  2
 \end{pmatrix}
$$
```

**Some thoughts on linear transformation**

When it comes to matrix-vector multiplication, we can think of the matrix in terms of some linear transformation that will redefine the bases of the coordinate system. Applying some transformation \(A\) to vector \(v\) from above:

\[
 Av=\begin{pmatrix}
  1 & 2 \\
  4 & 3
 \end{pmatrix}*
  \begin{pmatrix}
  3\\
  2
 \end{pmatrix}
\]

is actually equivalent to scaling the column vectors of \(A\) by the entries of \(v\):

\[
 Av=2\begin{pmatrix}
  1 \\
  2
 \end{pmatrix}+
  3\begin{pmatrix}
  4 \\
  3
 \end{pmatrix}
\]

This way we can translate the above operation into a set of new basis vectors defined by \(A\) and a component space that will determine how much we are stretching each dimension of the system we are currently in.

Putting this into new light, we can think of this operation as preserving the component space (\(v\)) of our standard coordinate system, but _adjust our units according to the transformation matrix_. As a result, this new vector can now be understood in terms of a new set of basis vectors.

But hey, not so fast! As long as we think of the new bases in terms of some scaled version of \(i\) and \(j\), we are only speaking in our own language. We merely found a translation of a vector from an alternative universe into our system.

This is illustrated beautifully by the [3Blue1Brown guy](https://www.youtube.com/watch?v=P2LTAUO1TdA) on Youtube.

The reason I emphasised those imaginary gridlines drawn by our chosen units of basis earlier was to put you into perspective on which system of bases we are referring to. To understand this new vector in terms of your new bases, you would want to think your bases as your new units of measurement. That is, you would like to teleport from thinking of \(\begin{pmatrix}1 \\ 4\end{pmatrix}\) as \(\begin{pmatrix}1 \\ 0\end{pmatrix}\) and of \(\begin{pmatrix}2 \\ 3\end{pmatrix}\) as \(\begin{pmatrix}0 \\ 1\end{pmatrix}\). I recommend you try to visualise this in your head - or have a look at [this](https://www.youtube.com/watch?v=kYB8IZa5AuE).
We can think of some linear operation as stretching, compressing, rotating, flipping our space, or well.. adjusting those gridlines along which we can refer to points in space.

We are almost there, yay! By now, you may already be pondering about a couple of things…
\((i)\) _How is a point in space represented in one system compared to another?_
\((ii)\) _And how do we understand the same linear transformation in another system?_

**Let me jump on the first one.**

As stated earlier, a vector is just a scaled version of its bases. Remember, it is really just the product of a matrix (whose columns are the bases) and a vector whose entries are the components). What we did earlier was preserving the component space, but transforming our system of bases. This ended up taking us to a new point in space. So how do we make sure to stay in the same point? Well, we need to apply some different transformation to our new basis vectors.
