# Arithmetic Operator + ,-, *,/,%,**,//
# Assignment Operator = ,+=,-=,*=,/=,
#Comparision ==,!=,>,<,>=,<=
# Logical Operator and, or ,not
#num=5
#num+=5= num+5

first_num=int(input('Enter First Number: \t'))
second_num=int(input('Enter Second Number: \t'))
opertion=input('Enter operation add,mul,div,sub,mod,power:\t')
match opertion:
    case 'add':
        print(f'Result after adding {first_num} and {second_num}\t',first_num+second_num)
    case 'sub':
        print(f'Result after subtracting {second_num} from  {first_num} \t ',first_num-second_num)  
    case 'mul':
        print(f'Result after multiplying {first_num} and  {second_num}\t ',first_num*second_num) 
    case 'div':
        print(f'Result after dividing {first_num} by {second_num} \t ',first_num/second_num) 
    case 'mod':
        print(f'Remainder {first_num} by {second_num} \t',first_num%second_num) 
    case 'power':
        print(f'{first_num} to the power{second_num} \t',first_num**second_num) 
    case '_':
        print('Invalid operation choice!!!')                          
