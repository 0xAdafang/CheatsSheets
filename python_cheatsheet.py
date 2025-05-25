# 🐍 PYTHON CHEATSHEET - BASES

# 🔸 Variables
x = 10
name = "Alice"
pi = 3.14
is_alive = True

# 🔸 Conditions
if x > 5:
    print("x is greater than 5")
elif x == 5:
    print("x is 5")
else:
    print("x is less than 5")

# 🔸 Boucles
# for loop
for i in range(5):
    print(i)

# while loop
count = 0
while count < 3:
    print("looping...")
    count += 1

# 🔸 Fonctions
def greet(name: str) -> None:
    print(f"Hello, {name}!")

greet("Bob")

# 🔸 Listes
fruits = ["apple", "banana", "cherry"]
fruits.append("date")
print(fruits[0])         # accès
print(fruits[-1])        # dernier élément
for fruit in fruits:
    print(fruit)

# List comprehension
squares = [x**2 for x in range(5)]

# 🔸 Dictionnaires
person = {"name": "Alice", "age": 30}
print(person["name"])
person["city"] = "Montreal"

# Boucle sur dict
for key, value in person.items():
    print(f"{key}: {value}")

# 🔸 Fonctions lambda
double = lambda x: x * 2
print(double(4))

# 🔸 Try / Except
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Division by zero!")
finally:
    print("Done")

# 🔸 Fichiers
# Lecture
with open("data.txt", "r") as file:
    content = file.read()

# Écriture
with open("output.txt", "w") as file:
    file.write("Hello world!")

# 🔸 Classes (simples)
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

dog = Animal("Rex")
dog.speak()

# 🔸 Imports
import math
print(math.sqrt(25))

# 🔸 Slicing
letters = ['a', 'b', 'c', 'd', 'e']
print(letters[1:4])  # ['b', 'c', 'd']

# 🔸 Listes imbriquées
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Accès à un élément
print(matrix[1][2])  # 6

# Boucle dans une liste de listes
for row in matrix:
    for value in row:
        print(value, end=" ")
    print()

# 🔸 Sets (ensembles, pas d'ordre, pas de doublons)
my_set = {1, 2, 3}
my_set.add(4)
my_set.add(2)  # ne fera rien car 2 existe déjà

# Vérif d’appartenance rapide
if 3 in my_set:
    print("3 is in the set")

# Union, intersection, différence
a = {1, 2, 3}
b = {3, 4, 5}
print(a | b)  # Union: {1, 2, 3, 4, 5}
print(a & b)  # Intersection: {3}
print(a - b)  # Différence: {1, 2}

# 🔸 Parcours de liste (avec index)
names = ["Alice", "Bob", "Charlie"]

# enumerate donne index + valeur
for i, name in enumerate(names):
    print(f"{i}: {name}")

# zip : parcours de plusieurs listes en parallèle
ages = [25, 30, 35]
for name, age in zip(names, ages):
    print(f"{name} is {age} years old")

# reversed
for name in reversed(names):
    print(name)

# sorted
for name in sorted(names):
    print(name)

# 🔸 Parcours d’un dictionnaire
data = {"a": 1, "b": 2, "c": 3}

# Clés
for key in data:
    print(f"Key: {key}")

# Valeurs
for value in data.values():
    print(f"Value: {value}")

# Clés + valeurs
for key, value in data.items():
    print(f"{key} => {value}")

# 🔸 Opérations CRUD sur les LISTES

# Initialisation
my_list = [10, 20, 30]

# CREATE
my_list.append(40)        # Ajoute à la fin (comme push)
my_list.insert(1, 15)     # Insère 15 à l'index 1

# READ
print(my_list[0])         # Accès par index
print(my_list[-1])        # Dernier élément

# UPDATE
my_list[0] = 5            # Remplace l'élément à l'index 0

# DELETE
my_list.pop()             # Supprime le dernier élément
my_list.pop(1)            # Supprime l'élément à l'index 1
my_list.remove(30)        # Supprime la première occurrence de la valeur 30

# Vérifier et nettoyer
if 15 in my_list:
    my_list.remove(15)

# Effacer la liste entière
my_list.clear()

# 🔸 Lambda expressions
# Une lambda est une fonction anonyme à usage court
add = lambda x, y: x + y
print(add(3, 4))  # 7

# Utiles avec des fonctions comme map, filter, sorted, etc.
nums = [1, 2, 3, 4, 5]

# map : applique une fonction à chaque élément
squared = list(map(lambda x: x**2, nums))  # [1, 4, 9, 16, 25]

# filter : filtre les éléments qui valident la condition
even = list(filter(lambda x: x % 2 == 0, nums))  # [2, 4]

# sorted avec lambda
names = ["Alice", "bob", "Charlie"]
sorted_names = sorted(names, key=lambda x: x.lower())

# 🔸 Fonctions utiles
print(len(nums))                # Taille
print(sum(nums))               # Somme
print(min(nums), max(nums))    # Min / Max
print(list(reversed(nums)))    # Liste inversée
print(sorted(nums, reverse=True))  # Tri décroissant

# any / all
has_even = any(x % 2 == 0 for x in nums)  # True s’il y a au moins un pair
all_positive = all(x > 0 for x in nums)   # True si tous sont positifs
