====================================================
Introduction to Categories I: The Data of a Category
====================================================


The following is a loose script of the following `screencast <https://www.youtube.com/watch?v=GGL6AZpO7Ck&t=6s>`_

Part I: Introduction
--------------------

Hello, thanks for tuning. In this video, Iʼll introduce the notion of a category.

A category is a formal mathematical gadget, and therefore consists of an interrelated collection of data, satisfying certain conditions.

In the case of a category, one must specify 3 pieces of data and check two conditions. The first two pieces of data form what is conventionally referred to as a directed graph. The third piece of data is novel to categories, although in future lectures weʼll see that it is present in an interesting class of examples.

Iʼll begin by presenting the general definition. Iʼll go through explicit examples in the next video, along with common interpretations of a categoryʼs constituents.

Like any mathematical concept, one shouldnʼt expect to get a concrete understanding of what a category is until one wrestles with a broad class examples. But for now, just focus on the visual language accompanying the definition, as it forms the basis for much of the intuition.

Part II: The Data
-----------------

The first piece of data in a category $\mathscr{C} is a collection of objects. Weʼll depict these objects as dots. Someone in network theory might call these nodes. A geometrically minded person would say point.

Iʼll use the word object. Think: “object of interest”. Iʼll adopt a point-set-looking notation of x \in C, shorthand for x is an object of C


The second piece of data is a collection of maps between pairs of objects. Weʼll represent these as arrows starting at one object, the “source”, and ending aanother object, the “target”.

Someone in network theory might call these directed edges, a geometrically minded person would say a one way path, and a category theorist would say morphism. Iʼll use the word map.

Between any pair of objects, there is a set of maps, and Iʼll adopt the notation f \in Maps_C(x, y), shorthand for “f is a map in C from x to y”

The third piece of data is novel to categories. It consists of a procedure for composing compatible ordered pairs of maps, thus obtaining a new map.

Here, compatible means that the target of the first map f is the source of the second map g. In other words, the f begins where g ended. Their composite, h, must start where the f began and end where g ended.

Think “ h is formed by first doing f, then g”. Weʼll draw this as a triangle, whose interior is labelled by the equation f composed with g equals h.

Dually, We could say that h factors as a composition of f and g.

As the picture indicates, the source of h is the source of f, while the target of h is the target of g.

Quick word of warning. For historical reasons, this composition is normally written as g circle f. In my opinion, the strength of categories lie in its visual language, so I’ve decided to prioritize the compatibility between the written and the visual over being aligned with historical tradition.

In my opinion, this written notation doesn’t scale very well. Eventually our examples will become so complex that all the written notation will be in the backend so to speak, and mortals will be obligated to think in terms of this diagrammatic language.

Hopefully, this makes sense to those familiar with computational graphs. In some sense, category theory specializes to a more robust formalism to deal with complex structures normally conceptualized in terms of computational graphs.

And thatʼs it. If you want to construct a category, you have to specify three pieces of data: objects, maps between pairs of objects, and a procedure for composing compatible pairs of maps.

This data mu st satisfy 2 properties, one existence and one uniqueness condition. The purpose of these conditions may seem opaque at first, but their role will become clearer as we progress.

Part III: The Conditions
------------------------

The first condition is an existence condition. It says that every object x has an associated map starting and ending at itself called the identity map. This map is special, in that composing with the identity does nothing.

More precisely, given any map f into x, f composed with the identity map is just.... f . Similarly for any map g into x, g composed with the identity is just... g. Dually, one might say every map factors through the source and targetʼs identity.

The second (and final) condition is about the uniqueness of composition. First, note that given any triplet of compatible maps, there are two potentially distinct ways in which one can compose these maps .

One way would be to first compose f and g, and compose that composition with h. The other way would be to compose g and h, and then compose f with that composition.

A priori, these two maps could be potentially different. The associativity condition asks that they be equal

Aaaaaaaaand thatʼs it. At this point, the only mystery is how these things are useful.

In summary, if you want a category, you need to first specify three pieces of data: a collection of objects, maps between objects, and a procedure for composing pairs of compatible maps.

Geometrically, we represent these as zero, one, and two dimensional shapes.

Once this is specified, you need to check two conditions. The first is that every object has an identity map starting and ending at cet object, whose composition with another map returns the map you started with. Think 6 times 1 equals 6 equals 1 times 6.

Finally, you need to check that given a string of compatible maps, it doesnʼt master in what order you successively compose them in.

Now that weʼve gotten that out of the way, in the next video weʼll get into the meat of things and write down some interesting examples.

Before checking out the next video, Iʼd recommend trying to think of some structures  from your own interests that feel like they could form categories, whether they satisfy the above properties, and, if they donʼt, seee if you can to modify the initial construction so that they do.

Oh, and for those of you who enjoy pushing around formal symbols, Iʼd recommend proving that any two identity maps are equal.

And thanks for tuning in!
