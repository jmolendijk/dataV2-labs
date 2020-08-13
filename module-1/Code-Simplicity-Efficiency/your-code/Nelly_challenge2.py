
"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.

MY SOLUTION : REPLACE THE LONG STRING OF CHARACTERS , 
"""

import string
from random import *
list1= list(string.ascii_lowercase+string.digits)

def RandomStringGenerator(l=12, a=list1):
    p = 0
    strings = ''
    while p<l:
        import random
        strings += random.choice(a)
        p += 1
    return strings

def BatchStringGenerator(n, a=8, b=12):
    result = []
    for i in range(n):
        c = None
        if a < b:
            import random
            c = random.choice(range(a, b))
        elif a == b:
            c = a
        else:
            import sys
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(c))
    return result

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))




