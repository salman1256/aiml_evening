# class Emp:
#     def __init__(self):
#         print('Welcome to Employee class')
#     def display(self):
#         print('Display of Employee Class')   

# #object creation
# emp1=Emp()
# emp1.display()

#comment : Ctr+K+C
#Uncomment: Ctr+K+U
#self parameter is a reference to current object
class Emp:
    def __init__(self,id,name,qual,salary):
       self.id=id
       self.name=name
       self.qual=qual
       self.salary=salary

    def display(self):
        print('Employee Detailas as follows')  
        print(f'ID:\t{self.id}')
        print(f'Name:\t{self.name}')
        print(f'Qualification:\t{self.qual}') 
        print(f'Salary:\t{self.salary}')   

e1=Emp(1,'Sam','MTech',98000) 
e2=Emp(2,'Raj','MCA',76000)       
e3=Emp(115,'Neha','BTech',86000.58)

print('------Employee e3------')
e3.display()

print('------Employee e1------')
e1.display()