<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Let's play TicTacToe !
*by Alexandra Victoria*

*Data analytics bootcamp, Amsterdam, October2020*

## Content
- [Project Description](#project-description)
- [Rules](#rules)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description
This is the classical game of TicTacToe, where 2 players mark a 3x3 board with their mark assigned ('X' or 'O') per turns.
The winner is the player that can succeed in placing three of their marks in a horizontal, vertical, or diagonal row.

I chose this project because I am familiar with the game, allowing me to plan steps to follows in order to achieve it.

## Rules
  1.  The game is played on a grid that's 3 squares by 3 squares.
  2.  There are 2 players, taking a turn each *(soon the player will be able to choose 1 or 2 players, where 1 player plays with the computer)*
  3.  Each player has an assigned mark *(soon the player will be able to chose it too)*
  4.  The first player to get 3 marks in a row (up, down, across, or diagonally) is the winner.
  5.  When all 9 squares are full, the game is over.
  6.  If neither the Player1 or 2 manages to get 3 marks in a row, the game is Tie.

## Workflow
Outline the workflow you used in your project. What are the steps you went through?
First, I thought about the different possibilities that the player has to play and to win.
I defined roughly what the play consisted of. Then I created functions and tried to put them together by calling them whitin a "game" loop.
Basically the game consists of:
- Display the positions possible, on the board. (For the player to be aware of)
- Set the game in play by defining a loop in which the game will continuouly run
- display the empty board at the begining of each turn
- Ask the current_player to give the position-input of his mark
- Define the mark assigned to the first player playing the game (Global variable initilly set to the first_player's mark)
- Display the mark on the board
- check if the game is still on (if there are no winners)
  if no winners:
- Change turn by assigning a new value to the global variable "mark"
- repeat previous steps within the loop
  if winners/tie
- Game is no longer "on" and the function gets out of the loop
- Board checked for results and winner/tie is returned


## Organization
How did you organize your work? Did you use any tools like a trello or kanban board?
for this project 

What does your repository look like? Explain your folder and file structure.

## Links
Include links to your repository, slides and trello/kanban board. Feel free to include any other links associated with your project. 

[Repository](https://github.com/AjiacoVic/dataV2-labs/edit/master/module-1/mini-project-1/your-project/README.md)  
[Slides](https://docs.google.com/presentation/d/1XDVU8ITRsvm-uOhfzaFk6yjCHIvAcWrjzS5UJYFyeTU/edit#slide=id.p)  
[Trello](https://trello.com/b/IctPnoFa/project-1-build-your-own-game)  
