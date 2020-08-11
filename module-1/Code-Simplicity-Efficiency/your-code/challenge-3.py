"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""

def my_function(X):
    solutions = []
    for x in range(5, X):
        for y in range(4, X):
            for z in range(3, X):
                if (x*x==y*y+z*z):
                    solutions.append([x, y, z])
    m = 0
    for solution in solutions:
        if m < max(solution):
            m = max(solution)
    return solutions

X = input("What is the maximal length of the triangle side? Enter a number: ")

print("The longest side possible is " + str(my_function(int(X))))



def function_two (): 
    number = input("What is the maximal length of the triangle side? Enter a number: ")
    number = int(number)
    solution = [(num1, num2, num3) for num1 in range(5, number) 
                                   for num2 in range(4, number) 
                                   for num3 in range(3, number)
                                   if num1*num1 == (num2*num2 + num3*num3)]
    m = 0 
    for answer in solution: 
        if m < max(answer): 
            m = max(answer)
    return "The longest possible site = "+str(m)


print(function_two())

