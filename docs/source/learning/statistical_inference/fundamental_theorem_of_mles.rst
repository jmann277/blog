The Statement of Fundamental Theorem of MLEs
--------------------------------------------

Loosely, the Fundamental Theorem of Maximum Likelihood Estimators states:

.. admonition:: Theorem
   
   Maximum likelihood estimators are asymptotically normal.

Making precise sense of this requires considerable work.

Recollections
=============

.. admonition:: Definition
    
    The relative entropy:
    
       .. math::
           \begin{align*}
           \mathcal{D}(\rho_A || \rho_B) &= \langle I_{\rho_B} - I_{\rho_A} \rangle_{\rho_A} \\
           &= \langle I_{\rho_B} \rangle_{\rho_A} - \mathcal{S}(\rho_A)
           \end{align*}
       

    where :math:`I_\rho` is the information associated to the distibution 
    :math:`\rho_A`

We begin with a brief review.

.. note::
   
   Recall that, given a parametric family:
   
      .. math::
          \begin{align*}
          \Theta &\overset{\theta}\longrightarrow \mathrm{Prob}(\Omega) \\
          \theta &\longmapsto \rho_\theta
          \end{align*}
          

   maximum likelihood estimation provides a map:
   
      .. math::
         \begin{align*}
         \mathfrak{D}(\Omega) &\overset{\mathrm{MLE}_\Theta}\longrightarrow 
         \mathrm{Prob}(\Omega) \\
         \rho_X &\longmapsto \hat{\rho}_\theta(X) 
         = \mathrm{MLE_\Theta}(\rho_x) := \
         \mathrm{argmin}_\theta \mathfrak{D}(\rho_X || \rho_\theta
         \end{align*}

    When the data is drawn from a probability distribution, 
    :math:`\rho \in \mathrm{Prob}(\Omega)`, the MLE map gives a probability
    distribution on the space of probability distributions:
    
       .. math::
          \mathrm{MLE}_*(\rho_\theta) := 
          \hat{\rho_\theta} \in \mathrm{Prob}(\Omega)

.. warning::
   
   Although :math:`\hat{\rho}` is "random" (in the sense that it is a
   a probability distribution) it is not a "random variable". This subtle, 
   technical point is meant to emphasize the intrinsic nature of MLEs.
   
   However, a choice of coordinates allows us to consider :math:`\hat{\rho}` 
   a random variable.

.. note::
   
   Stein's Lemma interprets the function MLEs are trying to minimize
   interpretation in terms of hypothesis testing.

Geometric Preliminaries
=======================

Given a smooth function on a manifold e.g. (:math:`\mathbb{R}^n`):

   .. math::
      M \overset{f}\longrightarrow \mathbb{R}

along with a "dummy" metric, :math:`g`, we can construct a symmetric quadratic 
form, the Hessian of :math:`f`:

   .. math::
      \mathrm{Hess}_g(f) \in \mathrm{Sym}^2(\mathrm{T}^*M)

which can be computed as second derivatives in coordinates.

In general, this form depends on the dummy metric. However, if:

   .. math::
      \mathrm{d}f|_p = 0 

then 

   .. math::
      \mathrm{Hess}_g(f)|_p \in \mathrm{Sym}^2(\mathrm{T}^*_p M) 

is independent of the dummy metric independent of the dummy metric.

Moreover, if :math:`f` is convex, :math:`\mathrm{Hess}_g(f)|_p` is a
positive definite symmetric quadratic form on :math:`\mathrm{T}_p M`.

Given coordinates :math:`\varphi`, this can be computed as:

   .. math::
      (\partial_i \partial_j \varphi^*f)(p) \in \mathbb{R}


Moreover, one can explicitly compute the covariance matrix using the following
construction:

Back to Statistics
==================

In the setting of MLE, the dictionary is:

    .. math::
        \begin{align*}
         \Theta &:= M \\
         f(\rho) &:= \mathcal{D}(\rho_\theta || \rho) \in \mathrm{C}^\infty(\Theta)
        \end{align*}
   
As we vary :math:`\theta`, we obtain an element of:

   .. math::
      f_\theta \in \Theta \times \mathrm{C}^\infty(\Theta)

In other words, the function which MLEs are trying to minimize gives
a positive definite quadratic form on the tangent space of 
:math:`\hat{\rho}_\theta`.

.. admonition:: Definition
    
    The Fisher information metric is defined as:

       .. math::
          \mathbb{I}_\Theta = \left.
          \mathrm{Hess} \bigl( \mathcal{D}(\rho_\theta || \rho) \bigl) 
          \right\vert_{\rho = \rho_\theta} 
          \in \mathrm{Sym}^2(\mathrm{T}^*\Theta)

.. note::

    As this metric is positive definite and symmetric, it defines a Riemannian
    metric on :math:`\Theta`, conventionally referred to as the Fisher-Rao
    metric
    
.. admonition:: Theorem
  
    When :math:`g \in \mathrm{Im}(\theta)`, in the limit of
    :math:`n \rightarrow \infty`:
    
       .. math::
          \hat{\rho}_\theta \sim
          \mathcal{N} \bigl(
          g, (n \cdot \mathbb{I}|_{\hat{\rho}_\theta)})^{-1}
          \bigl)

    where:

.. admonition:: Lemma
   
    When :math:`g \in \mathrm{Im}(\theta)` (i.e. the model is correctly
    "specified", MLE's are consistent.

.. note::
   
   As will be seen in the next sections, the relative entropy is a
   generalization of the effect size between two normal distibutions with
   identical standard deviations.

.. admonition:: Theorem
   
   Maximum likelihood estimation is positive definite and convex.

.. admonition:: Corrollary
  
   The central limit theorem?

