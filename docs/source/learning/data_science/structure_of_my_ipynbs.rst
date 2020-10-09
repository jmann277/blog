How I Structure My Jupyter Notebooks
====================================


Below is how I organize my "daily" notebooks:

#. Filename = <date of creation>_<initials>_<s1-3 work description>.ipynb
#. Title

   - <Date of notebook creation> <1-5 word description>\n Analysis by <full name>
#. To Do List

   - Write this first before any code/exposition
   - Not everything on the todo list will be completed. Don't remove items that 
     weren't successfully done. If there's an important reason for not 
     completing an item, record it in the take-aways section.
#. Take-Aways

   - Most exposition comes here.
#. Closed Questions

   - These should have both the questions and the answers. Having this section
     promotes one to actually answer the questions.
#. Open Questions

   - Put vague thoughts here
#. Import statements
#. Load Data
#. Functions
#. Code outputting text/visualizations

.. note::
   I try to not spend more than ~36 hours on a notebook. Usually it's one day working
   in the notebook and a few hours in the morning editing. After some notebooks have been
   completed I save them as html and pdfs.

.. note::
   One should be on a regular basis restart and clear all outputs of the cell to 
   avoid mistakes coming from hidden states.

.. warning::
   I freely violate many standard SWE best practices (most notably violations
   of DRY). I do however, adhere strictly to PEP8 and the Zen of Python
