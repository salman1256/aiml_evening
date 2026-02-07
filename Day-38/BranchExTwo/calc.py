from re import match


def add(num1, num2):
    return num1+num2
def multi(num1, num2):
    return num1*num2
def sub(num1, num2):
    return num1-num2
def div(num1, num2):
    return num1/num2

print('Calculator Example')

fnum=float(input( 'enter first number: '))
snum=float(input( 'enter second number: '))

print('Select Operation: ')
print('1.Add')
print('2.Sub')
print('3.Multi')
print('4.Div')
choice=input('Enter choice (1/2/3/4): ')
match choice:
    case "1":
        print('Addition Result: ',add(fnum,snum))
    case "2":
        print('Subtraction Result: ',sub(fnum,snum))
    case "3":
        print('Multiplication Result: ',multi(fnum,snum))
    case "4":
        print('Division Result: ',div(fnum,snum))  
    case _:
        print('Invalid Choice')              

