"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random

def RandomStringGenerator(length=12, generator=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    stop = 0
    string = ''
    while stop < length:
        string += random.choice(generator)
        stop += 1
    return string

def BatchStringGenerator(nb, mini=8, maxi=12):
    batch = []
    for i in range(nb):
        if mini < maxi:
            batch.append(RandomStringGenerator(random.choice(range(mini, maxi+1))))
        elif mini == maxi:
            batch.append(RandomStringGenerator(mini))
    return batch

mini = input('Enter minimum string length: ')
maxi = input('Enter maximum string length: ')
while int(maxi) < int(mini):
    maxi = input('Sorry, your maximum must be greater or equal to the minimum string length.\n Enter maximum string length: ')
nb = input('How many random strings to generate? ')

print(BatchStringGenerator(int(nb), int(mini), int(maxi)))