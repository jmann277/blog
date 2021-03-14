Categories and Relational Databases
===================================

To ease exposition, we assume that we have a fixed hashing of all the relevant
datatypes. In other words, without (so much) loss of generality, we will
assume that we are only working with a single datatype, which we'll denote as:

.. math::
   \mathcal{D}


.. note::
    
    Our discussion below can be augmented to include finite collections of 
    datatypes without much difficulty.

Every table has a primary key, "index", which we model as a finite set:

   .. math::
      I \in \mathrm{Set}


.. note::
    
    If we want, we can choose an ordering so that a number is attached to each
    primary key.

A column is an association of a datatype for every primary key. In other
words, it's a map:


   .. math::
      \begin{align*}
      I &\overset{c}\longrightarrow \mathcal{D}  \\
      i &\longmapsto c_i
      \end{align*}

A table is a finite collection of columns with a common index:

   .. math::
      \begin{align*}
      I \overset{c_k} \longrightarrow \mathcal{D} \\
      i \longmapsto c_{i,k}
      \end{align*}

where we are indexing the columns by a different finite set of column names:

   .. math::
      k \in \mathcal{K}

The universal property of the product allows us to see this as a single map:

   .. math::
      \begin{align*}
      I &\overset{\prod c_k} \longrightarrow
      \prod_{k \in \mathcal{K}} \mathcal{D}
      \simeq \mathcal{D}^{ \mathcal{K}} \\
      i &\longmapsto (\ldots, c_i^k,  \ldots )_{k \in \mathcal{K}}
      \end{align*}
      

corresponding to thinking about table as a tuple of values (of the same
cardinality) for every index value.

Many of the different APIs for tabular data come from playing around with
adjunctions.

For example, the data above is equivalent to an entry for every pair of column
and row keys:

   .. math::
      \begin{align*}
      I \times \mathcal{K} &\longrightarrow \mathcal{D} \\
      i, j &\longmapsto c_i^k
      \end{align*}

.. note::

    In the pandas, this corresponds to: ``df.loc[i, j]``

We can also see a table as a collection of columns:

   .. math::
       \begin{align*}
       \mathcal{K} &\longrightarrow \mathcal{D}^{I} 
       k &\longmapsto c^k
       \end{align*}

.. warning::
    
    When we say join, we mean inner join. Missingness will be accomodated in
    later notes, where everything will become 'pointed'.

.. admonition:: To Do 

    Classical sql join stament.

    Join statement as a where clause in sql.

    Join statement as a limit.


.. admonition:: To Do 
    
    Groupby's
