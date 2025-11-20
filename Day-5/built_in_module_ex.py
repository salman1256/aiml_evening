# import math
# print("Sqrt Example: \t",math.sqrt(625))
# print("PI Example: \t",math.pi)
import math as m # provides mathematical functions

import random as r # helps to generate random numbers
import os          # Provides operating system related functions

import time   # Provides time related functions
import sys      # system related parameters and variables

print('Generate a random number between 1 , to 100')
print(r.randint(1,100))
print('Current Directory: \t',os.getcwd())

print('System Time: ',time.time())
print('System version',sys.version)

# print(dir(m))
print(dir(os))