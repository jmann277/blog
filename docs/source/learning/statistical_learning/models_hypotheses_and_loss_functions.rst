=====================================
Hypotheses, Models and Loss Functions
=====================================

These notes seek to establish a precise notion of losses and functions in statistical learning using a probabilistic framework

Models and Hypotheses
---------------------

.. admonition:: Definition

   We call 

   .. math:: 

      \mathcal{H}_\mathrm{gen} := \mathrm{Prob}(\mathcal{X}\times\mathcal{Y}) 

   the **space of generative hypotheses**

A generative model is a family of generative hypotheses. 

.. admonition:: Definition

   A **generative model** is a space :math:`\mathcal{M}`, along with a map: 

   .. math::

      \mathcal{M} &\overset{\Theta}\longrightarrow \mathcal{H}_\mathrm{gen} \\
      f &\longmapsto \rho^f \in \mathrm{Prob}(\mathcal{X}\times\mathcal{Y})

Discriminative models are similiar to generative models, but are impartial in regard to the distribution of features:

.. admonition:: Definition

   We call 

   .. math::

      \mathcal{H}_\mathrm{discr} := \mathrm{Maps}\bigl(\mathcal{X}, \mathrm{Prob}(\mathcal{Y})\bigl)

   the **space of discriminative hypotheses**

.. admonition:: Definition

   A **discriminative model** is a space :math:`\mathcal{M}`, along with a map: 

   .. math::

      \mathcal{M} &\overset{\Theta}\longrightarrow \mathcal{H}_\mathrm{discr} \\
      f &\mapsto \Bigl[x \longmapsto \rho^f_x \Bigl] \in \mathrm{Maps}\bigl(\mathcal{X},\mathrm{Prob}(\mathcal{Y})\bigl)

.. note::

   In general, :math:`\Theta` is not an embedding. 

.. admonition:: Example

   When :math:`\mathcal{Y} \simeq \mathbb{R}`, the learning problem is called regression. 

   Linear regression may be described as:

   .. math::

      \mathcal{M} &\simeq (\mathbb{R}^n)^\vee \longrightarrow \mathcal{H}_\mathrm{discr} \\
      f &\simeq \beta \longmapsto \bigl( x \mapsto \delta_{\beta(x)} \bigl) \in \mathrm{Maps}(\mathbb{R}^n, \mathbb{R})

Bayes' Law factors generative models into the data of a discriminative model and a probability distribution on the space of features:

.. admonition:: Theorem

   There is a natural equivalence:

   .. math::

      \mathcal{H}_\mathrm{discr}\times\mathrm{Prob}(\mathcal{X}) &\overset{\simeq}\longrightarrow \mathcal{H}_\mathrm{gen} \\
      (f, \tilde{\rho}) &\longmapsto \bigl( (x, y) \mapsto \tilde{\rho}(x) \rho_x^f(y) \bigl)

Learning problems come in two flavors: supervised and unsupervised. We take the somewhat unusual approach, defining unsupervised learning as a special case of supervised learning:

.. admonition:: Definition

   A learning problem is **unsupervised** if:

   .. math::

      \mathcal{Y} \simeq *

.. note::

   Note this means supervised learning problems inherit any construction or property of supervised learning problems.

   However, it may be the case that they become uninteresting in the unsupervised case. For example, there are no interesting discriminative models for unsupervised learning problems.

.. warning::

   To deemphasize the difference between supervised and unsupervised, we'll adopt the notation:

   .. math::

      \Omega := \mathcal{X}\times\mathcal{Y}

Loss Functions
--------------

A loss function pairs data and models, producing a number. This both assesses models given data and allows data to act on the space of models via gradient descents.

.. admonition:: Definition

   A **loss function** is a map:

   .. math:: 
   
      \mathfrak{D} \times \mathcal{M} &\overset{\mathscr{L}}\longrightarrow \mathbb{R} \\
      (\rho, f) &\longmapsto \mathscr{L}_{\rho} (f)

   where we are viewing data, :math:`\rho`, as a finitely support probability distribution on :math:`\Omega`

.. admonition:: Example

   A standard example comes from relative entropy:
   
   .. math::

      \mathrm{Prob}(\Omega) \times \mathrm{Prob}(\Omega) &\longrightarrow \mathbb{R} \\
      (\rho_A, \rho_B) &\longmapsto \mathcal{S}(\rho_A || \rho_B)

   and is:

   .. math::

      \mathcal{D}(\Omega) \times \mathcal{M} \overset{\Theta}\longrightarrow &\mathrm{Prob}(\Omega) \times \mathrm{Prob}(\Omega)\overset{S( - || - )}\longrightarrow \mathbb{R} \\
      (\rho^\mathrm{emp}, f) &\longmapsto \mathcal{S}( \rho^\mathrm{emp} || \rho_x)
    
.. note::

   Although relative entropy does not coicide with cross entropy, they differ by a term independent of the model, so that optimizing relative entropy coincides with optimizing cross entropy.

Some loss functions do not depend on the hypothesis of the underlying model. In other words, many may no reference to :math:`\Theta`.

.. admonition:: Definition 

   In many instances, there are additional **regularization terms** and **hyperparameters**:

   .. math::

      \mathcal{M} \times \Lambda &\overset{g}\longrightarrow \mathbb{R} \\ 
      f, \lambda &\longmapsto g_\lambda(f)

   which define a **regularized loss function**

   .. math::

      \mathscr{L}_{\rho, \lambda}(f) : = \mathscr{L}_{\rho}(f) + g_\lambda(f)

.. admonition:: Example:

   A standard example comes from some linear coordinates:

   .. math::

      \mathcal{M} &\simeq \mathbb{R}^n \\
      f &\mapsto \beta

   and :math:`g_\lambda = \lambda \lvert\lvert - \lvert\lvert^2` comes from a norm with a scaling factor :math:`\lambda`: 

   .. math::

      \mathscr{L}_{\rho, \lambda}(f) : = \mathscr{L}_{\rho}(f) + \lambda \lvert \lvert \beta \lvert\lvert^2

.. note::

   Regularization alters not only the loss function, but also augments the model. As a rule of thumb, this augmentation should be slight, as one normally optimzes hyperparameters though some randomized search.
