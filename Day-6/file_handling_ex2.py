# import os
# # file_path='C:\\Users\\salma\\OneDrive\\Desktop\\aiml-evening\\Day-6\\ourfiles\\sample.txt'
# try:
#     file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-6\ourfiles\sample.txt'
#     file=open(file_path,'r')
#     content=file.read()
#     print('File Conten as follows')
#     print(content)
# except Exception as ex:
#     print('Error!!!',ex) 

# finally:
#     print ('End of Program!!!')
#Reading From File
#C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-3
import os
# file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-3'
file_path=os.getcwd()
file_name=input('Enter filename to readfile : \t')
fullpath=os.path.join(file_path,file_name)
if(os.path.exists(fullpath)):
    file=open(fullpath,'r')
    file_content=file.read()
    print('File Content as follows!!!')
    print(file_content)
else:
    print(f'No Such file {file_name} exist')    