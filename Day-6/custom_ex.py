class InvalidAge(Exception):
    pass

def check_age(age):
   if(age<=0):
       raise InvalidAge('Age should not be negative') 
   elif(age<18):
       raise InvalidAge('Age should be greater than 18 years')
   else:
       print(f'Age {age} is saved and valid for voting')
       

try:
    user_age=int(input('Enter your age: \t'))
    check_age(user_age)

except InvalidAge as e:
    print('Invalid Age: ',e) 
       
except Exception as ex:
    print('Exception Occured ',ex)    
