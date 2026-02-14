class Product:
    def register(self):
        self.id=int(input('Enter Product Id: '))
        self.name=input('Enter Product Name: ')
        self.price =float(input('Enter Product Price'))
    def display(self):
        print('ID: ',self.id) 
        print('Name: ',self.name) 
        print('Price: ',self.price)   

class HerbalProduct(Product):
    def register(self):
        super().register()
        self.herbs_used=input('Enter Herbs used in Product')
        
    def display(self):
       super().display()
       print('Herbs: ',self.herbs_used)   

  #create one object on Herbal Product and call register & display   method   
herbal=HerbalProduct()
herbal.register()
herbal.display()

