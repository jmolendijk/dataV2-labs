
import string
import random 


def new_string(length):
    letters = string.ascii_lowercase+string.digits
    str = ''.join(random.choice(letters) for num in range(length))
    return str
    
#print(get_random_string(10))

def string_gen ():
    strings = []
    number_of_strings = input("How many strings do you want to generate? ")
    minimum_length = input("What is the minimum length that you want? ")
    maximum_length = input("What is the max length that you want? ")
    
    while not number_of_strings.isnumeric(): 
        print("We only accept numeric values.")
        number_of_strings = input("How many strings do you want to generate?")
    while not minimum_length.isnumeric(): 
        print("We only accept numeric values. ")
        minimum_length = input("What the minimum length that you want? ")
    while not maximum_length.isnumeric(): 
        print("We only accept numeric values. ")
        maximum_length = input("What is the max length that you want? ") 
    
    number_of_strings = int(number_of_strings)
    minimum_length = int(minimum_length)
    maximum_length = int(maximum_length)
    
    while True: 
        if maximum_length < minimum_length: 
            print("Program reboots because your max is smaller than your minimum")
            string_gen()
            break
        else: 
            break
    
    final_length = [minimum_length, maximum_length]
    final_length = random.choice(final_length)
    
    while number_of_strings > 0:
        string = new_string(final_length)
        strings.append(string)
        number_of_strings = number_of_strings - 1
        
    return strings
            
print(string_gen())



