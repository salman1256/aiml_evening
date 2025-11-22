# Write one example of Custom Exception 
# Take the salary from user 
# if salary is with in range of (2000 to 25000) ,It is allowed.
# If Salary is not within the range than raise a custom exception salary must be within range MYR (2K to 25K)   
class SalaryNotInRange(Exception):
    def __init__(self, salary,msg='salary must be within range MYR (2K to 25K) '):
        self.salary=salary
        self.msg=msg
        super().__init__(self.msg)

try:
    salary=int(input('Enter Salary Amount : \t'))
    if not 2000<salary<25000:
        raise SalaryNotInRange(salary)
    else:
        print(f'Salary {salary} Saved and accepted!!!' )
except SalaryNotInRange as ex:
    print('Error !!!',ex)

except Exception as ex:
    print ('Exception : ',ex)