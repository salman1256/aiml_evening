# import inspect
import math 
# functions=inspect.getmembers(math,inspect.isbuiltin)

# for name in functions:
#     print(name)

# number=float(input('Number to find out ceiling: '))
# print('Number is: {number} and ceiling: ',math.ceil(number))

# You want to paint a wall in your house
# Wall height 2.7 meters
# Wall widht 5.3 meters
# 1 paint bucket covers 4 square meter
# Cost per paint bucket =350 
# You can not buy half buckets , so you must use ceilling for rounding
#Tasks
# Total Wall Area
# Total Paint buckets required
# Total Cost
# height=2.7
# width=5.3
# coverage_per_bucket=4
# cost_per_bucket=350
# total_area=height*width
# buckets_needed=math.ceil(total_area/coverage_per_bucket)
# total_cost=buckets_needed*cost_per_bucket
# print('Total Wall Area: \t',total_area)
# print('Total Paint buckets required: \t',buckets_needed)
# print('Total Cost: \t',total_cost)

height=float(input('Enter Height'))
width=float(input('Enter Width'))
coverage_per_bucket=4
cost_per_bucket=float(input('Enter Cost of Bucker'))
total_area=height*width
buckets_needed=math.ceil(total_area/coverage_per_bucket)
total_cost=buckets_needed*cost_per_bucket
print('Total Wall Area: \t',total_area)
print('Total Paint buckets required: \t',buckets_needed)
print('Total Cost: \t',total_cost)