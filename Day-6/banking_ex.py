class InsufficientBalance(Exception):
    def __init__(self, bal,amount):
        super().__init__(f'Insufficient Balance Your balance is {bal} withdrawal amount {amount}')
        self.bal=bal
        self.amount=amount

def withdraw(bal,amount):
        if(amount>bal):
            raise InsufficientBalance(bal,amount) 
        return bal-amount   
    

try:
       
        reamining_amount=withdraw(20000,1000) 
        print('Remaining Amount',reamining_amount)
except InsufficientBalance as ex:
        print('Error',ex)    


# Write one example of Custom Exception 
# Take the salary from user 
# if salary is with in range of (2000 to 25000) ,It is allowed.
# If Salary is not within the range than raise a custom exception salary must be within range MYR (2K to 25K)       

