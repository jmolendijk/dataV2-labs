Bert's game: https://github.com/B3rtje/mini-project-1/blob/master/your-project/hangmanV2.py

I played the game and spotted some little issues:

It doesn't show us the place of the guessed letter
When you've guessed all the letters you still don't win - you have to type the whole word
'q' to quit only worked from the second type
Suggestions:

Use list comprehension with loops
Give the rules at the beginning and this way get rid of 'help' option
Level of difficulty is an option, we could just say "use the word consisting of 4 to 8 letters" and shorten the code this way
Put lower() function at the end of the first line in that piece and delete the second line: word = input("\nEnter a word that has 5 letters\nEnter here...... ") word = word.lower()
Instead of print("\nPlease give a letter of the alphabet (ABCDEFGHILMNOPQRSTUVWXYZ) or the right answer") just put 'a-z'
But the code is big so if I try to change something the whole game may not go the way it should :)
