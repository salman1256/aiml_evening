tasks=['Planning & Analysis','Design','Coding']
new_task=input('Enter task name to add in list')
tasks.append(new_task)
print('Tasks: ',tasks)

delete_task=input('Enter task to delete')
if delete_task in tasks:
    tasks.remove(delete_task)

print('Tasks:',tasks)