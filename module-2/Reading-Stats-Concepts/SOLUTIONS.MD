![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts


## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 

#### Answer

Expected value for a discrete random  variable, or the random variables for which outcomes are countable, is weighted average of outcomes of  this random variable. The weights are probabilities, or relative frequencies, of each random variable outcome.

**Expected value** and **mean** are the same thing, however expected value and **arithmentic mean**, or **arithmentic average**, are not. The connection between arithmetic mean, or avergae, and the expected value is that arithmetic mean will converge to expected value of a random variable over a large number of observations, or experiments. To be precise, the equality is reached over inifinite number of experiments.   

The expected value is also called the expectation, mathematical expectation, average, first moment.


### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

#### Answer

In hyphothesis testing p-value is used to prove, not reject, or disprove, or reject, the null hyphothesis. Null hyphothesis is usually 'no effect': for example no assosiation between varibales, or no difference between means of two groups in a strudy, etc. The p-value is a measure of probability that the observed difference occured due to chance, such as positive or negative effect of one varible on another was due to chance, or difference in means of a target variable between two study groups was due to chance. Low p-values support evidence against null hyphothesis and high p-values support evidence in favour of null hyphothesis. 

The problems with the p-value are few:
- the decision on rejecting on not rejecting p-value is usually made based on a cut-off point of 0.05, which is **arbitrary**. For example, null hyphothesis is rejected if p-value is less thant 0.05, in other words there is less than 5% chance that the non-zero effect observed is due to chance. It is recommended to always state the obtained p-values so that the reader can make their own interpretation, as well as explain why a specific threshhold values, 0.05 or otherwise, was chosen.


### Challenge 3: Applying testing to a specific case: A/B testing.
A/B testing is a widely used tool to understand differences between two samples. It is a way to measure the impact of something we did: 
* A marketing campaign.
* A new feature in our application. 
* A new design in our application.
* A different flow in the User Experience flow.

To do this, is very important first to design our experiment. 
* We need to know how we are measuring the impact. If people has the behaviour we want with this new implementation.
* We choose a control group (people who doesn't have/see the new change) and the group which will see the new change. 
* We think about how much data do we need.
* We measure the difference between them.

One example:
Our application has a lot of mini-games. We want people to reach the games that we think are the best but the behaviour is not the expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for that kinf of games inviting the users to click on it:

*Click here to discover cool games!*

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

Read more about A/B testing with a couple of examples:


So, take one single example in the articles you just read, which specific test/s would you apply? (We want you just to do a draft and think a little bit how to apply the tests you already know in this case)

#### Answer

