![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts


## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 

#### Answer

>*Expected value for a discrete random  variable, or the random variables for which outcomes are countable, is weighted average of outcomes of  this random variable. The weights are probabilities, or relative frequencies, of each random variable outcome.
>
>**Expected value** and **mean** are the same thing, however expected value and **arithmentic mean**, or **arithmentic average**, are not. The connection between arithmetic mean, or avergae, and the expected value is that arithmetic mean will converge to expected value of a random variable over a large number of observations, or experiments. To be precise, the equality is reached over inifinite number of experiments.   
>
>The expected value is also called the expectation, population mean, mathematical expectation, average, first moment.


### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

#### Answer

>In hyphothesis testing p-value is used to prove ('not reject'), or disprove ('reject'), the null hyphothesis. Null hyphothesis is usually 'no effect': for example no assosiation between varibales, or no difference between means of two groups in a strudy, etc. The p-value is a measure that indicates if the observed difference occured due to chance, such as positive or negative effect of one varible on another was due to chance, or that a difference in means of a target variable between two study groups was due to chance. Low p-values support evidence against null hyphothesis and high p-values support evidence in favour of null hyphothesis. P-value is not a probability null hyphotesis is true, nor that the data we produced was generated due to chance. P-value is an indication of the degree of compatibility between a dataset and a particular hypothetical explanation (such as a null hypothesis)
>
>Other definition of the p-value: p-value is the probability of obtaining test results at least as extreme as the results actually observed, under the assumption that the null hypothesis is correct. 
>
>The problems with the p-value are few:
>- the decision on rejecting on not rejecting p-value is usually made based on a cut-off point of 0.05, which is **arbitrary**. For example, null hyphothesis is rejected if p-value is less thant 0.05, in other words there is less than 5% chance that the non-zero effect observed is due to chance. It is recommended to always state the obtained p-values so that the reader can make their own interpretation, as well as explain why a specific threshhold values, 0.05 or otherwise, was chosen.
>- in some cases, rejection of a hyphothesis can lead to a problem of dichotomosation when practically importan positive or negative effects might be ignored
>- p-hacking: another problem is behavioural and is linked to fitting the data so that is prodices high p-values for unfovorables outcomes, or on the contrary low p-values for the fvourable outcomes. It is crucially improtant that the data used for study is representative
>- in case relationship between variables is examined, the p-value alone very oftent does not provide full picture of the strength or importance of that relationship. P-value should always be interpreted together with other element of analysis. It is possible to have low p-values, for let's say regression coefficients, while the coefficient of determination is also low, indicating that while some relationship does exist between variables of interest, other factors are in play 



### Challenge 3: Applying testing to a specific case: A/B testing.

One example: Our application has a lot of mini-games. We want people to reach the games that we think are the best but the behaviour is not the expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for that kinf of games inviting the users to click on it:

Click here to discover cool games!

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

Read more about A/B testing with a couple of examples:

Another example about Netflix here

What happened to Basecamp

An example with Python

A cool general explanation

So, take one single example in the articles you just read, which specific test/s would you apply? (We want you just to do a draft and think a little bit how to apply the tests you already know in this case)

#### Answer

>Let as created an A/B testing draft for a 'Cool games' example
>
>The problem is that we have a lot of games, and we want people to reach the games we thing are the best, but in reality not a lot of people do reach them.
>
>In this hyphotetical example a design change was made to the app, where we implemented a button 'Click here to discover cool games!', that was hown to 10% of users. 
>
>Steps that we need to take to design the experiment:
>- Define the goal of the experiement: evaluate the the impact app design change on the target metric. Here we can state the null hyphothesis and alternative hyphothesis. Null hyphothesis - the design change has no impact on the conversion rate. Alternative hyphothesis - the design change does have the desired impact, that is the uplift in the conversion rate is at least 2%
>- Define the target metric, in out case this would be share of users, who convert, or, in other words, reach the desired games; and let us call this metric 'conversion rate'. 
>- Determine baseline conversion rate, which would be current share of users who reach the games.
>- Determine the desired uplift which would be the desired increased of the conversion rate. For example, current conversion rate is 20% and we want it to be 35%.
>- Choose control and test group. The size of test and control should be no less than a 1000 users each, but will also depend on factors like how fast do you want to be able to acceess the results of the test. For example if you have low traffic, then setting up large control and test groups means you will have to wait for a long time to access the results; scarcity of events - if the desired outcome is rare, you might want to have larger test and control so that the test results are meaninghful. Also, the minimum sample size can be accurately calculated based on the desired lift and statistical power of the hyphothesis test.
>- Run the test that will serve assigned app designs to the test and control groups and collect the data on conversions for each user
>- Calculate the onversion rates in each group
>- Measure the different between the conversion rates in the test and control groups and evaluate if the difference is at least as extreme as the desired uplift by conducting statistical test for proportion difference and evaluating null hyphothesis against alternative hyphothesis.
>
>In summary: 
>The goal of the A/B test is to determine if implementation of this new 'Click here to discover cool games' leads to increased number of people reaching the desired games. To achieve this we will design a simple A/B test, that will test two alternatives - app design with the button and app design without the button and find out how the different designs impact the reach.

