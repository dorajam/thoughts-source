+++
date = "2016-09-20T21:53:36+02:00"
title = "Change of basis in a vector space"
hasMath = true
+++
A fascinating characteristic of the human mind is the ability to make connections between
 different objects and phenomena. The set of mutual beliefs, knowledge and assumptions all serve
  as a common ground that enables us to gain a deeper understanding about our surroundings.

You can think of words and expressions as some units that define a language. I say ‘apple’
 in my language, which you may or may not perceive as the same object depending whether you
 speak the same language as me.

To represent different points in space we need some sort of unit of measurement that allows
 us to speak about things in the same language. Space has no intrinsic grid. Choosing a unit
  of measurement is what will allow us to break space into some imaginary gridlines. Along these grids
   we can now describe any point in space. Consequently, we can think about our choice of basis as a constructing element or building block that makes up a whole.

Now let's imagine a two-dimensionalplane that’s defined along x and y axes.
 The conventional way of representing points in 2D space is
 to use the standard coordinate system, defined by the basis vectors `\(i\)` and `\(j\)`.
  (Notice, this is just a convention. We could also represent points in 2D using some alternative units of measurement i.e. along some different set of gridlines).

We can now think of a vector as a scaled version of our chosen basis vectors `\(i\)` and `\(j\)`:
```$$
  v=
\begin{pmatrix}
  1 & 0 \\
  0 & 1
 \end{pmatrix}
\begin{pmatrix}
  3\\
  2
 \end{pmatrix}=
 \begin{pmatrix}
  3\\
  2
 \end{pmatrix}
$$```  
or put differently, a linear combination of the bases of our vector space:
```$$
 v=3\begin{pmatrix}
  1 \\
  0
 \end{pmatrix}+
  2\begin{pmatrix}
  0 \\
  1
 \end{pmatrix}
 $$```  
**Some thoughts on linear transformations**  
Similarly to the above, when it comes to matrix-vector multiplication, we can think of the matrix in terms of some linear transformation that will redefine the bases of the coordinate system. Applying transformation `\(A\)` to vector `\(v\)`,
```$$
 Av=\begin{pmatrix}
 1 & 2 \\
  4 & 3
 \end{pmatrix}
  \begin{pmatrix}
  3\\
  2
 \end{pmatrix}
$$```  
is actually equivalent to scaling the column vectors of `\(A\)` by the entries of `\(v\)`:
```$$
 Av=3\begin{pmatrix}
  1 \\
  2
 \end{pmatrix}+
  2\begin{pmatrix}
  4 \\
  3
 \end{pmatrix}
 $$```  
Putting this into new light, this operation can be understood as preserving the component space `\(v\)` defined in  our standard coordinate system, but _adjusting the basis vectors according to the transformation matrix_. As a result, this new vector is just the linear combination of the same components and of a new basis.

But hey, not so fast! As long as we think of the new bases in terms of some scaled version of `\(i\)` and `\(j\)`, we are only speaking in our own language. We merely found a translation of a vector from an alternative universe into our system.

This is beautifully illustrated by [3Blue1Brown](https://www.youtube.com/watch?v=P2LTAUO1TdA) on Youtube.

The reason I emphasised those imaginary gridlines drawn by our chosen units of basis earlier
was to put us into perspective on which system of bases we are referring to. To understand this new vector in terms of your new bases,
we would want to think of our bases as the new units of measurement. To do this, let's teleport from thinking of
`\(\begin{pmatrix}1 \\ 4\end{pmatrix}\)` as `\(\begin{pmatrix}1 \\ 0\end{pmatrix}\)` and of `\(\begin{pmatrix}2 \\ 3\end{pmatrix}\)` as `\(\begin{pmatrix}0 \\ 1\end{pmatrix}\)`.
To carry out this backwards transition we need to apply the inverse of the same operation. This inverse matrix can then be thought of as ‘undoing’ the original transformation, hence serving our goal perfectly.

I recommend you try to visualise this in your head - or have a look at [this](https://www.youtube.com/watch?v=kYB8IZa5AuE).
I hope by now you are starting to see that linear transformations are really just the same thing as changing the bases of our vector space, i.e. o stretching, compressing, rotating, flipping our space and thus, adjusting the gridlines that serve as our reference points.

**With all this in mind, we can now address the following questions:**  
`\((i)\)` _How is a point in space represented in one system compared to another?_  
`\((ii)\)` _And how do we understand the same linear transformation in another system?_  

**Let's jump on the first one...**  
I’m going to rely on my favourite 3Blue1Brown guy’s explanation and use Jennifer as the
representative of some alternative coordinate system.
As stated earlier, a vector is just a scaled version of its bases. Remember, it really is just the product of a matrix (whose columns are the bases) and a vector (whose entries are the components). What we did earlier was preserving the component space, but transforming our system of basis to Jennifer's. Once again, let me clarify, this new system of bases is described in our units `\(i\)` and `\(j\)`.

Geometrically this transformation can give us an insight into what Jennifer’s system is like, yet mathematically it is a translation of her world to our world.

When we referred to the same vector but in two different systems, we in fact ended up talking about two different points in space. So how do we make sure to refer to the same point? Well, we need to apply some different transformation to Jennifer’s basis vectors. This is again where the inverse transformation comes in handy.
So let’s flip this around, and understand a vector from Jennifer’s point of view.  
To understand what she means by vector `\(v\)`:
```$$
Av=\begin{pmatrix}
  2 & -1 \\
  1 & 1
 \end{pmatrix}
  \begin{pmatrix}
  3\\
  2
 \end{pmatrix}=
  \begin{pmatrix}
  4\\
  5
 \end{pmatrix}
 $$```  
But for her, the same vector is understood as:
```$$
A^{-1}v=\begin{pmatrix}
  2 & -1 \\
  1 & 1
 \end{pmatrix}^{-1}
  \begin{pmatrix}
  3\\
  2
 \end{pmatrix}
$$```  
Consequently, vector `\(v\)` in her language can be described as follows:
```$$
\begin{pmatrix}
  1/3 & 1/3 \\
  -1/3 & 2/3
 \end{pmatrix}
  \begin{pmatrix}
  3\\
  2
 \end{pmatrix}=
\begin{pmatrix}
  5/3\\
  1/3
 \end{pmatrix}
$$```  
_**Remember, this inverse trick makes it possible to translate back and forth from different coordinate systems.**_  

**Let's tackle the second question...**  
Similarly as in [3Blue1Brown](https://www.youtube.com/watch?v=P2LTAUO1TdA), I’m going to demonstrate this
by performing a rotation as a transformation. This operation is then denoted by the landing points of rotating both `\(i\)` and `\(j\)` in our coordinate system.
```$$
 M=\begin{pmatrix}
  0 & -1 \\
  1 & 0
 \end{pmatrix}
$$```  
Notice that applying M directly to an alternative system is not equal to performing the same 90-degree rotation. Why? Think about a stretched out space! Now the angle between the basis vectors may be greater than 90 degrees, resulting in a different point in space than where we intended to land.

So let’s describe the correct transformation in Jennifer's language:
```$$
\begin{pmatrix}
  2 & -1 \\
  1 & 1
 \end{pmatrix}^{-1}
\begin{pmatrix}
  0 & -1 \\
  1 & 0
 \end{pmatrix}
\begin{pmatrix}
  2 & -1 \\
  1 & 1
 \end{pmatrix}v=
\begin{pmatrix}
  1/3 & -2/3 \\
  5/3 & -1/3
 \end{pmatrix}v
$$```  
That is,  
1. we first understand where Jennifer’s unit vectors are by scaling our bases (in our language)  
2. then apply the rotation (in our language)  
3. finally, translate to her language  

The composition of these three matrices has translated `\(M\)`, a 90-degree rotation described in our vector space, to Jennifer's coordinate system. 
In general, whenever you see an expression of the following form:
```$$A^{-1}MA
$$```  
it implies that we have shifted our perspective into an alternative system of coordinates. This will be extremely important for my next post on eigenvalues.
