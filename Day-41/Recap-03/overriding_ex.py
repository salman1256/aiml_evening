class Employee:
    def calc_bonus(self,salary):
        self.bonus=salary*0.10
        print('Employee Bonus is: \t',self.bonus)

class Developer(Employee):
    def calc_bonus(self,salary):
        self.bonus=salary*0.15
        print('Developer Bonus is: \t',self.bonus)

class Manager(Employee):
    def calc_bonus(self,salary):
        self.bonus=salary*0.20
        print('Manager Bonus is: \t',self.bonus)

emp =Employee()
dev=Developer()
mgr=Manager()

emp_sal=float(input('Enter Employee Salary: '))
print('Employee Salary',emp_sal)
emp.calc_bonus(emp_sal)

dev_sal=float(input('Enter Developer Salary: '))
print('Developer Salary',dev_sal)
dev.calc_bonus(dev_sal)

mgr_sal=float(input('Enter Manager Salary: '))
print('Manager Salary',mgr_sal)
mgr.calc_bonus(mgr_sal)
  