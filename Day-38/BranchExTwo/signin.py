def signin(username, pwd):
    if((username=='sam') and (pwd=='sam@1256')):
        print('Sign In Success')
    else:
        print('Invalid Credentials')    

username=input('Enter UserName: ')
userpwd=input('Enter User Password: ') 
signin(username,userpwd)     