# A dictionary stores data in key-value pairs.
#A dictionary is a mutable collection of items , key must be unique
# syntax {key:value}
# player={'name':'Rahamtullah Gurbaz','age':28,'country':'Afghanistan','ptype':'cricketer'}
# # print('All Keys')
# # for k in player.keys():
# #     print(k)

# # print('\n All Values \n')
# # for v in player.values():
# #     print(v)
# print('Key \t Value')
# for k in player.keys():
#     print(k,'\t',player[k])

#Nested Dictionary
students={
    'student-1':{'sid':1,'name':'arsh','course':'AIML'},
    'student-2':{'sid':2,'name':'maan','course':'Web Services'},
    'student-9':{'sid':9,'name':'soni','course':'AIML'},
    'student-3':{'sid':3,'name':'raj','course':'Python'},
    'student-4':{'sid':4,'name':'sam','course':'FullStack .net'},
}
# print('Students Details')
# for k,v in students.items():
#     print(k,v)
print('Number of studetns:',len(students))
for k,v in students.items():
    print(f'Student ID: {v['sid']}\t Student Name:{v['name']} \t Course Selected: {v['course']}')
