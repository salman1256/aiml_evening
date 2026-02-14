# class Employee:
#     def __init__(self,id,name,qual,salary):
#         self.id=id
#         self.name=name
#         self.qual=qual
#         self.salary=salary

#     def display(self)   : 
#         print('ID: ',self.id)
#         print('Name: ',self.name)
#         print('Qualification: ',self.qual)
#         print('Salary: ',self.salary)
 
# emp1=Employee(1,'Raj','MTech',3500.50) 

# emp2=Employee(102,'Arsh','MCA',5500.70) 

# emp1.display()
# emp2.display()
#Inhertance Example
class Employee:
    def __init__(self,id,name,qual,salary):
        self.id=id
        self.name=name
        self.qual=qual
        self.salary=salary

    def display(self)   : 
        print('ID: ',self.id)
        print('Name: ',self.name)
        print('Qualification: ',self.qual)
        print('Salary: ',self.salary)

class Developer(Employee):
    def __init__(self, id, name, qual, salary,domain,project):
        super().__init__(id, name, qual, salary) 
        self.domain=domain
        self.project=project
    def details(self) :
        print('Domain: ',self.domain) 
        print('Project: ',self.project)  
dev=Developer(1,'Ali','BTech',4000.50,'.net','e-carnival')
dev.display()
dev.details()                  