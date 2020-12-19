============================================
Introduction to Homological Algebra IV: Maps
============================================

Description
-----------

In this lecture, I give the definition of a map of chain complexes, along with a few illuminating examples.

A video of this lecture may be found on my youtube page.

.. contents::
   :local:

1. Introduction
---------------
**1**
Hello. In this lecture, I’ll present a central definition of this theory. Namely, I'll discuss how to manage the complexities of chain complexes by leveraging their interrelationships, and without getting buried in technical details. 

The shelf life of many backend implementations of structures are surprisingly short. Personally, I don’t want to have to change my conceptualization every time someone figures out a better way of accomplishing the same task.

Mortals need to develop a high level language to manage complexity. Chain complexes are no exception. However, we need to be careful: we cannot go so high level that we can’t see the linear algebra that is occurring in the backend.

In this lecture, I’ll present an essential tool: the notion of a map of chain complexes. Reflecting the algebraic and geometric nature of chain complexes, these maps can be thought of as both continuous and linear. These maps will allow us to talk about things like observable properties, subobjects, and diagonalizations. 

In some sense, this is an instance of a “categorical” approach to structural complexity. This approach will help us see a chain complex as a unified geometric object with a rich algebraic structure. The geometric properties will help us generate new ideas, applications, and guesses. The linear, algebraic structures allows us to test guesses and scaleably implement applications. 	

However, to minimize prerequisites, I won’t explicitly use the language of category theory. Instead, I’ll give a somewhat bizarre introduction that will hopefully streamline the transition to a categorical approach to the subject. If you want to use these methods for anything beyond cookie-cutter-off-the-shelf applications, you have to learn how to integrate categorical thinking into your understanding. 

As before, I’ll begin with a motivational example.

**1->2**
1. Maps of Graphs
-----------------

Recall I can linearize (aka one-hot-encode) any map of sets. This gives matrix whose ijth entry is 1 if the map sends i to j and zero otherwise.

I’d like to do a similar maneuver, but with a map of directed graphs. First, I should remind y’all what a map of directed graphs is. 
**2->3**
A map, f, from Gamma to Gamma tilde, f, is two pieces of data: a map between their set of vertices and a map between their sets of edges. 

These two maps must interact in a particular way. Namely, f evaluated on the source of an edge e must coincide with the source of the f(e). Similarly, f evaluated on the target of an edge e must coincide with the target of f(e).

Note that these conditions give something akin to a finite criteria for continuity, as failing to satisfy this condition is like saying you’re ripping an edge in half. Ripping is definitely not continuous.

A nice exercise is to figure out how to see the data of a node or a edge or a clique or a node with valency 5 or a bipartite structure as a map of graphs. It’s incredible how many things you can think of in this manner. Moreover, it’s not a theory of anything, as this perspective allows you leverage this common ground by thinking about composition of maps. 

But I digress.

As in the case of sets, we’d like to construct a map on the linearizations of these graphs. 
**3->4**
We do this by one-hot-encoding the maps between the vertices and edges.
**4->5**
Note that the boundary of f of an edge = f of it’s boundary.

In other words, f “commutes” with the boundary maps.

In summary, f extends to a map which is linear, and “continuous”. This continuity condition is modeled with the condition that f commutes with the boundary map, and held because the map of graphs was continuous. I like to think of this map as the derivative.
**5->6** 

3. The Definition of a Map of Chain Complexes
---------------------------------------------

So now let me enumerate the data and conditions present in a general map of chain complexes: 
**6->7**
A map of chain complexes f, from V to W is the data of linear maps between from each V_i to W_i for every i.

In particular, it sends vectors of degree k in V to vectors of degree k in W . 
**7->8**
Moreover, f must send the boundary of v in V to the boundary of f of v in W.
**8->9**
As with graphs, I interpret this condition as a continuity condition, so that I think of a map of chain complexes as a continuous linear map.
**9-10**
4. A Map Between Linearizations of Graphs
-----------------------------------------

Not all matrices come from one hot encoding/linearizations maps of finite sets. The same is true for maps between linearizations of chain complexes. Here is an example, coming from concatenation. 

This is a map f between chains on the following two graphs. The source of f is just an edge, and the target is two edges glued together along a vertex. The edges are oriented from left to right. 

F sends the outer vertices to outer vertices, and the edge to the sum of the two edges of the target graph. 

I claim that this is a map of chain complexes. To show this, it suffices to perform a simple computation. Feel free to pause the video and see if you can do the computation yourself.
**10->11**
Aaaaaand here it is. Note that this map was “continuous” due to a beautiful cancellation.
**11->12** 
A final exercise is to try to convince yourself that this cannot be constructed as a linearization of a map of graphs.
5. Concatenation/Addition of Graphs
-----------------------------------

So let’s begin with a question: what is the data of a map out of the linearization of an edge?
**12->13**
Well, it’s two elements in V_0, and an element of V_1. However, these maps need to be sufficiently continuous, which means that the boundary of the element of V_1 must be the difference between these two elements of V_0. 
**13->14**
Hence, we should think of this data as a path. 
**14->15**
Let’s say we’re given two “paths” in a general chain complex V, so that the start of one is the end of another. 

This is precisely the data of a map out of the source of the graph I constructed above.
**15->16**
I can precompose this map with the map I constructed on the previous slide. 

I’ll leave it as an exercise to convince yourself that it makes sense to compose maps of chain complexes in the obvious way. 
**16->17**
Notice that this is simulatenously adding and concantenating the edges! This gives a more geometric interpretation of addition. 
**17->18**
This extends to higher dimensions. I won’t get into that, since mortals need the theory of operads to formally make sense of concatenation in higher dimensions. In higher dimensions there’s a very interesting space of concatenations. For example, in dimension two it’s the circle. Numpy’s axis attribute for it’s concatenation method is a shadow of this fact. 
**18->19**
6. (Co)Cycles
-------------

Before going into the next example, I need to introduce one of the most important chain complexes, R bracket k.

In degree k it’s just R, so that the degree k piece is one dimensional. Aaaand it’s zero in every degree not equal to k.

Note that this means that the boundary operator is forced to be zero. 

Since this lecture is about maps, let’s see if we can understand the data of a map from R[k] to a general chain complex V. 
**19->20**
Note that the only possible nonzero linear map must go from the degree k piece of R[k] to the degree k piece of V.

As R[k] is one dimensional, this linear map is determined by it’s value, v, at quote 1, which is a vector in V_k. As the boundary of 1 inside R[k] is zero, the boundary of v must be zero.

In other words, there is a one-to-one correspondence between the set of maps from R k to V and vectors in V of degree k whose boundary is zero.
**20->21**
We call such a map a cycle of V of degree k, and say that R[k] “corepresents” the data of a cycle of degree k.

You should think that if k =1 and V were chains on a graph, a loop in the graph (or linear combinations thereof) determines a cycle of degree 1.

What about maps out of R[k]?
**21->22**
So I’ll leave it as an exercise to convince yourself that there is a bijection between maps from V to R[k] into the set of linear functions on V_k satisfying the following condition:

Namely, it has to send v and v plus the boundary of tilde v to the same value. Note that as this map was linear, this is equivalent to the condition that it sends anything expressible as the boundary of something to zero. 

As above, we’ll call such a map a cocycle of degree k, as it’s like a cycle, but in the opposite direction. 
**22->23**
For example, let’s say that we have a cocyle phi of degree 0 on graph Gamma, and two vertices v_0 and v_1 connected by an edge e. 
**23->24**
Then the equivalence above shows us that, as phi was a cocycle, phi of v zero equals phi of v one. 

Therefore, the function phi doesn’t vary as one moves along the edges of the graph.

However phi need not be constant, as it can take on different values along different connected components of the graph. Instead, it’s only “locally constant.”

7. Examples From Calculus
-------------------------

This notion of a linear map packages a lot stuff you might be familiar with from calculus. Let’s see this in a concrete example.
**24->25**
Let’s say we’re given a path, gamma, in Euclidean space.

We can integrate vector fields along this path, obtaining a number. This operation is commonly referred to as a ”line integral along the path gamma’ and interacts with the curl in a very particular way. 
**25->26**
Recall that we packaged the linear objects of multivariable calculus: vector fields, smooth functions, gradient, curl and divergence, into a single chain complex, written as omega superscript bullet of \R^3. The identities between these operators precisely state that this data is in fact a chain complex. 

In this particular example, we’ll focus on the piece of this complex corresponding to vector fields situated in degree minus one.

I want to think of the process of taking a line integral as a map from this chain complex into R[k]. As we’re focusing on vector fields situated in degree minus one, and maps of chain complexes need to preserve the degree, this should be R bracket -1.

This whole degree business probably seems opaque right now, but it’s not random. Eventually you’ll develop an intuition.
**26->27**
With this data in place, we can ask the question: When is integrating along gamma a map of chain complexes?

By our previous identification of maps into R blacket k, we only need to ask when the following equation holds:
**27->28**
Recall that the fundamental theorem of calculus relates an integral of the derivative of a function over a region to an integral of that function along the boundary of the region.
**28->29**
Therefore, integration is a map of chain complexes whenever gamma has no boundary. In other words, when it’s a closed loop. 

Although this articulation might seem unnecessarily complex, it definitely constitutes a best practice.

Here’s a standard example of when this complexity becomes useful: namely, the gauge theories underlying the standard model and many condensed matter systems. In this language, A is referred to as a quote ‘gauge field’, and constitutes the degrees of freedom of the system of interest.
**29->30**
As everything we’re doing here is linear, A is in particular an abelian gauge field. Photons are examples of abelian gauge field.
**30->31**
In this language, f is a ‘gauge transformation.’ Recall that changing the energy function of a system by a constant number doesn’t affect any measurable quantities of the system, as the forces are in terms of gradients of potentials.

Similarly, in gauge theory there’s no measurable difference between a system in state A and a system is state A + df. It’s merely a convenient representation of our description, not the physical system we're attempting to model.
**31->32** 
Therefore, if this operation is to model a physically meaningful observable, it must give the same number on A and A + df. In other words, the integration must occur over a loop. 

Therefore, the condition of being a map of chain complexes is protecting us from making physically meaningless distinctions which might mess up counts of degrees of freedom.

Ken Wilson introduced a mild variant of this to quantum field theory in an attempt to explain the formation of hadrons from quarks. It’s called the Wilson Loop observable. 

Of course, Wilson was interested in nonabelian theories, but whatever. This is a significantly easier example to solve, and hopefully gives some idea of why this area is useful in systems whose interpretation is subtle.
**32->33**
8. Outrodution
--------------

I’ll end with a picture of a higher dimensional example of a map, obtained as the linearization of the map which collapses an edge of a triangle into a single segment. 

First, try to see if you can write down this map explicitly. 

Then, see if you can intuit how that formal thing you wrote down corresponds to the picture on the right, and how this picture encodes the fact that this map was quote continuous

Aaaaaand that’s all for today. Next time, I’ll go through even more examples of maps. Talk you at later.
