=========================================
From Samples to Probability Distributions
=========================================

The goal of these notes are to show how to think of sample data as probability
distributions satisfying a finite support condition.

The Empirical Distribution
--------------------------

Usually, sample data is thought of a bunch of tuples :math:`z_i` for all
:math:`i=0, \ldots, N`.

In other words:

.. _probabilistic-notation:

.. admonition:: Definition

   **Sample data** is the data of a map:

   .. math:: 

      I &\overset{S}\longrightarrow \Omega \\
      i &\longmapsto S_i =: z_i

   for some finite indexing set :math:`I`. We also adopt the following
   notation:

   .. math::

      S \in \Omega^I

.. admonition:: Example
   
   We review how the technology of tabular data fits into this perspective.
   For simplicity, we'll consider the case of a table with two columns.
   Let's say there is a column with a string type. As we're speaking on a very
   general level, we'll identify strings with some hashing:
    
      .. math::
         \mathrm{String} \simeq \mathbb{N}

   Furthermmore, let's say the second column is a float, i.e. a element of
   :math:`\mathbb{R}`.  In this case, 
   
      .. math::
         \Omega \simeq \mathbb{N}\times \mathbb{R}

   Let's further assume that our table is indexed by some set of 
   "surrogate keys" :math:`I`. 

   This this case, the formal definition of sample data: 
      .. math::
         I \rightarrow \mathbb{N} \times \mathbb{R}

   is the data of, for every :math:`i \in I`, a string and a float.
   This is, in particular, the data of a table with two columns. The general
   situation follows, mutatis mutandi.
    
.. admonition:: Digression

   It's common to factor :math:`\Omega` as:

   .. math::

      \Omega \simeq \mathcal{X} \times \mathcal{Y}

   and call :math:`\mathcal{X}` the **space of features**, and
   :math:`\mathcal{Y}` the **space of labels**. 

   The choice of a factorization establishes a supervised learning problem.

   We view the "supervision" of a learning to be a structure. The
   distinction between the features and labels (which we can think of as columns
   in a table) is a choice we make or context gives. We view the situation

.. admonition:: Example

   Standard examples to keep in mind are:

   #. :math:`\mathcal{Y} = \{0, 1\}` corresponds to binary classification problem 
   #. :math:`\mathcal{Y} = J`, for a finite set :math:`J`, corresponds to multiclass classification problem 
   #. :math:`\mathcal{Y} = P(J)` corresponds to a labelling problem. Here :math:`P(-)` denotes the power set construction.  
   #. :math:`\mathcal{Y} = \mathbb{R}` corresponds to a regression problem

.. admonition:: Definition
   
   Let :math:`\rho_I^\mathrm{unif}` denote the uniform distribution on the set
   :math:`I`. Viewing the sample as a map allows us to efficiently generate a
   distribution on :math:`\Omega`:

   .. math:: 

      \rho_S := S_*(\rho_I^\mathrm{unif}) = \frac{1}{n} \sum_{i=1}^n
      \delta_{x_i}

   which we shall refer to as the **empirical distribution** associated to the
   sample :math:`S`. 

.. warning::

   These notes assume a familiarity with notation reviewed in
   :ref:`probabilistic-notation`.

.. note::

   This is construction is implicit in the construction of a histogram from
   data.

.. admonition:: Motivation
   
   In practice, the ordering of a sample has any meaning in terms of the
   problem at hand. More concretely, no learning algorithm should depend on any
   ordering of the data, as any such dependence would introduce superfluous
   variance to the model, without any reciprocal reduction in bias. 

   Therefore, if we wanted to count the number of of all possible samples, we
   must not overcount the number of samples by individually counting samples
   differing by a permutation. 

   One benefit of the notion of the empirical distribution is that it naturally
   avoids the quotient process. In other words, it's a convenient
   representation of the moduli space of samples.

.. note::

   Moreover, different choices for the distribution on :math:`I` yield
   different "class weights" for the learning problem. This forms the basis for
   boosting algorithms.

.. note::

   In classical information theory, the empirical distribution is referred to
   as the **type** of the sample. 

Probability Distributions with Finite Support
---------------------------------------------

Below is a property which, in some sense, characterizes data probabilistically:

.. admonition:: Definition

   A **probability distribution with finite support** is a probability
   distribution of the form:

   .. math::

      (I \overset{S}\longrightarrow \Omega)_*\rho_I = \sum_{i=1}^n \rho_i
      \delta_{x_i}

   for some sample :math:`S` and :math:`\rho_I\in\mathrm{Prob}(I)`. 

.. note::

   In other words, when the distribution has finite support, only finitely many
   points have nonzero probability. 

We introduce the following notation to invite the reader to imagine sample data
as forming a geometric object. 

.. admonition:: Definition

   The **space of sample data**:

   .. math::

      \mathfrak{D}(\Omega) := \mathrm{Prob}^\mathrm{fin}(\Omega)

   is defined as the space of finitely supported probability distributions. 

   At times, we may abusively omit reference to :math:`\Omega` and simply write
   :math:`\mathfrak{D}`.


The space of sample data admits a filtration/stratification by cardinality.
Below are the strata of this stratification.

.. admonition:: Definition

   We denote:

   .. math::

      \mathfrak{D}_n \subset \mathfrak{D}

   the space of distributions supported on :math:`n` points, and

   .. math::

      \mathfrak{D}_{\leq n} \subset \mathfrak{D}

   the space of distributions supported on less than :math:`n+1` points

.. admonition:: Example

   When :math:`n=1`, 

   .. math::

      \mathfrak{D}_1 (\Omega) \simeq \Omega

.. note::

   Note that the empirical distribution can be considering as a point in the
   space of samples, in that there is a natural factorization:

   .. math::

      \Omega^I \rightarrow \mathfrak{D}(\Omega) \rightarrow
      \mathrm{Prob}(\Omega)


Large Samples Approximation of Distributions
--------------------------------------------

Fix a probability distribution :math:`\rho \in \mathrm{Prob}(\Omega)`. This in
turn generates a distribution

.. math::

   \rho^{\otimes n} \in \mathrm{Prob}(\Omega^n)

for every :math:`n` in the standard fashion.

.. note:: 

   This distribution satisfies a maximum entropy principle: it maximizes
   entropy subject to the condition that it's marginals coincides with
   :math:`\rho`:

   .. math::

      (\Omega^{\times n} \overset{\pi^i}\longrightarrow \Omega)_*\tilde{\rho} =
      \rho

   for every :math:`i`.

The following theorem is essentially the inferential interpretation of
probability (i.e. outcomes of repeated trials generate the probability
distribution):

.. admonition:: Theorem

   .. math:: 

      \bigl(\Omega^n \rightarrow \mathfrak{D}_{\leq n} \rightarrow
      \mathrm{Prob}(\Omega)\bigl)_* \rho^{\otimes n} 
      \overset{n\rightarrow \infty}\longrightarrow 
      \delta_{\rho} \in \mathrm{Prob}\bigl(\mathrm{Prob}(\Omega) \bigl)

