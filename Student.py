import random
class Student:
    def __init__(self, name='', group='', gpa=0):
        self.__id = random.randint(1, 100)  # Генерация случайного значения id
        self.__name = name
        self.__group = group
        self.__gpa = gpa
    def show(self):
        print(f"ID: {self.__id}, Name: {self.__name}, Group: {self.__group}, GPA: {self.__gpa}")
    @property
    def getgroup(self):
        return self.__group
    @property
    def getgpa(self):
        return self.__gpa
students = [
Student("John", "Group A", 3.5),
    Student("Alice", "Group B", 4.2),
    Student("Bob", "Group A", 3.8)
]# Сортировка по убыванию атрибута id
sorted_students = sorted(students, key=lambda student: student._Student__id, reverse=True)# Вывод списка студентов
for student in sorted_students:
    student.show()