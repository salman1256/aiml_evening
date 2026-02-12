#Lambda: are one liner function, they do not have any name (anonymous functions)
addition=lambda x,y:x+y
f_num=int(input('First Number: \t'))
s_num=int(input('Second Number: \t'))

print(f'Addition of {f_num} and {s_num} is = \t ',addition(f_num,s_num))