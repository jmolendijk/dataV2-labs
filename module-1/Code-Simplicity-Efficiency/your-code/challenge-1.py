"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

numbers = {'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5}
operation = ['plus', 'minus']
output = {-4: 'minus four',
          -3: 'minus three',
          -2: 'minus two',
          -1: 'minus one',
          0: 'zero',
          1: 'one',
          2: 'two',
          3: 'three',
          4: 'four',
          5: 'five',
          6: 'six',
          7: 'seven',
          8: 'eight',
          9: 'nine',
          10: 'ten'
         }

print('Welcome to this calculator!\nIt can add and subtract whole numbers from zero to five\n')

a = input('Please write the value of your first number (from one to five): ')
while a not in numbers.keys():
    a = input("Sorry, I don't understand. Please choose one, two, three, four or five: ")
    
b = input('Do you want to add "plus" or substract "minus" the next number ? ')
while b not in operation:
    b = input("Sorry, I don't understand. Plase choose 'plus' for an addition, or 'minus' for a substraction: ")

c = input('Please write the value of your second number (from one to five): ')
while c not in numbers.keys():
    c = input("Sorry, I don't understand. Please choose one, two, three, four or five: ")

def result(a, b):
    if b == 'plus':
        return numbers[a] + numbers[c]
    else:
        return numbers[a] - numbers[c]

print("\n"+a, b, c, "equals to", output[result(a, b)], "\nThanks for using this calculator, goodbye :)")