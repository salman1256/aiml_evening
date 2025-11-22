import os

# try:
#     file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-6\ourfiles'
#     file_name=input('Enter filename to create the file : \t')
#     fullpath=os.path.join(file_path,file_name)
#     with open(fullpath,'w') as file:
#         file.write('Sam ,90\n')
#         file.write('Ria ,75\n')
#         file.write('Neha ,80\n')
#         file.write('Vini ,60\n')
#         file.write('Chang ,85\n')

# except Exception as ex:
#     print('Exception Occureed',ex)


# try:
#     file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-6\ourfiles'
#     file_name='student_scroe.txt'
#     fullpath=os.path.join(file_path,file_name)
#     with open(fullpath,'r') as file:
#        all_lines=file.readlines()
#        for line in all_lines:
#            print(line)

# except Exception as ex:
#     print('Exception Occureed',ex)

  #Add a new Record for one more Studen in this file student_score.txt without changing existing content
  #   show final file contents after append
try:
    file_path=r'C:\Users\salma\OneDrive\Desktop\aiml-evening\Day-6\ourfiles'
    file_name='student_scroe.txt'
    fullpath=os.path.join(file_path,file_name)
    with open(fullpath,'a') as file:
        file.write('Neha ,85\n')
    file.close() 
    print ('After appending')  
    with open(fullpath,'r') as file:
        all_lines=file.readlines()
        for line in all_lines:
           print(line)

except Exception as ex:
    print('Exception Occureed',ex)