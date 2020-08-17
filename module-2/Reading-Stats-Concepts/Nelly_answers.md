![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts


### Challenge 1: What is the difference between expected value and mean?

They are often refered as the same thing since they are related to the idea of 
"average".

Mean: Is the sum of a collection divided by the numbers in that collection.

Expected value : Is the long-term "average" value for the repetitions of the experiment it is used for.

For example, in a experiment like the flipping a coin, the mean and expected value are the same since the conditions of the experiment are equal (only heads or tail). The difference is that if the experiment the conditions are not fair then it could be that the mean and expected value may not be the same. 

### Challenge 2: What is the "problem" in science with p-values?

P-values can help to compare results between two groups. For example,the actual study group and the placebo group. 
The p-value will ranges from 0 to 1, and it will tell us the probability that the subjects will present the observed result if there's no real difference between the to groups. 

In general the lower the p value is the better, since hypotetically 0 means that the result is definitely based on the thing we're testing and 1 means the results are based on other than the thing we're testing. But they are extremes, in general a p value of 0,05 is considered statistically significant and they are more likely to be piublished.


PROBLEMS: 
- Over emphasis of p values often leads to neglect other information is studies like side effects.
- Sientists can manipulate data to get the lowest possible p-value.
- Wrong interpretations like assuming that non-signifficance means no effect. ( like for dugs possible side effects )
- P values being too general, they should be given with precision like P = 0.021 or P = 0.13) instead of P  < 0.05 or P > 0.05.

Example: A drug manufacturer wants to launch a new drug for hair growt. After conducting the study the result is a P = .05 which means that there is a small probalility that the hair growt came from something else than the tested drug so you are more likely to but the drug. But what the p value doesn't tell us is about actual result , maybe they did have results but they just grew two hairs or three lol so technically the subjects are still bold!


### Challenge 3: Applying testing to a specific case: A/B testing.

Ok I'll go witht the Netflix article " Selecting the best artwork" which in this case the artwork will be our new button:

*Click here to discover cool games!*

In this case I'll use the explore/exploi test which will be based on the different ways to design and present the button to the user.

EXPLORE TEST BUTTONS : Based on the different ways to design and present the button to the user.

Button 1: steady button with a pop-up color.
Button 2: blinking button with a pop-up color. 

Note: an optional paramether would be "when" do we display the new button. 

Time 1 : Displayed after won a game, we show the *Click here to discover more cool games!* since they were exited after a good result of the previous game they must feel confident and are more likely to try new things.
Time 2 : On the main page as banner , like this one  https://www.i-teamglobal.com/en/News/New-website  it can say:  Our new games are live! and then we show the button.

So we will end up with 4 options for the most engaging button:

Button1-Time1
Button1-Time2
Button2-Time1
Button2-Time2


EXPLOIT TEST BUTTONS : To measure the performance once they clicked a particilar button.

How many games they played after clicking each button.
How long they played a particular game. 
How long they stayed using the App.


Also is very important when choosing the A/B testing, how can we know that the new games are relevant to the users preferences? maybe the button worked just fine but the new games we provided were just not relevant to the users or they were just not very good games. 

