==================================================
On the "Assessment" of Machine Learning Algorithms
==================================================

The primary difference between statistical inference and statistical learning is how they are assessed:

- One **validates** the conclusions of **statistical inference** (hypothesis test)
- One **simulates** the outcomes of the deployment of **machine learning** algorithms.

Validation has to do with the relative likelihood of data given hypotheses. For example, likelihood ratios and relative entropies are validation metrics. 

A classic example of an assessment is the Expected Value Framework.

In some instances, these approaches agree. For example, when the repurcussions of a mistake are indistinguishable.

Applications of Inference to Learning
-------------------------------------

Many validation metrics admit a (fairly) smooth, analytic description which can be exploited by optimization strategies based upon gradient descent. 

This forms the basis of a common technique: instead of optimizing for the outcome directly, optimize over a validation metric on a modified data set. The specifics of the modification encode one's understanding of the consequences of the model's deployment. 

For example, in medical diagnostics, one frequently encounters the problem of detecting a condition which only exists in a minority of individuals, and the misassignment of a member of the minority population (i.e. a false negative) is disproportionately great.

In this situation, deploying a model trained to optimize validation metrics would be a disaster: modification of the data is necessary for its sucessful deployment.

One common modification strategy is to engineer the empirical probability distrubtion of the classes, as this dictates how strongly each class contributes to the validation metric. Hopefully, this engineering will amplify the effect of the introduction of a false negative, which will in turn motivate the algorithm to perform better on the minority class (most likely at the cost of false positives).

Common strategies are:

- oversampling the minority 
- undersampling the majority 
- directly altering the class weights in a loss function.

Applications of Learning to Inference
-------------------------------------

Learning can amplify the statistical significance of a hypothesis test. In other words, increase the effect size. There are two ways to increase the effect size: increase the effect or decrease the variance.

Learners can increase the effect by forming an exclusion criteria, thereby selecting individuals suceptible to the intervention. 

Learners can decrease the variance by learning optimal pairings or generating simulated samples. 


