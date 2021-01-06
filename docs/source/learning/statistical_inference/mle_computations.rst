Asymptotic Computations of MLEs
-------------------------------

We apply the Fundamental Theorem of MLEs to a few computations

.. admonition:: Exercise

   The relative entropy of the empirical distribution and  distributions on a
   bit.

   Recall the classical coordinates on probability distributions on
   :math:`\{0,1\}`:

      .. math::
         \begin{align*}
         \mathrm{Prob}(\{0,1\}) & \overset{\simeq} \longrightarrow \mathbb{R} \\
         \rho &\longmapsto \rho(0) = p
         \end{align*}

   given data :math:`X \in \{0,1\}^{times N}` of size :math:`N`, drawn from a
   distribtion :math:`\rho` and a distribution :math:`\rho_\theta`:

      .. math::
         \begin{align*}
         \mathcal{D}(\rho_X || \rho_\theta) &\approx 
         \mathcal{D}(\rho || \rho_\theta) \\
         &= - \bigl(\rho \log\rho_\theta + (1-\rho)\log(1 - \rho_\theta) \bigl)
         + \mathcal{S}(\rho)
         \end{align*}
         
   where the last term is the entropy of the empirical distribution, and 
   does not depend on :math:`\rho_\theta`.
   
.. admonition:: Example
   
   We now compute the standard devation of :math:`\hat{\rho}_\theta`, using
   the computation above and the fundamental theorem. As we are in dimension
   1, the hessian is just a second derivative:
   
      .. math::
         \begin{align*}
         \sigma_\theta &= 
         \partial^2_{p_\theta} \mathcal{D}(\rho || \rho_\theta)
         \lvert_{\rho_\theta = \rho} \\
         &= \bigl( \frac{1}{p} + \frac{1}{1-p} \bigl)^{-1} \\
         &= p(1-p)
         \end{align*}
         
   This recovers a result which is commonly justified using the central limit
   theorem. I prefer this derivation.

.. admonition:: Exercise

   The relative entropy of the empirical distribution and multinomial
   distribution
   
.. admonition:: Example
   
   distributions on a finite set
   compute the hessian
   find normal coordinates of the hessian
   say something interesting

.. admonition:: Exercise

   Recall the standard coordinates on the space of normal distributions
   on :math:`\mathbb{R}` in terms of it's first two cumulants: the 
   expected value and squared standard deviation.
   
      .. math::
          \begin{align*}
             \mathcal{D}(\rho_0 || \rho_1) &= \frac{1}{2} \Bigl(
             \log \bigl( \frac{}{}  \bigl)
          \end{align*}
      
   Here, we are working in units in which:
   
      .. math::
         \mu_0 = 0, \sigma_0 = 1

.. admonition:: Example

   normal distribution with fixed standard distibution
   compute the hessian
   find normal coordinates of the hessian
   say something interesting

.. admonition:: Exercise

   The relative entropy of the empirical distribution and  

.. admonition:: Example
   
   general normal distributions
   compute the hessian
   find normal coordinates of the hessian
   say something interesting

.. admonition:: Exercise

   The relative entropy of the empirical distribution and  

.. admonition:: Example
   
   exponential distribution
   compute the hessian
   find normal coordinates of the hessian
   say something interesting

.. admonition:: Exercise

   The relative entropy of the empirical distribution and  

.. admonition:: Example
   
   poisson distribution
   compute the hessian
   find normal coordinates of the hessian
   say something interesting

.. note::
   
   these are spherical and hyperbolic metrics

