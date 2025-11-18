# class Emp:
#    def reg(self):
#       self.id=int(input('Enter Id: \t'))
#       self.name=input('Enter Name: \t')

#    def display(self):
#          print('ID: \t',self.id)
#          print('Name: \t',self.name)

# class Dev(Emp):
#   def reg(self):
#       super().reg()
#       self.domain=input('Enter domain:\t')
#       self.project=input('Enter Project: \t')
  
#   def display(self):
#          super().display()
#          print('Domain: \t',self.domain)
#          print('Project: \t',self.project)


# emp=Emp()
# print('Employee Register')
# emp.reg()
# dev=Dev()
# print('Dev Register')
# dev.reg()
# print('Employee Display')
# emp.display()
# print('Dev Display')
# dev.display()
# 1: Parent Class : Product , Attributes name, price
# 2. Child Class   HerbalProduct Attribute : herbs_used
#Use super() to call the parent constructor
# Override __str()__ and return all the details
class Product:
    def __init__(self,name,price):
        self.name=name
        self.price=price
    def __str__(self):
        return f"Product Name: {self.name}, Product Price: MYR {self.price}"  
class HerbalProduct(Product):
    def __init__(self,name,price,herbs_used):
        super().__init__(name,price)
        self.herbs_used=herbs_used
    def __str__(self):
             return f"Product Name: {self.name}, Product Price: MYR {self.price} Herbs Used: {self.herbs_used}"


hp=HerbalProduct('Herbal Shampoo',120.50,'Ritha, Sikka Kai')
print(hp)        