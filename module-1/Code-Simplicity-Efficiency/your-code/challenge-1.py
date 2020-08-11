"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""


def number():
    while True: 
        a = input('Please choose your first number (zero to five):')
        if type(a) == int: 
            return a
            break
        elif a == 'zero' or a == 'Zero' or a == 'ZERO': 
            a = 0
            break
        elif a == 'one' or a == 'One' or a == 'ONE': 
            a = 1
            break
        elif a == 'two' or a == 'Two' or a == 'TWO': 
            a = 2
            break
        elif a == 'three' or a == 'Three' or a == 'THREE': 
            a = 3
            break
        elif a == 'four' or a == 'Four' or a == 'FOUR': 
            a = 4
            break
        elif a == 'five' or a == 'Five' or a == 'FIVE': 
            a = 5
            break
        else: 
            print("You need to use a number without comma's or the proper English word!")
    return a



def dumb_calculator (): 
    print("""Welcome to this calculator!
             It can add and subtract whole numbers from zero to five
             """)
    first_number = number()
    second_number = number()
    while True: 
        action = input("What do you want to do? plus or minus?")
        if action == "plus" or action == 'Plus' or action == 'PLUS': 
            solution = first_number + second_number
            break
        elif action == 'minus' or action == 'Minus' or action == 'MINUS': 
            solution = first_number - second_number
            break
        else: 
            print("We only accept the words 'plus' or 'minus' ")
        
    return "The answer is: "+str(solution)+" \n Thanks for using this calculator, goodbye :)"
            
            
        
print(dumb_calculator())




#Maybe in the future i would like to make a class for number, so you don't see these code anymore.
#Then we can just call the dumb_calculator.
            
            
    