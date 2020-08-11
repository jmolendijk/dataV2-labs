#challenge2

import string
import random
import sys

list_letters_digits = list(string.ascii_lowercase+string.digits)

def RandomStringGenerator(length=12, a=list_letters_digits):
    count = 0
    string = ''
    while count<length:
        string += random.choice(a)
        count += 1
    return string

def BatchStringGenerator(n, a=8, b=12):
    output = []
    for i in range(n):
        symbols_num = None
        if a < b:
            symbols_num = random.choice(range(a, b))
        elif a == b:
            symbols_num = a
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        output.append(RandomStringGenerator(symbols_num))
    return output

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))