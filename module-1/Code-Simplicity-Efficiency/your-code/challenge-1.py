"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
first_input = input('Please choose your first number (zero to five): ')
plus_minus = input('What do you want to do? plus or minus: ')
second_input = input('Please choose your second number (zero to five): ')


number_converter = {'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5}


def convert_number(number):
    number = number_converter.get(number)
    return number


if first_input != number_converter.keys():
    print("I am not able to answer this question. Check your input.")
elif second_input != number_converter.keys():
    print("I am not able to answer this question. Check your input.")
elif plus_minus != 'plus' != 'minus':
    print("I am not able to answer this question. Check your input.")
else:
    first_number_convertion = convert_number(first_input)
    second_number_convetion = convert_number(second_input)
    if plus_minus == "plus":
        answer = first_number_convertion + second_number_convetion
        print(first_input + "plus" + second_input + "is" + answer)
    else:
        answer = first_number_convertion - second_number_convetion
        print(first_input + "minus" + second_input + "equals" + answer)

print("Thanks for using this calculator, goodbye :)")

# I couldn't get the code to work. It keeps giving me the answer when you put in the wrong number