![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations

*Sarah Busson - DAFT 07/20 Amsterdam*

## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.

Measurable space contains all the different outcomes :  
Roll die1 : {1, 2, 3, 4, 5, 6}  
Roll die2 : {1, 2, 3, 4, 5, 6}  
Roll 2 dice = permutation of the two rolls : {(1,1), (1,2), (1,3) ... (6,5), (6,6)}

* B. The sum of the values obtained.

It is the sum of the result of each roll : sum = value{roll die1} + value{roll die2}

* C. The maximum value obtained after rolling both dices.

The maximum value that can be obtain is 12. It's in the case of the event where roll die1 = {6} and roll die2 = {6}.

Describe the following events:
* Case A: Both values are greater than 5.

roll die1 = {6} & roll die2 = {6}

* Case B: The sum of values is even.

option 1: roll die1 = {1,3,5} & roll die2 = {1,3,5} => both roll give an odd number, the sum is then even.  
option 2: roll die1 = {2,4,6} & roll die2 = {2,4,6} => both roll give an even number, the sum is then even.

* Case C: The maximum is the *maximum (?)* value of both rolls.

roll die1 max = {6}  
roll die2 max = {6}

Max outcome is roll die1 max + roll die2 max = {12}

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.

Measurable space contains all the 52 cards : {1H, 2H, 3H, ...QC, KC}  
H = Heart ; D = Diamond ; S = Spade, C = Club

In this measurable space, there are 12 figures. So the figures are {JH, QH, KH, JD, QD, KD, JS, QS, KS, JC, QC, KC}

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.

In this case, we can consider the measurable space as a dictionary : {1H: 15, 2H: 2, 3H: 3, ...QC: 10, KC: 10}  
The random value will be the sum of the two picks : sum(pick1.value() + pick2.value())

* C. The number of hearts or spades he picks.

Measurable space for H : {1H, 2H, 3H, 4H, 5H, 6H, 7H, 8H, 9H, 10H, JH, QH, KH}  
Measurable space for S : {1S, 2S, 3S, 4S, 5S, 6S, 7S, 8S, 9S, 10S, JS, QS, KS}

The random value is the number of H or S he picks out of the combination of these two measurable spaces;


Describe the following events:
* Case A: The number of figures in the cards the player picked is two.

CaseA = {JH, QH, KH, JD, QD, KD, JS, QS, KS, JC, QC, KC}

* Case B: The sum of card values is 17.

CaseB = {(2+15), (15+2), (10+7), (7+10), (9+8), (8+9)} out of 13 possibilities.

* Case C: The value of both cards is less than 8.

CaseC : {2, 3,4, 5, 6, 7} out of 13 possibilities.

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.

PlayerA = {1, 2, 3, 4, 5, 6}

* B. The greatest score.

Greatest = roll where PlayerA != PlayerB is greater than the other

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".

If PlayerA > PlayerB : PlayerA = +1  
If playerA < PlayerB : PlayerA = -1

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

If PlayerA > PlayerB : PlayerA = value(A) - value(B) => earns coins  
If playerA < PlayerB : PlayerA = value(B) - value(A) => loses coins

Describe the following events:
* Case A: The score of player A is 2.

PlayerA = {2}

* Case B: The greatest score is lower or equal than 2.

Greatest = {1, 2}

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  
  PlayerA = {5, 6} & PlayerB = {1, 2}
  
  * Player A loses more than 2 coins.
  
  PlayerA = {1} & PlayerB = {4} OR PlayerA = {1, 2} & PlayerB = {5} OR PlayerA = {1, 2, 3} & PlayerB = {6}
  
  * Player A neither wins nor loses coins.
  
  PlayerA = PlayerB
  
  
## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.
