class InvalidAge(Exception):
    pass
def check_age(age):
    if(age<=0):
        raise InvalidAge('Age should not be negative or Zero')
    elif(age<18):
        raise InvalidAge('age should be greater than 18 years')
    elif(age>=150):
        raise InvalidAge('Unreal age for a living person')
    else:
        print(f'Age:{age} is valid and saved')

try:
    user_age=int(input('Enter your age: '))
    check_age(user_age)
except InvalidAge as ex:
    print('Invalid Age',ex)  
except Exception as ex:
    print('Other Exception: ',ex)             