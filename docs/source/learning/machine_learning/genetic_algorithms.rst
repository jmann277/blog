Genetic Algorithm Notes
-----------------------

Genetic algorithms are a "meta-heuristic" optimization strategy

Essential Question
==================

"How are initially unsuited structures transformed to structures suited to a
variety of environmental niches?"

Essential Words
===============

- Environment
- Adaptive plan
- Fitness function (for the environment)
- Allele
- Epistasis
- CoAdaptation
- Enumerative plan

Environment
===========

The environment  is just a set :math:`E` . Implicitly in this formalism is a
space of environments :math:` \mathscr{E} `

Genotype
========

Specified by a set of "attainable structures" :math:`\mathscr{A}`.
This corresponds to the genotype of the state/individual.

Fitness Function
================

I am pretty sure the fitness function is a function of the . It quantifies
the relationship between the state, :math:`A \mathscr{A} ` and the environment
:math:`E \mathscr{E}`.

   .. math::
      \mathscr{E} \times \mathscr{A} \overset{\mu} \longrightarrow \mathbb{R}

Note that this notion determines the fitness of a state in various 
environments.

Phenotype
=========

Two genotypes have the same phenotype of they have the same "observable 
characteristics".

It seems implicit that at the least the notion of phenotype is an equivalence
relation, (sets for a topos in which equivalence relations correspnd to 
surjections). 

.. admonition:: Conjecture
    
    The phenotype of the individual is the small factorization of the 
    fitness function that fixes the (space of) environments?

    At first this felt too coarse. I can imagine two states having the 
    same fitness but different "observable characteristics". However,
    note that this is the same fitness for all environments.


.. admonition:: Question
    
    Does the phenotype of a state only depend on the genotype of the 
    individual? 

    It seems like it also depends on the environment and the fitness function.



.. warning::
    
    This phenotype distinction feels like nonsense

Adaptive Plan
=============

The adaptive plan, :math:`\tau` modifies the state.

The adaptive plan gives a method for modifying a given state habitating a
given a fixed environment. 

.. admonition:: Question
    
    Does the adaptive plan only depend on the fitness function?
    It seems like this is a useful assumption.

.. admonition:: Question
    
    Can I think of the fitness function as the Noether current associated to
    the adaptive plan?

.. note::
    
    Apparently, adaptive plans of the best known GAs:

    - do not directly affect the size of the population.
    - Alleles that are "close" together remain "close together upon mutation"
      with high probability.


.. admonition:: Question
    
    How is the "history" of the population. It seems like this is given by
    changes in the 'closeness" of certain alleles. Were this the case, 
    it seems like adaptive plans can depend upon the history of the states.

Epistasis
=========

Many observed characteristics (genotype) depend upon the state of multiple 
"allele". This seems like nonlinearity/correlations/interactions
between various "alleles".

Ensembles of alleles that are "good" (high fitness) are called "coadapted".
This notion clearly depends on an environment, which forms an "environmental
niche". 
