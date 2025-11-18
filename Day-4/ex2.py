# class Student:
#     school='DAV'  #Class Property
#     #id, name are object (instance) properties here
#     def __init__(self,id,name):
#         self.id=id
#         self.name=name

# s1=Student(12,'Arsh')
# s2=Student(3,'Maan')
# Student.school='KPS' #class property you can access and change using the Class name
# print('Student1\'s Detaials as follows')
# print(f'ID\t {s1.id} \t Name:\t{s1.name} \t School: \t {s1.school}')

# print('Student2\'s Detaials as follows')
# print(f'ID\t {s2.id} \t Name:\t{s2.name} \t School: \t {s2.school}')

class Student:
    def __init__(self,id,name):
        self.id=id
        self.name=name

    def __str__(self):
        return f"{self.id}->{self.name}"
      


s1=Student(12,'Arsh')
s2=Student(3,'Maan')
print(s1)
print(s2)


