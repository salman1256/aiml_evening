try:
    num1=float(input('Enter First Number: '))
    num2=float(input('Enter Second Number: '))
    result=num1/num2
    print('Result after divison is =\t',result)
except ZeroDivisionError:
    print('Divison by Zero not allowed')
except ValueError:
    print('Invalid input use numbers only') 
finally:
    print('End of Program!!!')           