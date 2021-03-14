The Zen of TDA
--------------


.. warning::
    
    This is an extremely high level perspective on something that can be
    described very concretely. The author has found this layer abstraction
    very useful in remembering and relating the zoo of variations present in
    the literature.

In general, data science wants a strategy of the form:

   .. math::
      \mathrm{Data} \overset{\mathrm{ML}} 
      \longrightarrow \mathrm{Insight}

Traditional methods use probabilities:

   .. math::
      \begin{align*}
      \mathrm{Data} &\overset{\mathrm{Stats}}\longrightarrow
      \mathrm{Probabilities} \overset{\mathrm{Prob}}
      \longrightarrow \mathrm{Insight} \\
      \mathrm{sample} &\longmapsto \mathrm{(reg.)\ MLE}
      \longmapsto \mathrm{descriptive\ statistic}
      \end{align*}
      
TDA uses spaces:

   .. math::
      \mathrm{Data} \longrightarrow \mathrm{Spaces}
      \longrightarrow \mathrm{Insight}

It's based on the simple

.. admonition:: Hypothesis
     
   Data has shape:

   .. math::
      \begin{align*}
      &\mathrm{Data} \longrightarrow \mathrm{Spaces}
      \end{align*}
      

   and shape has meaning:

      .. math::
          
         \begin{align*}
         \mathrm{Spaces} \longrightarrow \mathrm{Insight}
         \end{align*}
      

In other words, TDA uses spaces to understand data.

.. admonition:: Example
    
    
   We can use sample data to build a graph:

    .. math::
      \mathrm{sample} \longmapsto \mathrm{graph}

   and draw that graph:

   .. math::
      \mathrm{graph} \longmapsto \mathrm{pretty\ picture}

   or say something about the graph:

   .. math::
      \mathrm{graph} \longmapsto \mathrm{number\ of\ connected\ components}

Here is a loose

.. admonition:: Definition
    
    TDA is the application of constructions, deconstructions, and analyses of
    spaces to data science.

The theory behind spaces has a name.

.. admonition:: Definition
    
    Homotopy theory is the (de)construction and analysis of spaces

This gives a more concise definition of TDA:

.. admonition:: Definition
    
    TDA uses homotopy theory to understand data.

.. warning::
    
    Unless you have a very strong (e.g. graduate level) background in 
    mathematics, don't try to learn this stuff by (only)
    reading a textbook. 

    #. Find someone to talk to about it who already knows about it. For
       example, go to a conference.
    #. Find a project to use this stuff in.
    #. Read a book.
    #. Combine them.

.. admonition:: To-Do

    Add useful references
