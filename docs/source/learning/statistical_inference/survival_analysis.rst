=================
Elements of Survival Analysis
=================

.. contents::
   :local:

TODO:
----

[x] General Context

[x] Survival Function

[ ] Hazard Function

[ ] Examples

General Context
---------------

Fix some condition. We have a current best treatment method (e.g. placebo) 
along with a new treatment. We'd like to determine a context in which the 
new treatment is better than the current best method. The introduction
of a new treatment is costly on multiple levels. Therefore, we want to 
strong, significant evidence that the the new treatment is an improvement.
We should expect that we will typically say that we cannot conclude that 
the new treatment is an improvement.

This is of course an appropriate context for hypothesis testing.

The notion of "better" is ambiguous. For simplicity, we adopt the definition
that better means an increase in survival time. Here, survival time means
is the duration between the onset of symptoms and death under "real-life 
circumstances".

We should keep in mind that there's also an observation period. This observation
period might not contain the time of onset and the time death. For example, 
the patient might have been withdrawn from the study due to negative side effects 
or the patient might have stopped the taking the treatment.

Note that the survival time and duration of the observation period may be 
dependent.

The Data
--------

We pause to note that We should have data for each patient. This consists
of a time of onset and a time of death. In other words the data of:

.. math:: 
   I &\longrightarrow \mathbb{R} \times \mathbb{R} \\
   i &\longmapsto (\tau_i^0, \tau_i^1)

Note that we'd like everything we save should be time-invariant. Therefore, 
we can use the affine structure to think of this data as being a single real
number:

.. math:: 
   I &\longrightarrow \mathbb{R} \times \mathbb{R}^{>0} \\
   i &\longmapsto t_i = \tau_i^0 - \tau_i^1

This generates a probability distribution :math:`\rho` on :math:`\mathbb{R}`, 
by pushing forward the uniform distribution on :math:`I`.

Survival Function
-----------------

The survival function is the probability of surviving beyond a certain duration.
We can express this as:

.. math:: 
   \mathbb{R}^{>0} &\overset{S}\longrightarrow \mathbb{R} \\
   t  &\longmapsto S(t) = 1 - \int_0^t \rho

This function satisfies a few obvious properties. For example, death cannot
occur instantaneously, and the probability of survival cannot increase as time 
progresses.

.. math:: 
   S(0) = 1 \\ 
   \frac{\partial S}{\partial t} \leq 0 

Note that it's not necessarily the case that :math:`S(\infty) = 0` as the 
condition might not be uniformly fatal.

Moreover, the fundamental theorem of calculus asserts:

.. math::
    \rho = - \frac{\partial S}{\partial t} 


Hazard Function
---------------

The hazard function is another approach to survival analysis. As we'll
see, in many interesting cases the hazard function admits a much simpler 
description.

The cumulative hazard function is the information in surviving beyond a certain
duration:

.. math::
   H(t) = - \log S(t)

The hazard function is defined as:

.. math::
   h(t) &= \frac{\partial H}{\partial t} \\
   &=  \frac{ \rho }{S}

Examples
-------- 

Weibull distribution:

Hazard function 

Cumulative hazard function

Survival Function

