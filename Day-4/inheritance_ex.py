# class Emp:
#     def __init__(self):
#         print('Employee Constructor')

# class Dev(Emp):
#     def __init__(self):
#         super().__init__()
#         print('Devloper Constructor')


# #creating the object of Dev class
# dev=Dev()
# emp=Emp()

class Emp:
    def __init__(self,id,name,qual):
        self.id=id
        self.name=name
        self.qual=qual

    def __str__(self):
        return f"ID: {self.id} Name: {self.name} Qualification: {self.qual} "  

class Dev(Emp):
    def __init__(self,id,name,qual,project,domain):
        super().__init__(id,name,qual)
        self.project=project
        self.domain=domain
    def __str__(self):
       
        return f"ID: {self.id} Name: {self.name} Qualification: {self.qual} Domain: {self.domain} Project: {self.project}" 

#creating the object of Dev class
dev=Dev(101,'Xi Xing','MTech','e-carnival','dot net')

print(dev)

