import os
# file_path='C:\\Users\\salma\\OneDrive\\Desktop\\aiml-evening\\Day-6\\ourfiles\\sample.txt'
try:
    file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-6\ourfiles\sample.txt'
    file=open(file_path,'w')
    content=input('Enter Text to Write in File')
    file.write(content)
    print('Text written in file and saved')
    file.close()
except Exception as ex:
    print('Error!!!',ex) 

finally:
    print ('End of Program!!!')