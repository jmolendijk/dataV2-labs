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

p-Value is a statistics term that is used to define the significance between two values in relation to the null hypothesis which states that one variable doesn’t affect the other. By convention, if p < 0,05, it means the probability that the null hypothesis is true is less than 5%. We can then reject it and accept the fact that these two variables influenced each other.
 
But this term is dividing the scientific community about its accuracy when analysing data.
And that’s because it’s an objective and arbitrary term which lead to a yes or no decision. The problem becomes human and cognitive more than statistical. The accuracy of some analysis cannot be only determined through the p-value. Whatever its result, caution is needed as background is important and only looking at the p-value often lead to ignoring it.
 
Instead of evaluating it as a significative result of compatibility, p-value should be only use as an indicator of more or less compatibility. Acknowledging the uncertainty of this statistical value will keep us from making false declarations of ‘no relation’ or minimalizing it.
 
It is important to give more credit to the parameters of a study. Even though the p-value can be useful, we should no longer use it as a significant tool.

### Sources
https://www.simplypsychology.org/p-value.html

## Challenge 3: Applying testing to a specific case: A/B testing.


Traffic split here is 10-90% which means that only 10% of the users will access the test button. We first have to make sure that this tests last long enough to collect enough data and make sure our analysis will be an accurate prediction.
We also have to remember when analysing our data that the results we will obtain come from a sample of user at a given time, which is part of a bigger population.

The first parameter to look at would be a ‘clickbait rate’. Which means that it’s the number of times users clicked on the link, compared to the total number of users who had the version with the working button.

But more than this, it would be necessary to know how long it took the users to click on the button since he landed on our webpage. That would help us determine the visibility of this new feature and if we compare it to the time spend by a user without this button to access the same games, it could be used as a performance indicator.

Then, it would be necessary to see, for all the users who reached those specific game (with and without the button), if they actually played those games, and for how long? This would indicate the efficiency of the button. 
Are people using the button randomly and then keep browsing, or is it actually effective and users using this link tend to play more games than the user without this new feature?


As the A/B test here is split unevenly, it could be necessary to take a sample out of the users without the button about the same size as the number of users who had access to the test button. Some statistical tests can be done to determine the accuracy of the sampling.

Using those tools, we could then determine if the difference on the average time spend on the website playing games has been improved thanks to the button, or if its addition has no significant impact.

Here, p-value can be useful, but as seen before, bear in mind that other parameters on the website can interfere with our results and should not be used as the only indicator.


A final step, if the first A/B test is relevant, would be to start this A/B test a second time, but by increasing the traffic on the new button, maybe above 50% and then compare to the first data and determine if we obtain the same results or not using a R&R tool (Repetition & Repetitivity).
