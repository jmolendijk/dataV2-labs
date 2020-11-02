"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

from random import choice
from sys import exit

def RandomStringGenerator(l=12, a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    s = ''
    while len(s) < l:
        s += random.choice(a)
    return s

def BatchStringGenerator(n, min_=8, max_=12):
    r = []
    for i in range(n):
        if min_ < max_:
            length = random.choice(range(min_, max_))
        elif min_ == max_:
            length = min_
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(length))
    return r

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(min_), int(max_)))
