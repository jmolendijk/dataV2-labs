#challenge1

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')

a = int(input('Please choose your first number (0 to 5): '))
b = input('What do you want to do? + or -: ')
c = int(input('Please choose your second number (0 to 5): '))

while a not in range(0,6) or c not in range(0,6):
    print('\nI am not able to answer this question. Check your input.')
    a = int(input('Please choose your first number (0 to 5): '))
    b = input('What do you want to do? + or -: ')
    c = int(input('Please choose your second number (0 to 5): '))
    

def plus(a,c):
    return a + c

def minus(a,c):
    return a - c

if b =='+':
    print(a, b, c, "=", plus(a, c))
elif b =='-':
    print(a, b, c, "=", minus(a, c))
    

print("Thanks for using this calculator, goodbye :)")    
