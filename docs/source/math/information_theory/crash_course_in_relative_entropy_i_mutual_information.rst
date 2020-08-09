======================================================
Crash Course in Relative Entropy I: Mutual Information
======================================================

The primary input for this discussion is a system :math:`\Omega`
along with two observables, :math:`X,Y`:

.. math::

   \Omega \overset{(X, Y)}\longrightarrow \mathcal{X}\times\mathcal{Y}

These observables allows one to obtain probability distributions on :math:`\mathcal{X}\times\mathcal{Y}` 
from probability distributions on :math:`\Omega`:

.. admonition:: Definition

   Pushing forward a probability distribution :math:`\rho` on :math:`\Omega` gives the marginal distribution:

   .. math::

      \rho_{X,Y} := (X, Y)_*(\rho) \in \mathrm{Prob}(\mathcal{X}\times\mathcal{Y})

   This generates two **marginal** distributions:

   .. math::

      \rho_X = X_*(\rho) \\
      \rho_Y = Y_*(\rho)
      

Thse two conditions are insufficient to reconstruct :math:`\rho_{XY}` (unless you know that they are independent). This is an amazing feature of probability theory. Without it, probability theory would be quite dull.

Although this is a very abstract definition, it's an abstraction that effectively encapsulates many useful applications:

.. admonition:: Example

   Distributions of strings of bits yield enlightening examples. 
   For example, :math:`X` could read off the first bit of the string, 
   while :math:`Y` reads off the last bit. 

   In this case :math:`\rho_X`, is the probability of probability that the first letter
   in a string is 0/1, while the :math:`\rho_Y` is the probability that the last letter 
   in a string is 0/1. 

   In a general corpus, it is not necessarily the case that:

   .. math::

      \rho_{XY} \neq \rho_X \cdot \rho_Y

   As knowledge about the first/last character may carry knowledge of the last/first 
   character.


Entropy & Dependency Between Variables
--------------------------------------

If :math:`X` is independent of :math:`Y`, the amount of information present in seeing both :math:`X` and :math:`Y` is the information contained in seeing :math:`X` plus the information contained in seeing :math:`Y`.

At the level of expectation values, we obtain an expression:

.. math::

   \mathcal{S}(\rho_{X \times Y})  = \mathcal{S}(\rho_X) + \mathcal{S}(\rho_Y)

.. warning::

   We will adopt the standard abusive conflation of random variables and probability distributions, writing the formula below as:

   .. math::

      \mathcal{S}(X,Y)  = \mathcal{S}(X) + \mathcal{S}(Y)

   We'd like to emphasize that the left side is the entropy of a joint distribution, while the right side is a sum of entropies of marginal distributions. 


.. note:: 

   Somewhat surprising, this additivity characterizes independence.

In general, this formula may "overestimate" the entropy:

.. math::

   \mathcal{S}(X, Y) \leq \mathcal{S}(X) + \mathcal{S}(Y) 

In other words, dependence between variables decreases entropy.
Therefore, the amount of this decrease can therefore be considered as a metric
for how much :math:`X` and :math:`Y` depend on each other.

Mutual Information 
------------------

.. admonition:: Definition

    The mutual information between :math:`X` and :math:`Y` is defined as: 

   .. math:: 

      I(X, Y) = \mathcal{S}(X) + \mathcal{S}(Y) - \mathcal{S}(X,Y) \in \mathbb{R}


.. note::

   If X and Y were independent, the sum of the first two terms is the entropy of :math:`X` and :math:`Y`. Therefore, the mutual information is how much you overestimated the average amount of information, were you to assume they were independent. 

.. note::

   As entropy is invariant under symmetries, mutual information is "symmetric."


There is another formulation: mutual information is just the entropy of :math:`X` minus the average amount of information in :math:`X` when :math:`Y` is known. This formulation relies upon a common "forgetful" Bayesian contrustion:

.. math::

   \mathrm{Prob}(X \times Y) \longrightarrow \mathrm{Maps}(X, \mathrm{Prob}(Y)) 

In other words, we assemble a joint distribution conditioned on observations of :math:`X` into a map associating an event :math:`x \in X` to the probability distribtion on :math:`Y`:

.. math::

   \rho_{X, Y}|_{x} = \rho_{X,Y}( - | x ) 

conventionally referred to as the conditional distribution.

Taking the entropy of this distribution conditional distribution gives a function whose expectation value is intimately related to mutual information:

.. note::

   .. math::

      I(X, Y) = \mathcal{S}(X , Y) - \langle \mathcal{S}(\rho_{X, Y}|_{x}) \rangle_{\rho_X}

Example: Noisy Channel
----------------------

In signal processing, mutual information quantifies to what extent one system is the signal/receiver for another.

.. admonition:: Example

   :math:`X` could be the presence of a certain type of stimuli, and :math:`Y` could be the activation of a neuron some time later.

   In this case, a low amount of mutual information refutes the hypothesis that :math:`X` can be considered as a stimuli for :math:`Y`. 

Let's imagine the stimuli :math:`X` and the neuron :math:`Y` can only take two states :math:`x_0, x_1` and :math:`y_0, y_1`. Moreover, let's for simplicity, let's assume that:

.. math::

   P(y_0 | x_0) = P(y_1 | x_1) = p

As we have control over the stimuli, let's assume that:

.. math::

   P(x_0) = P(x_1) = \frac{1}{2}

(i.e. for simplicity assume it's in a maximally entropic state). This can be visualized as a weighted bipartitie graph:

.. image:: /_static/noisy_channel.png
   :scale: 10 %
   :align: center

   

Therefore, the mutual information is a function of a single variable :math:`p`, which we can think of as the "strength of the signal." 

.. note::

   When :math:`p \neq 1`, the channel is "noisy." 

With some work, one can show:

.. math::

   I(X, Y) = 1 - \mathcal{S}(p, 1-p)
   
As the second term is the entropy in :math:`Y` (the response) when :math:`X` (the stimuli) is known.

.. note::

   The mutual information is minimized when the channel is the noisiest, and is maximized when it is pristine: :math:`p = 0` or :math:`p = 1` (in which case it is 1).

   These are the case because the former case maximizes entropy, while the latter maximizes entropy of the marginal distribution :math:`\rho_Y`.

More generally, there is some one-to-one correspondence between :math:`X` and :math:`Y`:

.. math::

   \frac{I(X, Y)}{\sqrt{\mathcal{S}(X)\mathcal{S}(Y)}} = 1

Indicating that they are in some sense "perfectly correlated" (the one-to-one correspondence is :math:`x_i \leftrightarrow y_i` when :math:`p = 1`).

.. note::

   This quantity may be thought of as analogous to a Pearson correlation coefficient. However, while the mutual information merely indicates the strength of a relationship, correlations say something about the form of the relationship.

Example: Correlated Gaussians
-----------------------------

Let's say we're considering a 2D gaussian with features :math:`X` and :math:`Y`, Pearson correlation coefficient :math:`c_{XY}`, and equal standard deviations. In this case, the mutual information takes on an elegant form:

.. math::

   I(X, Y) = -\frac{1}{2} \log (1 - c_{XY}^2)

.. image:: /_static/mutual_information_of_correlated_gaussians.png
   :align: center

In other words:

* "perfectly correlated" Gaussian features have infinite mutual information!
* independent features have no mutual information.
   
.. note::

   This gives a conceptual, heuristic interpretation of Principal Component Analysis: you're finding composite features which contain no information about each other. 

Mutual information is about comparing two distributions: the "real" distribution and the distribution which assume the features are independent. In other words, mutual information is a "relative" notion of entropy.


