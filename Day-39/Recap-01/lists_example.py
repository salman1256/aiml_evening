# List is a mutable collection of values, lists are ordered and allow duplicates
# books=['Wings of Fire','You can win','Harry Potter','Midnight children','Harry Potter']
# print('\n All Books in list as follows \n')
# for book in books:
#     print(book)

# student_details=['Sam',18,205.90]
# for st in student_details:
#     print(st)

# student_marks=[80,85,88,85,90,95]
# print('Total Subject: ',len(student_marks))
# print('Total Marks: ',sum(student_marks))
# print('Marks percentage: ',round(sum(student_marks)/(len(student_marks)),2))
# print('\n Marks as follows:\n')
# for mark in student_marks:
#     print(mark,end='\t')
# #Sorting of list item
# student_marks.sort()
# print('\n student marks in ascending order \n')
# for mark in student_marks:
#     print(mark,end='\t')

# student_marks.sort(reverse=True)
# print('\n student marks in dsc order \n')
# for mark in student_marks:
#     print(mark,end='\t')

# Add item in list
# new_marks=int(input('\n Enter marks out of 100 to add in list: '))  
# student_marks.append(new_marks) 
# print('Total Subject: ',len(student_marks))
# print('Total Marks: ',sum(student_marks))
# print('Marks percentage: ',round(sum(student_marks)/(len(student_marks)),2))
# print('\n Marks as follows:\n')
# for mark in student_marks:
#     print(mark,end='\t')

#change list item
# print('Enter new marks for subject 1')
# student_marks[0]=int(input('Marks: \t'))
# print('\nUpdated Details \n')
# print('Total Subject: ',len(student_marks))
# print('Total Marks: ',sum(student_marks))
# print('Marks percentage: ',round(sum(student_marks)/(len(student_marks)),2))
# print('\n Marks as follows:\n')
# for mark in student_marks:
#     print(mark,end='\t')
#Remove item from list
# student_marks.remove(90)
# print('\n After Removal\n ')

# print('Total Subject: ',len(student_marks))
# print('Total Marks: ',sum(student_marks))
# print('Marks percentage: ',round(sum(student_marks)/(len(student_marks)),2))
# print('\n Marks as follows:\n')
# for mark in student_marks:
#     print(mark,end='\t')

book_list1=['Wings of Fire','You can win','Harry Potter','Midnight children','Harry Potter']
book_list2=['Discovery of India','My Experiments with Truth','Freedom','Psychology of Money','Harry Potter']
# print('\n All Books in list1 as follows \n')
# for book in book_list1:
#     print(book)

# print('\n All Books in list2 as follows \n')
# for book in book_list2:
#     print(book)
combined_list=book_list1+book_list2
print('All Books')
for book in combined_list:
    print(book)
    