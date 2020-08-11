#challenge3
def longest_side(x):
    solutions = [[x, y, z] for x in range(5, x) for y in range(4, x) for z in range(3, x) if (x*x==y*y+z*z)]
    max_length = 0
    for solution in solutions:
        if max_length < max(solution):
            max_length = max(solution)
    return max_length

x = input("What is the maximal length of the triangle side? Enter a number: ")

print("The longest side possible is " + str(longest_side(int(x))))