class InvalidWithdrawal(Exception):
    pass
def withdraw (amount, balance):
    if amount<500 or amount>20000:
        raise InvalidWithdrawal('Withdrawal must be between RM 500 to RM 20000')
    elif amount>balance:
        raise InvalidWithdrawal('Insufficient balance in your account')
    else:
        balance-=amount
        print(f'RM {amount} withdrawn successfully')
        print(f'Remaining balance after Transaction: RM',balance)

try:
    ac_bal=float(input('Enter Account Balance: '))
    withdraw_amount=float(input('Input amount to withdraw: '))
    withdraw(withdraw_amount,ac_bal)
except InvalidWithdrawal as ex:
    print('Invalid Transaction: ',ex)
except Exception as ex:
    print('Error: ',ex)    
finally: 
    print('Transcation Completed')       