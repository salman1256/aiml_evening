# for i in range(1,100):
#     print(i,end=" ")

# print('\n All Odd numbers from one to 100 \n')
# for i in range(1,101,2):
#     print(i,end=" ")

# print('\n All Even Numbers from one to 100 \n')
# for i in range(0,101,2):
#     print(i,end=" ")
num=int(input('Enter number to find out table: '))
print(f'Table of {num} as follows')
for i in range(1,11):
    print(f'{num}*{i} = {num*i}')

