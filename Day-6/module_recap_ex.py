import math
import inspect
# functions=inspect.getmembers(math,inspect.isbuiltin)
# print('All Functions in math module')
# for n, func in functions:
#     print(n,end='\t')

num=int(input('Enter number to find out square root: \t'))
print(f'Square root of {num} is = \t',round(math.sqrt(num),2))   
angle_degree=int(input('Enter Angle Degree'))
print(f'Sin of {angle_degree} is = \t ',math.sin(angle_degree))
print(f'Cos of {angle_degree} is = \t ',math.cos(angle_degree))