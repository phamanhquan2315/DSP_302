import matplotlib.pyplot as plt

subjects = ['Computer','English','Physics','Chemistry','Biology','Maths','History']
my_marks = [80,70,90,60,90,60,88]
my_friends_marks = [72,80,80,70,75,70,80]

plt.plot(subjects,my_marks,label = 'My Marks',marker = 'o')
plt.plot(subjects,my_friends_marks,label = 'My friends marks')

plt.xlabel('Subjects')
plt.ylabel('Marks')

plt.title("Marks Comparision")
plt.legend()

plt.show()