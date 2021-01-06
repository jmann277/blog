Probabilistic Notation
======================

Personally, I find the notation and language conventionally used in probability theory imprecise to the point of confusion.

.. note::
   This becomes especially apparent when discussing the zoo of notions of error in statistical learning. To quote *Elements of Statistical Learning*:

   		Discussions of error rate estimation can be confusing, because we have to make clear which quantities are ﬁxed and which are random... Indeed, in the ﬁrst edition of our book, this section wasn’t suﬃciently clear.

The text below is purely technical, but we hope that making these essential notions explicit justifies the tedium. Throughout, we assume the reader is familiar with the notion of a probability distribution.

Since we're talking about probablilities, we should have notation for probability distributions with a fixed, explicit scope.

.. admonition:: Definition

   Given a set :math:`X`, we let 

   .. math::

      \mathrm{Prob}(X)

   denote the set of probability distributions on :math:`X`. 

.. warning:: 

   Throughout this discussion, we will abusively (and hypocritically) conflate
   a probability distribution with some associate density.


Pushforward & Restrictions
--------------------------

The next two definitions shows us how to use functions between sets to make new probability distributions.

.. admonition:: Definition: Pushforward

   A map of sets:

   .. math::

      X_0 \overset{f} \longrightarrow X_1

   induces a map of probability distributions:

   .. math::

      \begin{align*}
      \mathrm{Prob}(X_0) &\overset{f_*} \longrightarrow \mathrm{Prob}(X_1) \\
      \rho \longmapsto& \bigl[U \subset X_1  \mapsto (f_*\rho)(U) := \rho(f^{-1}(U)) \bigl]
      \end{align*}

   called the pushforward along :math:`f`. We call :math:`f_*(\rho)` the pushforward of :math:`\rho` along :math:`f` 

An example to keep in mind is when :math:`X` admits a factorization as:

.. math::

   X \simeq X_0 \times X_1

and :math:`f` is a projection onto the zeroeth component:

.. math::

   \begin{align*}
   X_0 \times X_1 &\overset{\pi^0}\longrightarrow X_1 \\
   (x_0, x_1) &\longmapsto x_0
   \end{align*}

In this case, for a probability distribution :math:`\rho \in \mathrm{Prob}(X_0 \times X_1)`, 

.. math:: 

   \pi^0_*(\rho)

is commonly referred to as the marginal distribution. It is computed through integration:

.. math:: 

   (\pi^0)_*(\rho)(x_1) = \int_{X_0}  \rho(x_0, x_1) \mathrm{d}x_0

.. note:: 
   
   Wilson's renormalization group methods apply this construction when this decomposition splits the degrees of freedom into high and low energy fields. 

   Universality/renormalizability results assert that the image of pushing forward along the projection onto the low energy degrees of freedom concentrate along a finite dimensional manifold.

.. warning::
   
   By convention, when :math:`X` is a finite set, integration coincides with summation.

.. note:: 

   A classical unsupervised technique is to represent a complicated distribution on the 'visible' degrees of freedom :math:`\rho \in \mathrm{Prob}(X)` as a pushforward of a distribution of a system augmented by 'hidden' degrees of freedom :math:`X_h`. 

   In other words, we are looking for some 

   .. math::

      \tilde{\rho}\in \mathrm{Prob}(X_h \times X)

   so that:

   .. math::
   
      \pi^h_*(\tilde{\rho}) \approx \rho

   This is useful when :math:`\tilde{\rho}` is 'simpler.' For example, when the information in :math:`\tilde{\rho}` admits a description as a low order polynomial.

   Hopefully, this suggests a relationship between certain unsupervised machine learning and Wilson's renormalization methods.

.. note:: 
 
   Conventionally, one would indicate that the input of :math:`\rho` is a tuple :math:`(x, y) \in X \times Y` by writing :math:`\rho(x, y)`. 

   This is problematic, as it is unclear whether one is referring to the distribution :math:`\rho` or the number :math:`\rho(x, y)`. In other words, it promotes type errors. Explicit is better than implicit.

When :math:`f` is an inclusion of a subset, we can generate probability distributions 'contravariantly':

.. admonition:: Definition

   Given an inclusion of a subset: 

   .. math::

      A \overset{\iota_A}\longrightarrow X

   we can restrict a probability distribution :math:`P` to :math:`A`

   .. math::

      \begin{align*}
      \mathrm{Prob}(S_0) &\overset{\iota_A^*} \longrightarrow \mathrm{Prob}(S_1) \\
      P &\longmapsto (\iota^*P)(A) := P(-|A) =: P|_A 
      \end{align*}

   conventionally referred to as the conditional distribution. We will refer to :math:`\rho|_A` as :math:`\rho` restricted to :math:`A`.

Obviously, I haven't given an actual definition of the restriction of a probability distribution. Eventually, I will define it in variational terms, invoking the notion of relative entropy.

We'd also like to discuss the special case when :math:`X_1` admits an algebraic structure. For example, when :math:`X_1 \simeq \mathbb{R}`.

"Random Variables"
------------------


.. admonition:: Definition

   A random variable :math:`\mathscr{O}` on a set :math:`X` is the data of an :math:`\mathbb{R}`-valued function on :math:`X`

   .. math:: 
      
      X \overset{\mathscr{O}}\longrightarrow \mathbb{R}

   This data naturally gives a probability distribution on :math:`\mathbb{R}`:

   .. math:: 

      \mathscr{O}_* (\rho)
   
.. warning:: 

   We apologize to those readers who are used to referring to a random variable as :math:`X`. 

   We've chosen this notation to emphasize what a random variable is in practice: an observable quantity, i.e. a 'feature'

.. note:: 
   
   The term 'random variable' is ambiguous. For example, it promotes the conflation of the ('deterministic') function :math:`\mathscr{O}` with the ('random') probability distribution :math:`\mathscr{O}_*(\rho)`. 

These are the essential ingredients of probability theory.
