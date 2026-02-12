def factorial(num):
    if num==1:
        return 1
    return num*factorial(num-1)

number=int(input('Enter Number to find out factorial: '))
print(f'Factorial of number: {number} is = \t ',factorial(number))