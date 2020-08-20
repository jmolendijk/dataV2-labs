![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations

### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
random varibale : is the variable whose values depend on outcomes of a random phenomenon

* A. The values that the player obtains:

  Measurable space = 36 possible combinations (6*6)
  Random variable =  1, 2, 3, 4, 5, 6 

* B. The sum of the values obtained: 

The sum of the values obtained is the sum of the random variable

* C. The maximum value obtained after rolling both dices : 

  The mawimun value is 12 ( 6 and 6)  
  Describe the following events:

* Case A: Both values are greater than 5.

  Greater than 5 ,just one possibility "6"
  For each dice the possibility is:  1/6
  For both sides the possibility is: = 1/6 *1/6 = 1/36

* Case B: The sum of values is even.

  Probability of the first and second dice is even is one out of two:
  𝑃(even|first was even)=𝑃(second is even)=1/2  

  𝑃(even sum)= 1/2(𝑃(first was even) + 𝑃(first was odd))
  =1/2(1)=1/2 .

* Case C: The maximum is the value of both rolls.

  The max value is 12 because is two times 6 (both dice)


### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:

* A. The number of figures he picks.

For each card:
  52 cards in total 
  4 figures Spades, Hearts, Diamonds, and Clubs 
  13 cards for each set of figures

  measurable space = 52 cards for each pick
  random variable (figure card) =  13 / 52 for each pick 

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.

For ecach card:
  Total value of each figure = 2+3+4+5+6+7+8+9+10 = 54 + ace(15) = 69
  measurable space = 69 * 4(types of figures) = 276


* C. The number of hearts or spades he picks.

  measurable space : 52 cards
  random variable: 13/52 for each card and 26/56 for both card
  
  

Describe the following events:

* Case A: The number of figures in the cards the player picked is two.

Measurable space: 52 cards
random variable : For all the figure there are 4 cards on total with the number two so : 4/52 for every pick of card

* Case B: The sum of card values is 17.

measurable space : if the player picks 2 cards, is the possible combinations of both cards summ = 17 (  10 and 7 or 7 and 10 or 15 and two or 2 and 15 ) so four possibilities
random variable: the sum 17 


* Case C: The value of both cards is less than 8.

measurable space : 2-5 or 5-2 , 3-4 or 4-3 , 4-3 or 3-4, 5-2 or 2-5 so 8 combinations
random variable : sum less than 8 = 7

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:

* A. The score of player A.

measurable space : 6 outcomes (from 1 to 6)
random variable : 1 outcome

* B. The greatest score.

measurable space: 
All possibilities {(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6)}
We take ou the even outcomes, So we get  : 30
{,(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),,(5,6),(6,1),(6,2),(6,3),(6,4),(6,5)}

random variable : one one is greater than the other


* C. The earnings of player A if the game rules state that:  

"The player with the greatest score gets a coin from the other player.".

measurable space: one or zero coins
random variable: win or lose

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

measurable space: All the possible results taking out the even results
(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),,(5,6),(6,1),(6,2),(6,3),(6,4),(6,5)

random variable: the difference between the score of player A and player B.

Describe the following events:
* Case A: The score of player A is 2.

measurable space: 1 in 6 ( just one face of the dice has the number 2)
random variable: 2


* Case B: The greatest score is lower or equal than 2.

lower or equal to 2 = 1 or 2
The greteas score cant be 1 because is the minimum so it has to be 2

measurable space = 1-2 or 2-1 so only two options
random varibale= lower or equal than 2

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 

  * Player A wins at least 4 coins.
  measurable space : 14 possibilities
  4-3 4-2 4-1  
  5-4 5-3 5-2 5-3 5-2 5-1
  6-5 6-4 6-3 6-2 6-1
  random variable = at least 4

  * Player A loses more than 2 coins.
  More than 2 = 3,4,5,6
  3-4 3-5 3-6
  4-5 4-6
  5-6
  measurable space : 6  possibilities
  random variable: lose more than two

  * Player A neither wins nor loses coins.
  measurable space : 6  possibilities
  1-1 2-2 3-3 4-4 5-5 6-6
  random variable: not win or lose

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