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
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

if b == 'plus':
    if a == 'one':   
        number1 = 1
    if a == 'two':     
        number1 = 2
    if a == 'three':     
        number2 = 3
    if a == 'four':   
        number1 = 4
    if a == 'five':    
        number1 = 5
    if c == 'one':   
        number2 = 1
    if c == 'two':     
        number2 = 2
    if c == 'three':     
        number2 = 3
    if c == 'four':   
        number2 = 4
    if c == 'five':    
        number2 = 5     
    result = number1 + number2
    output = str (result)
    print( number1, " + ", number2 , " = ", output )

if  b == "minus":
    if a == 'one':   
        number1 = 1
    if a == 'two':     
        number1 = 2
    if a == 'three':     
        number2 = 3
    if a == 'four':   
        number1 = 4
    if a == 'five':    
        number1 = 5
    if c == 'one':   
        number2 = 1
    if c == 'two':     
        number2 = 2
    if c == 'three':     
        number2 = 3
    if c == 'four':   
        number2 = 4
    if c == 'five':    
        number2 = 5  
    result = number1 - number2
    output = str (result)
    print( number1, " - ", number2 , " = ", output )



if (not a == 'zero' and not a == 'one' and not a == 'two' and not a == 'three' and not a == 'four' and not a == 'five') or (not c == 'zero' and not c == 'one' and not c == 'two' and not c == 'three' and not c == 'four' and not c == 'five') or (not b == 'plus' and not b == 'minus'):
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
