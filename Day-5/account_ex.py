class Account:
    def __init__(self,ac_holder,balance):
        self.ac_holder=ac_holder
        self.balance=balance

    def deposit(self, amount):
        self.balance+=amount
        return self.balance
    
    def withdraw(self,amount):
        if(self.balance>=amount):
            self.balance-=amount
        
        else:
            print('Insufficient Amount in your Account') 
            print ('Transaction Failed')
        return self.balance
        
       
    def display(self):
        print(f'Account Holder Name: {self.ac_holder} Account Balance: {self.balance}')         


# ac_one=Account('Sam',50000) 

# ac_two=Account('Xi',4500) 

# ac_one.display()
# ac_two.display()    
ac=Account('Sunil',50000)
print('Please choose \n1.Deposit \n2.WithDraw \n3.Account Info')
op=int(input('Enter your choice 1, 2 or 3: '))
if(op==1):
    amount=float(input('Enter Acmout to deposit:\t'))
    print('Balance after Deposit: \t',ac.deposit(amount))
elif(op==2):
    wamount=float(input('Enter Acmout to withdraw: \t'))
    print('Balance after Transaction: \t',ac.withdraw(wamount)) 
elif(op==3):
   ac.display()  
else:
    print('Wrong Choice!!!') 

