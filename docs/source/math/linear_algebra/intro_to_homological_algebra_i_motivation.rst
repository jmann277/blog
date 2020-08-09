=================================================
Introduction to Homological Algebra I: Motivation
=================================================

The following is a loose script of the following `screencast <https://www.youtube.com/watch?v=9pPS7iJ4grM>`_

Part I: Introduction
--------------------

Hello and welcome to the first lecture in a series of lectures on “homological algebra”

Instead of jumping into abstract definitions and theorems, I’ve decided to start out with a general conceptual motivation for the subject.

My goal in this lecture is to highlight some of the primary themes that we’ll be revivisiting throughout the series.

I might say stuff that you don’t understand, if that’s the case, don’t worry about it. I’ll either go through it in more detail in the coming lectures or just never refer to it again.

Again, this lecture is purely motivational. I wouldn’t recommend it, but if you’re someone who’s not into this sort of stuff, you can safely skip this lecture. Okay, so lets get into it.

Part II
-------

I’ll begin with what I consider to be I’ll begin by outlining what I consider to be the most powerful strategy in all of mathematics, which is to :

Translate your problem of interest into a sequence of linear algebra problems

I mean, I don’t think I’m exaggerating when I say that linear algebra is the only field of mathematics that humans thoroughly understand.

As a warm up, I’ll outline a few instances of this strategy

 Let’s say we’re given some complicated,  smooth function F from Rn to Rm. We can think of a point in Rn as a list of potential outcomes of n measuresa set of outcomes of some complex system we’re trying to understand, and F labels each outcome by some list of m numbers.

Moreover, let’s say we’re lucky enough to know the value of F at some point x knot.

A reasonable goal would be to approximate the behavior of F near x_0. The standard way to do this is as follows

First, we factor F as a composition of a bunch of functions, F_i

Obviously, this is only useful if these F_i are simpler than F.

We then linearize F, and use the chain rule to express the derivative of F as a composition of the derivatives of each F_i . Recall that the derivative is a LINEAR map

A theorem of Taylor says that for small delta, F is approximated by the following expression.

What’s important about this expression is that, although the left hand side is potentially super nonlinear, the right hand side is linear, and therefore reasonably tractable.

We can push these methods to higher order, stumbling into the land of perturbation theory and Feynman diagrammatics, which again, only requires us to solve linear equations.

Part III
--------

Our next example is of a more geometric flavor, one which we’ll be returning to in coming lectures.

Sooo let’s try to say something about some directed graph, Gamma.

First, note that we can deconstruct a graph into a set of edges, Gamma 1, and a set of vertices, Gamma 0.

Since every edge has a direction, there is a function, which we’ll call s (for source) which reads off which vertex the edge starts at. Simiiarly there is a function, t (for target), which reads off at which vertex the edge terminates.

The next thing we should do is to somehow linearize the above data.

Since I’m given a set of vertices and a set of edges, I should ask myself: “how do I generate a linear object from a set?”

Well this is pretty easy to answer if you already know the answer, you just take formal linear combinations of elements of that set. In other words, you take the span of the set of edges and the span of the set of vertices.

Personally, I’ve always found it awkward to write span. Moreover, it’s just ugly from a typographical perspective. Instead of writing: “the span of the set blah”, I prefer to write “ R superscript whatever that set is called”. Therefore, I’ll write R superscript gamma one and R superscript gamma zero in lieu of the span of the set of edges and the span of the set of vertices.

Next, I need to translate the data of the source and target map into a linear transformation.

Here you should think about the fundamental theorem of calculus which relates an integral over an interval to the values of the antideritative along the boundary. “final minus initial.”

Therefore, I’ll linearize the gluing data into a single map: the boundary map. This takes an edge outputs it’s quote boundary, which is it’s target minus it’s source.

So let’s see how this linearization process works on the dumbest graph I can think of: a red and a yellow vertex and an orange edge from the red vertex to the yellow vertex.

We can deconstruct it in terms of it’s edges/vertices gluing data, which I’ll depict as follows:

Linearizing this data gives that the boundary of the orange edge is yellow minus red.

Since the boundary matrix is a linear map, we can express it as the following matrix.

And since it’s always good to be trendy, I can depict it as a network/weighted bipartite graph.

I feel compelled to emphasize that this object is simply a packaging of stuff you’re already familiar with. For example, we can think of gamma as an electrical circuit.

In this case, a vector, I, in R gamma one is a labelling of the wires by numbers, which we can imagine to be describing the current through that wire in some chosen units.

Moreover, since we’ve articulated these ingredients as linear things, we can use them to write down linear equations.

For example, the equation partial I = 0. Unraveling this equation should convince you that this is equivalent to a form of Kirchoff’s law, i.e. the conservation of charge.

But the real kicker, and one of the most useful application of these lines of thoughts are to the study of the topology of this graph

For example, the number of connected components is equal to the dimension of the kernel of the transport of the boundary map. This might (correctly) light up those initiated in spectral graph theory to the relationship between the boundary matrix and the graph laplacian. We’ll go over this connection, and higher dimensional versions of it on the lecture on Hodge theory.

Similarly the number of loops, which I’ll define later but hopefully you can use your imagination to intuit what that means, is equal to the dimension of the kernel of the boundary matrix.

I won’t prove this now, but I invite ya’ll to check these statements on the following graphs.

So that’s great, but let me highlight what’s really going on here: we’re translating a geometric problem into the problem of counting solutions to LINEAR equations, the coefficients of which encode geometry. But instead of just writing down a bunch of equations, we’re writing down an object that we can use to systematically generate and manipulate interesting equations.


Part IV
-------
Now, everything that I’ve said so far is just ordinary linear algebra.

This new idea, commonly referred to as homological algebra, is to think of this data, the linearization of the set of edges, the linearization of the set of edges, and the boundary map as a single linear object, like a vector space.

This is analogous to the way in which we thought of a graph as a single object, even though it contained distinct types of ingredients of differing dimensions.

 Allow me to give three reasons why one would like to do this.

First reason: it works well in “higher” dimensions. Here I mean higher dimensions not in the sense of, for example, the number of vertices. Instead,  in the sense of linearizing higher dimensional geometric objects,  like triangles, or spheres, or donuts, or some 72 dimensional singular manifold.

Second, it’s becoming increasingly useful in data science, under the heading “topological data analysis.” At the moment this is pretty niche, but I 
usually explain it to people as creating compressed representations of data that tell you something about the “qualitative” features of one’s data set.

There’s a company, Ayasdi, which uses these methods, and if you want to know more, I’d recommend watching some of their commercials on YouTube.

These application are actually my primary motivation for going through this material. In my opinion, the background provided in the literature is… subpar. Like, I have a hard time seeing how someone would understand what they’re writing without already understanding it.

Finally, these methods have really elegant (and mathematically rigorous) applications to statistical slash quantum field theory as well as various flavors of string theory.

There’s actually a supersymmetric interpretation to some of what I’ll be talking about. Personally, I almost never think in those terms, but it constitutes a fertile connection between math and physics.

 If you don’t know what any of these words mean, no worries. For those who do, there are some standard ways of interpreting the Faddeev Poppov, BRST, and BV formalisms’ regularization and gauge-fixing procedures in this language. Even more interestingly, this theory gives a really gorgeous framework for Wilson’s renormalization procedures.

If you want to know more, or just check that what I’m saying isn’t complete bullshit, I’d recommend checking out Pavel Mnev’ lectures on the BV formalism, and Kevin Costello’s book Renormalization and Effective field theory.

It gives me goose bumps just thinking about how this approach can simultaneously solve two really subtle physical problems, which is gauge invariance and scale dependence of theory. This is a very interesting hot topic in mathematical physics, which doesn’t get the attention it deserves.

Part V: A Modified Strategy
---------------------------

So with this in place, I’d like to modify our strategy:

Translate your problem of interest into a sequence of “higher” linear algebra problems.

To be honest,  I kind of made up the term higher linear algebra. A standard mathematician would refer to what I’ll be talking about as homological algebra, and against my better judgement to call the series homological algebra so that it’s more google-able.

I like the term “higher linear algebra” for two reasons. First, and most importantly I think the term higher linear algebra is just more descriptive and sexier than homological algebra. Second, homological algebra usually means that you could be working over the integers, and therefore you can’t do everything with just matrices.

I’ll end this lecture with saying a bit about the oral history around the subject.

Personally, I think of this business as starting out in Poincare’s algebraic and qualitative approach to geometry. This was further pushed by Noether, who noted how the stuff Poincare’ was talking could be made more highly structured. For example, she noted that a lot of the numbers Poincare was computing were in fact dimensions of vector spaces.

However, the subject really took off when Grothendieck and his school further systematized and applied these methods to algebraic geometry and number theory.  His work was then consolidated by the likes of Cartan, Eilenberg, and Chevalley.


Part VI: Outro
--------------

Awesome. In the next lecture I’ll get into the fun stuff, going through some basic definitions and examples. If you have any questions, I encourage you to leave a POLITE comment, or, if you feel like you have something productive or nice to say, feel free to leave it in the comments.


