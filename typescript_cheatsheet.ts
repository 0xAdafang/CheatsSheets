// 🟦 TYPESCRIPT CHEATSHEET - BASES

// 🔸 1. Types & Variables
let age: number = 30;
let userName: string = "Alice";
let isAdmin: boolean = true;
let city = "Montreal"; // Type string auto-déduit
let ages = 18;

// 🔸 2. Conditions
if (age >= 18) {
  console.log("Majeur");
} else if (age >= 16) {
  console.log("Presque majeur");
} else {
  console.log("Mineur");
}

let color = "blue";
switch (color) {
  case "red":
    console.log("Rouge");
    break;
  case "blue":
    console.log("Bleu");
    break;
  default:
    console.log("Couleur inconnue");
}

// 🔸 3. Boucles
for (let i = 0; i < 5; i++) {
  console.log(`i: ${i}`);
}

let n = 0;
while (n < 3) {
  console.log(`n: ${n}`);
  n++;
}

let z = 0;
do {
  console.log(`z: ${z}`);
  z++;
} while (z < 2);

// 🔸 4. Tableaux (Arrays)
let numbers: number[] = [1, 2, 3];
let names: string[] = ["Alice", "Bob"];
let items: string[] = ["potion", "sword", "shield"];

// CRUD
items.push("elixir");           // ajoute à la fin
items.unshift("map");           // ajoute au début
console.log(items[0]);          // lecture
console.log(items.at(-1));      // lecture dernier
items[1] = "magic sword";       // update
items.pop();                    // supprime dernier
items.shift();                  // supprime premier
items.splice(1, 1);             // supprime à index
if (items.includes("potion")) {
  console.log("Potion trouvée !");
}

// 🔸 5. Parcours de tableaux
const fruits = ["apple", "banana", "cherry"];

fruits.forEach((fruit, index) => {
  console.log(`${index}: ${fruit}`);
});

for (const fruit of fruits) {
  console.log(fruit);
}

for (const index in fruits) {
  console.log(`Index ${index}: ${fruits[index]}`);
}

for (const [i, val] of fruits.entries()) {
  console.log(`${i} -> ${val}`);
}

// 🔸 6. Fonctions
function greet(name: string): void {
  console.log(`Hello, ${name}`);
}

function add(a: number, b: number): number {
  return a + b;
}

// Fléchée
const square = (x: number): number => x * x;

// 🔸 7. Objets & Interfaces
interface User {
  name: string;
  age: number;
  isActive?: boolean; // optionnel
}

const user1: User = {
  name: "Claire",
  age: 25,
};

// 🔸 8. Classes
class Animal {
  name: string;

  constructor(name: string) {
    this.name = name;
  }

  speak(): void {
    console.log(`${this.name} makes a sound`);
  }
}

const dog = new Animal("Rex");
dog.speak();

// 🔸 9. Enums
enum Role {
  User,
  Admin,
  SuperAdmin,
}
let role: Role = Role.Admin;

// 🔸 10. Fonctions utiles sur tableaux
const numbers2 = [1, 2, 3, 4, 5];

const doubled = numbers2.map(n => n * 2);
const evens = numbers2.filter(n => n % 2 === 0);
const firstEven = numbers2.find(n => n % 2 === 0);
console.log(numbers2.every(n => n > 0)); // true
console.log(numbers2.some(n => n > 3));  // true

// 🔸 11. Types avancés & astuces
type ID = number | string;

function printId(id: ID) {
  console.log(`ID: ${id}`);
}

// Assertion de type
let input = document.querySelector("input") as HTMLInputElement;
input.value = "Hello";

// Optional chaining
const maybeUser = { name: "Bob", address: { city: "Paris" } };
console.log(maybeUser?.address?.city);

// Nullish coalescing
let x: string | undefined;
let fallback = x ?? "default"; // si x est null ou undefined

//🔸 12. Try / Catch
try {
  throw new Error("Oups !");
} catch (e) {
  console.log("Erreur :", e.message);
} finally {
  console.log("Bloc exécuté");
}

// 🔸 13. Fonctions lambda
const double = (x: number): number => x * 2;