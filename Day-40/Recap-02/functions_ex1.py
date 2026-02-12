# def welcome():
#     print('Welcome to python')

# welcome()    

# def fullname(fname, lname):
#     print ('Welcome to functions Mr.\\Ms. ',fname,' ',lname)


# first_name=input('Enter first name: ')
# last_name=input('Enter Last name: ')
# fullname(first_name,last_name)

# def multiply(num1,num2):
#     return num1*num2

# first_number=float(input('Enter first number: '))
# second_number=float(input('Enter Second Number: '))

# result=multiply(first_number,second_number)
# print('Result after multiplication: \t',result)
#Exercise Day-40 -01
# Write a program using function to calculate  average marks of student and print grade
# def calculate_grade(sem1,sem2,sem3,sem4):
#     #Write the your code here
#     pass
#Take four semester marks from user and 
# call the function that give you grade and average marks

def calculate_grade(sem1,sem2,sem3,sem4):
    avg_marks=(sem1+sem2+sem3+sem4)/4
    if avg_marks>=90:
        grade='A'
    elif avg_marks>=70:
        grade='B'   
    elif avg_marks>=50:
        grade='C'  
    elif avg_marks>=40:
        grade='D'
    else:
        grade='Fail' 
    return avg_marks,grade

sem_one=int(input('semeter1 marks: \t'))
sem_two=int(input('semeter2 marks: \t'))
sem_three=int(input('semeter3 marks: \t'))
sem_four=int(input('semeter4 marks: \t'))
avg,grd=calculate_grade(sem_one,sem_two,sem_three,sem_four)
print('Average Makrs:',avg)
print('Result Grade: ',grd)                  