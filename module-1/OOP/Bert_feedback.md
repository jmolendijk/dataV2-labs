Bert's game: https://github.com/B3rtje/mini-project-1/blob/master/your-project/hangmanV2.py


I played the game and spotted some little issues:
1. It doesn't show us the place of the guessed letter
2. When you've guessed all the letters you still don't win - you have to type the whole word
3. 'q' to quit only worked from the second type

Suggestions:
1. Use list comprehension with loops
2. Give the rules at the beginning and this way get rid of 'help' option
3. Level of difficulty is an option, we could just say "use the word consisting of 4 to 8 letters" and shorten the code this way
4. Put lower() function at the end of the first line in that piece and delete the second line:
  word = input("\nEnter a word that has 5 letters\nEnter here...... ")
  word = word.lower()
5. Instead of 
          print("\nPlease give a letter of the alphabet (ABCDEFGHILMNOPQRSTUVWXYZ) or the right answer")
  just put 'a-z'


But the code is big so if I try to change something the whole game may not go the way it shouls :)
