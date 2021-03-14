==================
Assessing Learners
==================

We assemble various notions of error that are useful in machine learning.

Throughout these notes, we deal with 

To-Do 
-----

- Notions of Error
    - Conditional Generalization/Test Error
    - Expected Generalization/Test Error
    - Empirical Error
    - In sample error
- optimism 
    - statements about covariance and optimism 
- Is learning possible?
   - VC dimension in relating training/in sample error pg 239 of ESL 


Binary Classifiers
------------------

The accuracy is the probability your answer is correct when randomly drawing
a sample from your observed data.

The notion below require a designation of positive and negative classes. That
is, a boolean structure on the labels.

The sensitivity of the classifiers is the accuracy when one discards all the
observations of the individuals who were not positive "in reality".

The specificity of the classifiers is the accuracy when one discards all but
those individual who are "in reality" negative.

Everything here is relative. In many cases of interest, "in reality" can not
be given any falsifiable meaning.

In practice, "in reality" means "according to some other learner". In the case
above, the learner is the nonparametric, unregularized MLE, aka the 
"empirical distribution".

This is something to keep in mind about these statistical assessments: they
are always implicitly relative. Fortunately, hypothesis testing is tailored
made for the relative situation.


Notions of Error
----------------

.. admonition:: Definition

   Conditional Generalization error

.. admonition:: Definition

   Generalization Error

.. admonition:: Definition

   kdf O

.. admonition:: Definition

   kdf O

Optimism
--------

.. admonition:: Definition

   definition of optimism

The Possibility of Learning
---------------------------

