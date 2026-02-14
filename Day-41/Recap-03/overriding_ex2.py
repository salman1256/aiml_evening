# Parent Class
class AppDelivery:
    def delivery_time(self):
        print('Order will take 45 minutes to deliver')
#Child Class 
class FastDelivery(AppDelivery):
    def delivery_time(self):
        print('Order will take 30 minutes to deliver')
# Child Class
class SuperFastDelivery(AppDelivery):
    def delivery_time(self):
        print('Order will take 15 minutes to deliver')


standard=AppDelivery() # parent class object
fast=FastDelivery()  # Fast Delivery child object
super_fast=SuperFastDelivery() # Super fast delivery child object
#calling using all three objects one by one
print('Normal Standard Delivery')
standard.delivery_time()

print('Fast Paid Delivery')
fast.delivery_time()

print('Super Fast Paid Delivery')
super_fast.delivery_time()
       