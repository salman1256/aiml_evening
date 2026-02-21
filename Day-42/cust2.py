class SalaryNotInRange(Exception):
    pass

def check_salary(salary):
    if(not 2000<salary<25000):
        raise SalaryNotInRange('Salary must be within range RM2000 to RM25000')
    else:
        print(f'Salary: {salary} savad and accepted')

try:
    emp_salary=float(input('Enter Salary: '))
    check_salary(emp_salary) 
except SalaryNotInRange as sn:
    print('Invalid Salary: ',sn) 
except Exception as ex:
    print('Exception Other: ',ex)  
finally:
    print('End of Program')                