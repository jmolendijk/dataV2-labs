# Lab | Reading About Statistic Concepts

*Sarah Busson - Amsterdam DAFT 07/20*

## Challenge 1: What is the difference between expected value and mean?

To answer this question, we would be tempted to look for the definition of the expected value and the mean as two different entities. But they are so closely related that we'll have to look instead of the type of data, wether it's a set of values or a set of probabilities.

In the case of a set of values, if we chose a random value within the given list, then the expected value is simply equal to the mean !
The mean is found by adding all of the values of the given list together and dividing by the number of items in the set.

But in the case of a set of probability, the mean and the expected value are two different variables.
The basic expected value formula is the probability of an event multiplied by the amount of times the event happens: (P(x) * n). 
The formula changes slightly according to what kinds of events are happening.


### Sources
https://www.statisticshowto.com/probability-and-statistics/expected-value/


## Challenge 2: What is the "problem" in science with p-values?

How do statistics so often lead scientists to deny differences that those not educated in statistics can plainly see? 

we should never conclude there is ‘no difference’ or ‘no association’ just because a P value is larger than a threshold such as 0.05 or, equivalently, because a confidence interval includes zero. Neither should we conclude that two studies conflict because one had a statistically significant result and the other did not. These errors waste research efforts and misinform policy decisions.

Surveys of hundreds of articles have found that statistically non-significant results are interpreted as indicating ‘no difference’ or ‘no effect’ in around half 

https://media.nature.com/lw800/magazine-assets/d41586-019-00857-9/d41586-019-00857-9_16551624.jpg
spread of misuse on p-value

We are not calling for a ban on P values. Nor are we saying they cannot be used as a decision criterion in certain specialized applications (such as determining whether a manufacturing process meets some quality-control standard).  we are calling for a stop to the use of P values in the conventional, dichotomous way — to decide whether a result refutes or supports a scientific hypothesis5.

The trouble is human and cognitive more than it is statistical: bucketing results into ‘statistically significant’ and ‘statistically non-significant’ makes people think that the items assigned in that way are categorically different

Unfortunately, the false belief that crossing the threshold of statistical significance is enough to show that a result is ‘real’ has led scientists and journal editors to privilege such results, thereby distorting the literature.

In fact, random variation alone can easily lead to large disparities in P values, far beyond falling just to either side of the 0.05 threshold. Whether a P value is small or large, caution is warranted.

We must learn to embrace uncertainty.

An interval that contains the null value will often also contain non-null values of high practical importance. That said, if you deem all of the values inside the interval to be practically unimportant, you might then be able to say something like ‘our results are most compatible with no important effect’.

When talking about compatibility intervals, bear in mind four things. First, just because the interval gives the values most compatible with the data, given the assumptions, it doesn’t mean values outside it are incompatible; they are just less compatible.
Second, not all values inside are equally compatible with the data, given the assumptions. The point estimate is the most compatible, and values near it are more compatible than those near the limits.Interpreting the point estimate, while acknowledging its uncertainty, will keep you from making false declarations of ‘no difference’, and from making overconfident claims.
Third, like the 0.05 threshold from which it came, the default 95% used to compute intervals is itself an arbitrary convention. It is based on the false idea that there is a 95% chance that the computed interval itself contains the true value, coupled with the vague feeling that this is a basis for a confident decision. A different level can be justified, depending on the application. 
Last, and most important of all, be humble: compatibility assessments hinge on the correctness of the statistical assumptions used to compute the interval.

Factors such as background evidence, study design, data quality and understanding of underlying mechanisms are often more important than statistical measures such as P values or intervals.

The objection we hear most against retiring statistical significance is that it is needed to make yes-or-no decisions. But for the choices often required in regulatory, policy and business environments, decisions based on the costs, benefits and likelihoods of all potential consequences always beat those made based solely on statistical significance. Moreover, for decisions about whether to pursue a research idea further, there is no simple connection between a P value and the probable results of subsequent studies.

People will spend less time with statistical software, and more time thinking.

Although it will eliminate many bad practices, it could well introduce new ones. Thus, monitoring the literature for statistical abuses should be an ongoing priority for the scientific community. But eradicating categorization will help to halt overconfident claims, unwarranted declarations of ‘no difference’ and absurd statements about ‘replication failure’ when the results from the original and replication studies are highly compatible. 
P values, intervals and other statistical measures all have their place, but it’s time for statistical significance to go.

## Challenge 3: Applying testing to a specific case: A/B testing.
