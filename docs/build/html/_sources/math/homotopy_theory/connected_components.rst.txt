The Connected Components of a Space
===================================

The goal is to define the notion of the connected components of a space

Intuitively, the connected components of a space is the best approximation of
the space by a "set". 

Our definition of a set deviates from many classical definitions (e.g. ZFC), 
so we briefly pause to establish terminology:

Sets
----

A set is a space satisfying a property, namely that it lacks any interesting
geometry: it's just a bunch of points.

.. admonition:: Definition

   A *set* is a space equivalent to a (potentially infinite) disjoint union
   of points.

.. admonition:: Technical Note        

   Sets form a subcategory of spaces which is closed under coproducts and 
   limits. It is not closed under colimits (e.g. pushouts)

Nice Properties
---------------

For now, we will blackbox the definition of the connected components. Suffice 
it to say that the connected components of :math:`X` is a very special (continuous) 
labelling of points in :math:`X` by points in a very special set :math:`\pi_0(X)`:

   .. math::

      X \longrightarrow \pi_0(X)

The number of connected components of a space is the cardinality of this very
special, yet to be defined space :math:`X`.

The connected components of a space satisfy two very useful properties:

.. admonition:: Lemma

   Every every point of :math:`X` can be connected to every other point, then
   :math:`X` has a single connected component

   .. math::

      \Bigl[ X \overset{!}\longrightarrow *  \Bigl] \simeq
      \Bigl[X \rightarrow \pi_0(X) \Bigl]
   
The statement below asserts that the connected components is "monoidal":

.. admonition:: Lemma

   The connected components of a bunch of spaces :math:`\{X_i\}_{i\in I}` is
   the sum of the connected components of each space in the bunch:

   .. math::

      \pi_0 \Bigl( \sum_{i \in I} X_i \Bigl) \simeq 
      \sum_{i \in I} \pi_0\bigl(X_i\big)

Putting these together we can see that a set is it's own connected components: 

.. admonition:: Corollary

   There is a natural equivalence:

   .. math::

      \bigl[ S \rightarrow \pi_0\bigl(S\bigl) \bigl] \simeq 
      \bigl[ S \overset{1_S}\longrightarrow S \bigl]

Hopefully it's clear how to compute the connected components of a space. Break it
into a sum of spaces, 

In some sense, these propertize characterize the connected components 
construction, and therefore may be reasonably presented as a definition.
However, there is a more conceptual definition as the solution of an constrained 
optimization problem.

This is conventionally referred to as 

The Defining Universal Property 
-------------------------------

As stated in the introduction, the connected components of a space are the best
approximation of the space by a set. This heuristic suggests that we should be 
able to define it as the solution to a constrained optimization problem.  

However, unlike classical optimization theory, these constraints are expressed 
in terms of additional structure. 

In this case, the additional structure is a continuous map:

.. math::

   X \longrightarrow S

which we invite the reader to think of as a labelling of point in :math:`X` 
by points in :math:`S`.

.. note::

   The continuity condition (in this case) states that any two points that can be 
   connected by a path must be labelled by the same element in :math:`S`.

The constraint takes the form of a unique lifting property. If you're not familiar
with these sorts of definitions, my apologies. There is a more consolidated definition,
but this requires additional background in category theory.

This universal propery says that it's the largest 

.. admonition:: Universal Property

   Every map into any set :math:`S`:

   .. math::

      X \longrightarrow S

   admits a unique factorization through the connected components of :math:`X`:

   .. math::

      X \longrightarrow \pi_0(X) \rightarrow S

.. note::

   Note that the 

.. note::

   If you were to add a point to :math:`\pi_0(X)`, then you would have multiple
   ways to factor a map :math:`X \rightarrow S`.

   In other words, the uniqueness property encodes a minimization property.


We invite the reader to show that the identifications stated earlier follow from
this definition. This boils down to showing that each side of the equation 
satsifies the defining universal property.

