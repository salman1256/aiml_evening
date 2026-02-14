#Base or Super class or Parent ( Super)
class Payment:
    def pay(self,amount):
        print('Processing Payment......')

#Derived or Sub or Child   Class  
class CardPayment(Payment):
    def pay(self,amount):
        print(f'Paid RM{amount} using Card') 

class TapAndGoPayment(Payment):
    def pay(self,amount):
        print(f'Paid RM{amount} using Tap and GO')   

class NetBankingPayment(Payment):
    def pay(self,amount):
        print(f'Paid RM{amount} using NetBanking')             

#All instances in list
payments=[CardPayment(),TapAndGoPayment(),NetBankingPayment()]
amount=1200
for payment in payments:
    payment.pay(amount)
#one netbanking instance
pay_amount=float(input('Insert Amount to pay '))
pay_nb=NetBankingPayment()
pay_nb.pay(pay_amount)