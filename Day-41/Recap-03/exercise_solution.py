class Transport:
    def travel(self):
        pass
#Derived or Sub or Child   Class  
class Car(Transport):
     def travel(self):
       print('Travel using Car with family ') 

class Bus(Transport):
    def travel(self):
        print('Travel in a Bus with many passengers ') 

class Bike(Transport):
     def travel(self):
       print('Travel by bike alone ') 


transports=[Car(),Bus(),Bike()]   

for trans in transports:
    trans.travel()