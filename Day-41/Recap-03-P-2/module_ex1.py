# import math
# num=int(input('Enter number to find out squre root: '))
# print(f'Number: {num} and Square root of number is: ',math.sqrt(num))
# import math as m
# print('Square root of 125 is : ',round(m.sqrt(125),2))
# print('Factorial of 5 is :',m.factorial(5))
# print('Value of Pie is: ',round(m.pi,2))

#Using math module do the following task
# Take the radius of square from user and find out area of squre
# Hint: area of square =pie*radium*radius
import math as m
radius_square=float(input('Enter radius of square to find out area: '))
area_square=m.pi*radius_square*radius_square
print(f'Radius of Square is: {radius_square} and Area of square {round(area_square,2)}')