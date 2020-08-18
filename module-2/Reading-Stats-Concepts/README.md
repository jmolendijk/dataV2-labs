![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts

## Introduction

In the future, you will need to understand deep statistical concepts by reading technical articles. As a training for that, it is interesting to start from here. Also, as we have limited time, this is a way to have some self guided learning to understand everything better and have a wider knowledge.

This week you will find some questions here that you will need to answer by documentating yourself. So you will do a different PR for each question (you are meant to answer the questions in different days). Don't hesitate to write as many text as you need and push images if you need them.

Remember for this lab: there is a right answer. But there is no perfect way to explain it (except for in a mathematical way, but this is another story).

## Challenges

### Challenge 1: What is the difference between expected value and mean?

1) mean = the sum of all the values, divided by the number of values
2) expected value = a sum in which each term is a possible value of the random variable multiplied by the probability of that outcome

Testing:
For example, rolling a fair 3-sided die:
1) (2+3+2)/3 = 2.3333
2) (1 * 1/3) + (2 * 1/3) + (3 * 1/3) = 2

Not equal!
They both divide by 3, but expected value takes all the possible outcomes one by one(1,2,3). 
Mean takes the real outcomes, finite list of different values (they may repeat, etc.)(2,3,2 - for example).
But if the number of throws is very big, these two numbers may become equal, because that is where we apply probability. And the probability that we get 1,2 or 3 as an outcome is 1/3 for each. Depending on the number of throws, the mean value will always be somewhere around the expected value.

So the answer is: they are not complete synonyms, but their values are equal in the long run (because that is how probability actually works).


### Challenge 2: What is the "problem" in science with p-values?

We have H0 (trying to provide evedence against it). We take the sample and do tests. We get a p-value that shows how likely it is to get a statistic like this if H0 is true. 

p-value answers the question "does this provide enough evidence?". The more the value is, the more evidence there is. If p-value is small, this idea must be wrong, so we reject H0.


The problem in science is in division p-values into statistically significant (P < 0.05, strong evidence against the null hypothesis) and statistically non-significant (P > 0.05, strong evidence for the null hypothesis) because of the p-value.
Due to the strict adherence to this threshold, many null hypothesis are rejected as there is less than a 5% probability that the H0 is correct. But still there is! Just because of this number we accept the alternative hypothesis. 
Also it is important to emphasize that p-value is unrelated to the truth or falsity of the research hypothesis (does not mean that there is a 95% probability that the research hypothesis is true). Rejecting the null doesn’t tell you anything about the mechanism of the main research.


What scientists argue about is: what counts as solid evidence? Quote: “We propose a change to P< 0.005. This simple step would immediately improve the reproducibility of scientific research in many fields.”  Statisticians realized that a p<0.05 is not as strong of evidence as they thought (they assumed that p<0.05 is very unlikely to face). Statistical significance should mean that the hypothesis should be tested further. But this change requires stronger evidence, therefore, more work.


### Challenge 3: Applying testing to a specific case: A/B testing.

Okay, let's take the example of Sephora SEA. They want to rearrange a landing page of the website for the Gold members.
Algorithm of measures to perform A/B testing:

1. Choose what you want to test - Landing page
2. Identify your goal - Conversion increases and ends up with a purchase.
You also need to state a hypothesis (identify areas of visitor activity, make a guess about a change that might lead to more conversions)
3. Create a 'control' and a 'challenger.' - 'Control' is the landing page showing just several products. 'Challenger' - the same pictures, but with the price on each.
4. Organize sample groups. - Let's take 1000 people for each group. 
5. Pick a tool how to test - The tool would be to send advertising email, attracting to the website. Then we show the first group the 'old' website and the new version for the other group.
6. Decide with the results criteria. Let's say that if 20% of the 'challenger' ends up with a purchase, then we change the website to the new version and invite all other guests to see it.
It may be also useful to ask for feedback in a different email ('evaluate our new website with a score...')


## Deliverables
You need to submit a markdown file with the answers to the questions above. You can create a new `.md` file or directly edit the `README.md`.

## Submission
Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.
