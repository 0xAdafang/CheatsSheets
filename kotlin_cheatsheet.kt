// 🟣 KOTLIN CHEATSHEET - BASES

// 🔸 Variables
val age: Int = 30       // immutable
var name: String = "Alice"  // mutable
val isAdmin = true      // type inféré
val pi = 3.14

// 🔸 Conditions
if (age >= 18) {
    println("Majeur")
} else if (age >= 16) {
    println("Presque majeur")
} else {
    println("Mineur")
}

// 🔸 Boucles
for (i in 0..4) {
    println(i)
}

var count = 0
while (count < 3) {
    println("looping...")
    count++
}

var z = 0
do {
    println("z = $z")
    z++
} while (z < 2)

// 🔸 Fonctions
fun greet(name: String): Unit {
    println("Hello, $name")
}

fun add(a: Int, b: Int): Int {
    return a + b
}

greet("Bob")
println(add(2, 3))

// 🔸 Listes
val fruits = mutableListOf("apple", "banana", "cherry")
fruits.add("date")
println(fruits[0])       // accès
println(fruits.last())   // dernier élément

for (fruit in fruits) {
    println(fruit)
}

val squares = (0..4).map { it * it }  // équivalent list comprehension

// 🔸 Dictionnaires (Map)
val person = mutableMapOf("name" to "Alice", "age" to 30)
println(person["name"])
person["city"] = "Montreal"

for ((key, value) in person) {
    println("$key: $value")
}

// 🔸 Fonctions lambda
val double = { x: Int -> x * 2 }
println(double(4))

// map / filter
val nums = listOf(1, 2, 3, 4, 5)
val squared = nums.map { it * it }
val evens = nums.filter { it % 2 == 0 }

// 🔸 Try / Catch
try {
    val result = 10 / 0
} catch (e: ArithmeticException) {
    println("Division par zéro !")
} finally {
    println("Done")
}

// 🔸 Lecture heure/date
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

val now = LocalDateTime.now()
val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
println(now.format(formatter))

// 🔸 Classes simples
class Animal(val name: String) {
    fun speak() {
        println("$name makes a sound")
    }
}

val dog = Animal("Rex")
dog.speak()

// 🔸 Switch amélioré (when)
val color = "blue"
when (color) {
    "red" -> println("Rouge")
    "blue" -> println("Bleu")
    else -> println("Couleur inconnue")
}

// 🔸 Sécurité du null
val maybeName: String? = null
println(maybeName ?: "Nom inconnu")

// 🔸 Sets (ensembles)
val mySet = mutableSetOf(1, 2, 3)
mySet.add(4)
mySet.add(2)

if (3 in mySet) {
    println("3 est présent")
}

val a = setOf(1, 2, 3)
val b = setOf(3, 4, 5)
println(a union b)
println(a intersect b)
println(a subtract b)

// 🔸 Parcours d'une liste avec index
val names = listOf("Alice", "Bob", "Charlie")

for ((i, n) in names.withIndex()) {
    println("$i: $n")
}

val ages = listOf(25, 30, 35)
for ((n, a) in names.zip(ages)) {
    println("$n is $a years old")
}

for (n in names.reversed()) {
    println(n)
}

for (n in names.sorted()) {
    println(n)
}

// 🔸 CRUD sur les listes
val myList = mutableListOf(10, 20, 30)
myList.add(40)
myList.add(1, 15)
println(myList[0])
println(myList.last())

myList[0] = 5
myList.removeLast()
myList.removeAt(1)
myList.remove(30)

if (15 in myList) myList.remove(15)
myList.clear()

// 🔸 Data class
data class User(val name: String, val age: Int)

val u1 = User("Alice", 25)
val u2 = User("Alice", 25)
println(u1)
println(u1 == u2)

// 🔸 Sealed class
sealed class Result
data class Success(val data: String) : Result()
data class Failure(val error: String) : Result()

fun handle(result: Result) {
    when (result) {
        is Success -> println("Succès : ${result.data}")
        is Failure -> println("Échec : ${result.error}")
    }
}

handle(Success("OK"))

// 🔸 Héritage
open class Character(val name: String) {
    open fun speak() {
        println("$name parle.")
    }
}

class Warrior(name: String) : Character(name) {
    override fun speak() {
        println("$name crie et attaque !")
    }
}

val bob = Character("Bob")
bob.speak()
val aragorn = Warrior("Aragorn")
aragorn.speak()
