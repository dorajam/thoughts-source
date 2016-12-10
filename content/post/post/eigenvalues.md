+++
date = "2016-09-25T00:28:47+02:00"
title = "An intuition behind eigenvalues"
hasMath = true
+++
The primary purpose of this post is to provide a thorough visual intuition behind the significance and beauty of eigenvalues. As I will not cover much of the mathematical derivations behind core concepts, I suggest you use this post to complement additional resources.   

The focus here is going to be on understanding the big picture, why those math derivations reveal something so important and applicable about eigenvalues. I hope that this will help you to go from thinking about eigenvalues as some dry mathematical concepts to thinking of them as a beautiful phenomena in high-dimensional spaces.

**An introduction to eigenvectors and eigenvalues**  

And here it begins. You have probably stumbled upon the definition of eigenvalues:

```$$
AV=\lambda v
$$```  
Where `\(v\)` is an eigenvector and `\(\lambda \)` is the corresponding eigenvalue. Let’s look at the right side first: You have a vector `\(v\)` that you apply the linear transformation `\(A\)`. On the left: you have the same `\(v\)` vector, but now scaled by some scalar value.

So you can think of eigenvectors as vectors that do not change their direction after some linear transformation (unless the eigenvalue is negative), but merely get scaled by some value.

Now going back to the world of linear transformation, you can think of `\(A\)` as some linear transformation and `\(v\)` as a vector that’s a linear combination of the bases of the space it is defined in (let’s say `\(v = \alpha i + \beta j\)` where `\(\alpha\)` and `\(\beta\)` are members of the component space). When applying `\(A\)` linear transformation to `\(v\)`, you are actually transforming the whole vector space it was defined in. 
But hey `\(v\)` was defined in terms of the bases of that space (e.g. `\(i\)` and `\(j\)`), so the bases of the new vector `\(Av\)` will be some new basis vectors. This is where it is extremely _important_ that you understand what’s going on visually.

If you have difficulty internalising this, I very much recommend you read my previous post on [changing the basis](https://dorajam.github.io/thoughts/post/change-of-basis/) of a vector space.

With this in mind, we can think of eigenvectors as vectors that preserve their directions in this new transformed universe. What’s so fascinating about this is that we can transform any vector from the original vector space into this new space just by knowing what the transformation’s eigenpairs are. Doing this will allow us to reduce massive amounts of information that’s needed to reconstruct all points in this new, transformed universe!

**What’s more, we can think about eigenvalues in terms of polynomials!**  
The concept of roots is important as they serve as some fixed ground to a polynomial. Upon finding all roots to a function, we have some notion of the function shape. The same way, we can think of eigenvectors as some components of a vector space that limit the behaviour of a linear transformation.

Good news, you don’t need to blindly trust me on this one.
Based on the definition, we can now derive the eigenpairs by finding the null space of the `\(|A - \lambda I|\)` (i.e. `\(det(A - \lambda I) = 0\)`). If A is R(nxn) then the determinant of the latter term will result in a polynomial of degree n. By the fundamental theorem of algebra, a polynomial of degree n has n (not necessarily unique) complex roots. These are the eigenvalues of A. We can think about these values as _”how much should we distort a linear transformation so that we’ll end up in null space?”_

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

**scenario `\((i)\)`**  
As mentioned in my previous post on the change of basis, it is up to us what unit of basis we choose to interpret the high-dimensional space in. Given that we have n eigenvectors for an n-dimensional space, we can switch to using the eigenvectors as our basis vectors. This is also referred to as using an “eigenbasis”. If you do end up having n eigenvectors, it is very much recommended to think of your system in terms of these alternative units of basis, as they are the most effective in describing the variance of your data. You can get an insight into the variance of your datapoints with respect to their bases (i.e. their explanatory or independent variables) by their relative spread towards the different directions.    

As for dimensionality reduction, you might be thinking in this scenario it would not be possible to get rid of dimensions because, as I said, “we just need them all”. Good news there are scenarios when some eigenvectors can be neglected. For example, imagine a 3D world where two dimensions are way more stretched out as the third dimension. In this case, if the latter is below some threshold, we could choose to neglect it and rely on the more dominant dimensions. This of course comes at the cost of reducing the richness of our data.    
   
**scenario `\((ii)\)`**   
We may also end up finding less eigenvectors as the number of dimensions of our vector space. Again we could choose to use our eigenvectors as our basis vectors. But notice that if we were to do that, we would automatically end up in a subspace of our original space. This would prevent us from reapplying the same operation to a lower-dimensional space.     
   
**scenario `\((iii)\)`**  
It may not be possible to find any eigenpairs (more complex high-dimensional problems will generally have eigenvectors though). For example, a polynomial could end up having no real roots, implying the lack of eigenvalues in the space of real numbers. But even upon the existence of real roots, we might find no eigenvectors that would satisfy the basic definition described above.      
  
There is another problematic situation you may encounter in this scenario. Finding the eigen-pair that satisfies the definition above only makes sense for linear transformations by square matrices. This holds because we cannot evaluate the preservation of direction between two vector spaces that have different dimensionality.     

Eigenvalues are extremely useful in understanding the long-term behaviour or evolution of a system. Even though this post should give you some intuition behind this,
there is still a lot of pieces to put together for a comprehensive understanding. I hope you found these notes helpful. In my next blog post, I'm going to continue my discussion on eigenvalues through a somewhat more technical perspective.
