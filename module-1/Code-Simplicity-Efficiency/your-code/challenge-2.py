"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import random
import sys

default_length = 12
default_character_list = ['a','b','c','d','e','f','g','h','i','j','k','l','m','count','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']
   
min_len = int(input('Enter minimum string length: '))
max_len = int(input('Enter maximum string length: '))
rand_strings = int(input('How many random strings to generate? '))


def RandomStringGenerator(length = default_length, character_set = default_character_list):

    random_string = ''

    for i in range(length):
        random_string += random.choice(character_set)
    
    return random_string

def BatchStringGenerator(count, min_length=8, max_length=12):
    random_strings = []
    for i in range(count):
        random_length = None
        if min_length < max_length:
            random_length = random.choice(range(min_length, max_length))
        elif min_length == max_length:
            random_length = min_length
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        random_strings.append(RandomStringGenerator(random_length))
    return random_strings

print(BatchStringGenerator(rand_strings, min_len, max_len))
