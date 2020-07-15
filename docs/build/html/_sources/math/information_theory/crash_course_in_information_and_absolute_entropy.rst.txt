Crash Course in Information and Absolute Entropy
================================================

The goal of these notes is to give a minimal introduction to the notions of information and (absolute) entropy. 

Although these notes have an expository tone, the definition admonitions provide precise definitions. 

Information
-----------

Gibbs and Shannon taught us that the likelihood of an event (according to a hypothesis) is encapsulated in the amount of useful information (according to a hypothesis) present it's observation. Heuristically, "the information in an event scales with the amount of surprise upon it's observation."

Let's imagine you're computing information in bits, and :math:`\rho` was the uniform distribution on binary sequences of length :math:`n`. 

In this case, the information contained in a binary single string :math:`S` coincides with it's length. This happens to the be: 

.. math::

   \mathcal{I}_\rho(S) = \log_2((.5^n)^{-1}) = -\log_2{(.5^n)} = n

For example, "010" contains 3 bits of information

.. admonition:: Definition

   Given a fixed probability distribution, with density :math:`\rho`, with sample space :math:`\mathscr{X}`. For any :math:`x \in \mathscr{X}`, the **information** in x is:
   
   .. math:: 
   
      \mathcal{I}_{\rho}(x) = \log\Bigl(\frac{1}{p(x)}\Bigl) = - \log(p(x)) 

.. warning::

   We will be abusive with which base we take our logarithm with respect to. The choice of a base can be thought of choice of units, and can be recovered by examining the information of obtaining a heads in a fair coin toss. 

.. note:: 

   One should always remember that the notion of information depends explicitly on the probability distribution. Information is very "context-dependent."


Below is a plot of information of an event as a function of it's likelihood:

.. image:: /_static/probability_vs_information.png

.. Note:: 

  While an event with probability 1 has no information, an event with probability 0 has an infinite amount of information.

  If obtaining information IRL requires the expenditure of energy, this provides an articulation of an event being "impossible" in the same sense it is "impossible" to go faster than the speed of light. 

Heuristically, information is dual to likelihood/probability:

* High likelihoood events have litle (useful!) information.
    * Knowing it's not going to rain next saturday has little useful information if you live in a desert.
    * :math:`2 + 2 = 4` (which we're certain is true) has zero information.
* Low likelihood events have a lot of (useful!) information.
    * Knowing it's going to be sunny next saturday has a lot of useful information if you live in Seattle.
    * :math:`2 + 2 \neq 4` has an infinite amount of information.


Entropy
-------

Information is a pairing between events and probability distributions. More formally, it's a function:

.. math::

   \mathrm{Prob}(\mathcal{X}) \times \mathcal{X} \longrightarrow \mathbb{R}

In other words, it gives a random variable for each probability distribution :math:`\rho`:

.. math::

   \mathcal{X} \overset{\mathcal{I}_{\rho}}\longrightarrow \mathbb{R}

whose expectation value provides a numerical invariant of :math:`\rho`, namely it's entropy.

We briefly pause to introduce some

.. admonition:: Notation
   
   Given a random variable :math:`X` and a probability distribution :math:`\rho`, we let 

   .. math::
      
	  \mathbb{E}_\rho[X] = \langle X \rangle_\rho
   
   denote the expectation value of :math:`X` with respect to the distribution :math:`\rho`

We can now state the

Definition of Entropy
---------------------

.. admonition:: Definition

   The (absolute) entropy of :math:`\rho` is just the expected amount of information :math:`\rho` contains:

   .. math::

      \mathcal{S}(\rho) =  \langle  \mathcal{I}_{\rho} \rangle_{\rho} 

Below is the a graph of a the entropy of biased coin toss as function of the probability of heads:

.. image:: /_static/entropy_of_biased_coin.png

.. note::

   Entropy is maximized when the coin is fair!
   
   Entropy is minimized when the coin has no randomness! 

   This is the first indication that we can think of entropy as quantifying the amount of uncertainty in a system.

.. note::

   An essential feature of this definitions is that :math:`x` goes to 0 much faster than :math:`\log(x)`. In other words,
   
   .. math::
   	
      \lim_{p \rightarrow 0^+} \bigl(- p \log(p) \bigl) = 0

   This ensures that impossible events do not cause the entropy to be infinite.

Entropy of a Normal Distribution
--------------------------------

The amount of information in a univariate normal distribution :math:`\mathcal{N}(\mu, \sigma)`, is easy to compute:

.. math::

   \mathcal{I}_{\mathcal{N}(\mu, \sigma)}(x) = \frac{1}{2} \Bigl(\frac{x - \mu}{\sigma}\Bigl)^2 - \log( \sigma\sqrt{2 \pi})

This gives a gorgeous description of it's entropy:

.. math:: 

   \mathcal{S}\bigl(\mathcal{N}(\mu, \sigma^2) \bigl)= \log ( \sigma) + \log ( \sqrt{2e\pi})

.. note::

   We see further evidence for the heuristic that entropy quantifies the randomness of the distribution, as it increase monotonically with the standard deviation. 

   .. math:: 

      \frac{\partial}{\partial \sigma}\mathcal{S}\bigl(\mathcal{N}(\mu, \sigma^2) \bigl) = \frac{1}{\sigma} > 0 

.. note::

   In general, entropy is translation/permutation invariant. Fortunately, it is not dialation invariant.


The formula for a multivariate Gaussian is analagous but more complex. What's most interesting is a manifestation of the curse of dimensionality:

.. math::

   \mathcal{S}\bigl(\mathcal{N}(0, \mathbb{1}_n) \Bigl)= n \cdot \mathcal{S}\big(\mathcal{N}(0, 1) \bigl)

So that the entropy of a unit normal scales linearly with the dimension.

.. note::

   A general fact is that normal distributions maximize the entropy amongst all distributions with a fixed mean and variance.

   More generally, all exponential families (e.g. Boltzman distributions, exponential, multinomial, ...) arise by a similar "Maximum Entropy Principle."
