class Customer:
    # constructor
    def __init__(self,name,city,odlimit):
        self.name=name
        self.city=city
        self.odlimit=odlimit
    #Method    
    def show(self):
        print('Customer Name: ',self.name) 
        print('Customer City: ',self.city)  
        print ('Overdraft Limit: ',self.odlimit)
# Creating instance or object of class Customer
cust1=Customer('Sam','California',12000)  
print('Customer One Details as follows') 
cust1.show()

