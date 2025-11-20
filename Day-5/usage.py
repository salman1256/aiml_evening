from calc import calculator as c
while True:
    print('\n Calculator Menu ')
    print('1.Add(+)')
    print('2.Sub(-)')
    print('3.Multi(*)')
    print('4.Div(/)')
    print('5.Average')
    print('6. Exit')
    op=int(input('Enter your choice (1-6)'))  
    if(op=='6'):
        print('Exit from Calculator')
        break
    n1=float(input('Enter First Number:\t'))
    n2=float(input('Enter Second Number:\t'))
    match op:
        case 1:
            c.addition(n1,n2)
        case 2:
            c.subtraction(n1,n2)
        case 3:
            c.multiplication(n1,n2)
        case 4:
            c.division(n1,n2)
        case 5:
            c.average(n1,n2)                
    choice=input('\n Do you wanna continue? if yes press y ').lower() 
    if (choice!='y'):
        print('Bye')
        break 
