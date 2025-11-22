import os

try:
    file_path=os.getcwd()
    file_name=input('Enter filename to update thee : \t')
    fullpath=os.path.join(file_path,file_name)
    if(os.path.exists(fullpath)):
        file=open(fullpath,'a')
        file_content=input('Enter Content to update file')  
        file.write(file_content)
        print(f'File {file_name} updated')
    else:
        print(f'No Such file {file_name} exist') 

except Exception as ex:
    print('Exception Occureed',ex)
