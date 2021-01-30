================================================
Introduction to Homological Algebra V: More Maps
================================================

This is a loose script of a screencast posted to my channel on Youtube.

Description
-----------

In this example, I introduce even more examples of maps.

If you're not familiar with some of the diagrams I'm watching, I'd recommend reading up on category theory. I have a few videos on it that you may find helpful. If you prefer a more organize, coherent written account, I recommend Emily Riehl's "Category theory in context"

.. contents::
   :local:

1. Introduction
---------------

**1**

Hello! In this lecture, we introduce even more examples of maps.

2. Fundamental Class of a 2-Sphere
----------------------------------

I'll begin with a geometric example.

**1 ---> 2**

Recall that we constructed a chain complex representing the linearization of a 2-sphere, by gluing together chains on the northern hemisphere and chains on the southern hemisphere along the equator.

Although both the northern and southern hemispheres have a nonzero boundary, their difference has no boundary.

In other words, it's a cycle of degree 2, i.e. it is corepresented by a map out of R[2].

Although the two halves of the equator are connected by hemispheres, they're connected in two distinct ways. The difference between these two ways of connecting each half of the equator forms something meaningful: a cycle one degree higher that the dimension of the equator.

**2 ---> 3**

This cycle is conventionally referred to as the fundamental class of the 2-sphere. 

Although this doesn't totally make sense at this point, I recommend thinking of R[k] as a k dimensional sphere.

3. Duality Pairing
------------------

I'll now describe one way you can produce ordinary numbers from this theory.

**3 ---> 4**

The necessary input will be a cycle v and a cocycle phi. We will produce a numerical invariant from this data by pairing the cocyle with the cycle.

**4 ---> 5**

I'll do so composing the cocycle with the cycle, obtaining a map from R[k] to itself. In other words, their composition produces an endomorphism of R[k].

**5 ---> 6**

Note that if I have a number, I have an endomorphism of R[k], via multiplication. In fact, all endomorphisms of R[k] are given by multiplication by some number. In other words, there's an equivalence between endomorphisms of R[k] and numbers. 

In particular, a cocycle evaluated on a cycle is just a number.

In many instances, this number admits a clear geometric interpretation. For the sake of laziness, let me just outline this example from complex analysis. Don't worry if you can't follow this, just concentrate on the conclusion.

**6 ---> 7**

The cycle will consist of the 1/z dz, and the cocyle will be 1 over 2 pi i times the integral along a loop gamma. I'm thinking of both of these objects as living on the complex plane with the origin removed. This is reflected in the fact that 1/z dz has an essential singularity at 0 and I want gamma to avoid this singularity.

A classic result in complex analysis states that this pairing counts the number of times gamma winds around the origin.

Note that this number is a "qualitative" invariant of the path, in the sense that it doensn't change if I perturb the path.

4. Maps out of Disks
--------------------

Before moving to our next class of examples, let me introduce yet another important chain complex: D bracket k.

**7 ---> 8**

This complex is just R in dimensions k and k-1, and zero everywhere else. The boundary operator is just the identity.

As before, let's try to unravel the data of a map out of D[k] into a general chain complex V.

**8 ---> 9**

It's not hard to see that such a map coincides with the data of a vector w of degree k and a vector v of degree k-1. 

These two pieces of data must fit together continuously. In this instance, this means that you can compute v by applying the boundary of w.

Note that in particular, there's really only one piece of data, as v determines w.

Diagrammatically, the continuity condition also means that the following square must "commute". Just to be clear, the filled-in part of this square indicates that going right and down coincides with going down and right. More formally, the composition of the top and the right map equals the composition of the left and the bottom map. Pictures like these are a common way to visually unravel these objects.

**9 ---> 10**

Here are two basic examples.

First, note that D[k+1] has a cycle of degree k.

This is conventionally imagined as modeling the inclusion of a circle into a disk. In particular, the D is for disk. 

Second, note that D[k+1] has a cocycle of degree k.

This can be visualized as making a sphere out of a disk by collapsing the boundary of the disk into a point.

**10 ---> 11**

5. Boundaries
---------------

Let's say we're given a cycle of degree k. We can endeavor to "extend" this cycle to D[k+1]. More formally we want to factor the cycle through the map from R[k] to D[k+1]. This factoring is commonly referred to as an "extension problem."

I'll leave it as an exercise to show that this factoring is exactly the data of a vector of degree k+1 whose boundary is the original cycle.

When we can solve this extension problem, we call the cycle a boundary. 

Note that although the the cycle is determined by w, the converse is not true. 

**11 ---> 12**

We can obtain a cycle from every boundary, by restricting it's associated map to it's cycle. You should picture this composition as taking the boundary of the disk inside of V.

You can also make sense of this algebraically, using the fact that the boundary operator squares to zero.

**12 ---> 13**

Fortunately, not every cycle is a boundary, e.g. fundamental class of the two sphere. 

Another example of a cycle is a circle in the complex plane. This cycle is a boundary when considered as a loop inside all the of complex numbers. However, it's not a boundary if I remove the origin, introducing a "hole". 

A word of caution: the common intuition of cycles that aren't boundaries as holes can be problematic for a number of reasons. For one, its meaning is totally vague and unclear. In some sense, it's based on a clumsy understanding of Alexander Duality. But for now, it's a useful heuristic.

**13 ---> 14**

6. Cocycles Vanish on Boundaries 
--------------------------------

Note that all maps from D[k+1] into R[k] are 0. Try picturing what this is saying in terms of the pictures we've drawn of D[k+1] and R[k].

Let's imagine we're given a cocycle and a cycle of V of the same degree. 

**14 ---> 15**

If we further assume that v is a boundary, this means that the composition of v and phi factors through a map from D[k+1] to R[k]. In particular, phi of v factors through the zero map, and is therefore zero.

In other words, cocycles evaluate to zero on all boundaries. 

This derivation might feel a little queasy. I recommend showing this vanishing in a more algebraic/point-set fashion.

The contrapositive of this statement is super useful, namely that a cycle is not a boundary
if you can find a cocyle that has a nonzero pairing with that cycle. I invite y'all to think through what this is saying in the complex analysis example I present in the previous slides.  
7. Maps into Disks and Coboundaries
-----------------------------------

Next, let's examine maps into D[k]. As with maps into R[k], these have a more algebraic feel.

**15 ---> 16**

I'll leave it as an exercise to convince yourself that a map into D[k] is the data of a linear map phi_k tilde from V_k to R and a map phi_k-1 tilde from V_k-1 into R. 

These two pieces of data must fit together continuously. In this instance, this means that you can compute the value of phi_k tilde on v by applying the boundary of v and then applying phi_k-1 tilde.

In particular, there's really only one piece of data, as phi_k tilde is determined by phi_k-1 tilde and the boundary operator.

**16 ---> 17**

Given a cocycle phi, we can endeavor to "lift" this cocycle to a coboundary phi tilde. More formally, we want to factor the cocycle through the map from R[k] to D[k]. This factoring is commonly referred to as an "lifting problem."

When we can solve this lifting problem, we call the cocycle a coboundary.

Note that although the the cocycle is determined by phi tilde, the converse is not true. 

8. Coboundaries vanish on Cycles
--------------------------------

**17 ---> 18**

Note that all maps from R[k] into D[k] are 0. Try picturing this in terms of the pictures we've drawn of R[k] and D[k].

Let's imagine we're given a cocycle and a cycle of V of the same degree. 

**17 ---> 18**

If we further assume that phi is a coboundary, this means that the composition of v and phi factors through a map from R[k] to D[k]. In particular, phi of v factors through the zero map, and is therefore zero.

In other words, coboundaries evaluate to zero on all cycles.

This derivation might feel a little queezy. I recommend showing this vanishing in a more algebraic/point-set fashion.

9. Exercise
-----------

**18 ---> 19**

As an exercise, I suggest using a region which bounds a loop gamma in three dimensions to produce a coboundary of integrating along gamma.

10. Cofiber of a Matrix and Gaussian Elimination
------------------------------------------------

**19 ---> 20**

We can use a n by n+k matrix A to construct a chain complex: the cofiber of A. For simplicty, we'll assume that the rank of A is n.

For example, A could be iota_n, a matrix in reduced row echelon form. Geometrically, this is the inclusion of an n dimensional space into a n plus k dimensional space as the first n coordinates.

**20 ---> 21**

In coming lectures, I'll go deeply into the cofiber construction. For now, just note that the data of a map from D[1] into the cofiber of A can be identified with inhomogenous linear systems of equations Ax=y.

**21 ---> 22**

A final cryptic note: a consequence of Gaussian elimination is the construction of a map from the cofiber of A into the cofiber of iota_n which is a bijection on each component. This isn't entirely obvious: you'll have to give a fair bit of thought if you want to see how this works.

Aaaaaaand that's all I have for today. Have a nice day!

