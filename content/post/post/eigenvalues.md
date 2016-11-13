+++
date = "2016-09-25T00:28:47+02:00"
title = "An intuition behind eigenvalues"
hasMath = true
+++
The primary purpose of this post is to provide a thorough visual intuition behind the significance and beauty of eigenvalues. As I will not cover much of the mathematical derivations behind core concepts, I suggest you use this post to complement additional resources.   

The focus here is going to be on understanding the big picture, why those math derivations reveal something so important and applicable about eigenvalues. I hope that this will help you to go from thinking about eigenvalues as a dry math formula to thinking of them as a beautiful phenomena in high-dimensional spaces.

**An introduction to eigenvectors and eigenvalues**  

And here it begins. You have probably stumbled upon the definition of eigenvalues:
se of this post is to provide a thorough visual intuition behind the significance and beauty of eigenvalues. As I will not cover much of the mathematical derivations behind core concepts, I suggest you use this post to complement additional resources.

```$$
AV=\lambda v
$$```  
Where `\(v\)` is an eigenvector and `\(\lambda \)` is the corresponding eigenvalue. Let’s look at the right side first: You have a vector `\(v\)` that you apply the linear transformation `\(A\)`. On the left: you have the same `\(v\)` vector, but now scaled by some scalar value.

So you can think of eigenvectors as vectors that do not change their direction after some linear transformation (unless the eigenvalue is negative), but merely get scaled by some value.

Now going back to the world of linear transformation, you can think of `\(A\)` as some linear transformation and `\(v\)` as a vector that’s a linear combination of the bases of the space it is defined in (let’s say `\(v = \alpha i + \beta j\)` where `\(\alpha\)` and `\(\beta\)` are members of the component space). When applying `\(A\)` linear transformation to `\(v\)`, you are actually transforming the whole vector space it was defined in. But hey `\(v\)` was defined in terms of the bases of that space (e.g. `\(i\)` and `\(j\)`), so the bases of the new vector ‘\(Av\)' will be some new basis vectors. This is where it is extremely _important_ that you understand what’s going on visually.

If you have difficulty internalising this, I very much recommend you read my previous post on [changing the basis](https://dorajam.github.io/thoughts/post/change-of-basis/) of a vector space.

With this in mind, we can think of eigenvectors as vectors that preserve their directions in this new transformed universe. What’s so fascinating about this is that we can transform any vector from the original vector space into this new space just by knowing what the transformation’s eigenpairs are. Doing this will allow us to reduce massive amounts of information that’s needed to reconstruct all points in this new, transformed universe!

**What’s more, we can think about eigenvalues in terms of polynomials!**  
The concept of roots is important as they serve as some fixed ground to a polynomial. Upon finding all roots to a function, we have some notion of the function shape. The same way, we can think of eigenvectors as some components of a vector space that limit the behaviour of a linear transformation.

Good news, you don’t need to blindly trust me on this one.
Remember equation `\((1)\)`, we can derive the eigenpairs by finding the null space of the `\(|A - \lambda I|\)` (i.e. `\(det(A - \lambda I) = 0\)`). If A is R(nxn) then the determinant of the latter term will result in a polynomial of degree n. By the fundamental theorem of algebra, a polynomial of degree n has n (not necessarily unique) complex roots. These are the eigenvalues of A. We can think about these values as _”how much should linear transformation A be distorted so that we’ll end up in null space?”_

Why do we care about ending up in null space? Because this is the place where things go extinct. There is no way of reconstructing the previous vector space if all dimensions cease to exist. Think about matrix inversion! You could not flip space back into its original state as you just lost all your information about where you were (with no notation of basis!)

Fascinating, isn’t it?

To summarise this point, roughly you could say that the “degree" and the orientation of a distortion induced by the transformation can be measured by eigenvalues and eigenvectors, respectively.

If this wasn’t fascinating enough, allow me to keep going.

**Dimensionality Reduction and eigenbases**  
You may have heard that this can all be applied to dimensionality reduction. Let’s see how so.
Eigenvectors are linearly independent. That means, that no eigenvector can be reconstructed by taking a linear combination of another eigenvector: we just simply need them all! This might already make you ponder, would it be possible to switch from using our standard basis vectors to using these powerful eigenvectors that share this special quality? Well it depends.

There are three scenarios when decomposing eigenvectors:  
`\((i)\)` _no eigenvectors exist_  
`\((ii)\)` _the number of eigenvectors is less than the number of dimensions_  
`\((iii)\)` _the number of eigenvectors is the same as the number of dimensions_  
