// 🦀 RUST CHEATSHEET - BASES

// 🔸 Variables
fn main() {
    let x = 5;               // immutable
    let mut y = 10;          // mutable
    y += 1;

    println!("x = {}, y = {}", x, y);

    // 🔸 Types de base
    let a: i32 = 10;
    let b: f64 = 3.14;
    let is_valid: bool = true;
    let name: &str = "Alice";

    // 🔸 Conditions
    if a > 5 {
        println!("a est grand");
    } else {
        println!("a est petit");
    }

    // 🔸 Boucles
    for i in 0..5 {
        println!("i: {}", i);
    }

    let mut count = 0;
    while count < 3 {
        println!("count: {}", count);
        count += 1;
    }

    // Boucle infinie
    // loop {
    //     break; // à utiliser pour sortir
    // }

    // 🔸 Fonctions
    say_hello("Rust");
    let res = add(2, 3);
    println!("2 + 3 = {}", res);

    // 🔸 Vecteurs
    let mut nums = vec![1, 2, 3];
    nums.push(4);              // Ajout
    nums.pop();                // Suppression
    println!("Premier: {}", nums[0]); // Accès

    for num in &nums {
        println!("num: {}", num);
    }

    // 🔸 Tuples
    let person = ("Alice", 30);
    println!("Name: {}, Age: {}", person.0, person.1);

    // 🔸 Option
    let maybe_name: Option<&str> = Some("Bob");
    match maybe_name {
        Some(n) => println!("Nom: {}", n),
        None => println!("Aucun nom"),
    }

    // 🔸 Result
    let result = divide(10, 2);
    match result {
        Ok(val) => println!("Résultat: {}", val),
        Err(e) => println!("Erreur: {}", e),
    }
}

// Fonctions classiques
fn say_hello(name: &str) {
    println!("Hello, {}", name);
}

fn add(a: i32, b: i32) -> i32 {
    a + b
}

// Exemple de Result
fn divide(a: i32, b: i32) -> Result<i32, &'static str> {
    if b == 0 {
        Err("Division par zéro")
    } else {
        Ok(a / b)
    }
}

// 🔸 Structs (structures)
struct Person {
    name: String,
    age: u32,
}

// Implémentation (méthodes associées)
impl Person {
    fn new(name: &str, age: u32) -> Self {
        Self {
            name: name.to_string(),
            age,
        }
    }

    fn greet(&self) {
        println!("Salut, je suis {} et j'ai {} ans", self.name, self.age);
    }
}

fn struct_example() {
    let alice = Person::new("Alice", 30);
    alice.greet();
}

// 🔸 Enum simple
enum Direction {
    North,
    South,
    East,
    West,
}

fn go(dir: Direction) {
    match dir {
        Direction::North => println!("On va au nord"),
        Direction::South => println!("On va au sud"),
        _ => println!("Autre direction"),
    }
}

// 🔸 Ownership (propriété unique)
fn ownership_example() {
    let s1 = String::from("hello");
    let s2 = s1; // s1 est déplacé → s1 n'est plus accessible
    println!("{}", s2); // ✅
    // println!("{}", s1); ❌ erreur
}

// 🔸 Borrowing (référence)
fn borrowing_example() {
    let s1 = String::from("world");
    print_ref(&s1); // emprunt, s1 toujours utilisable
    println!("Encore : {}", s1);
}

fn print_ref(s: &String) {
    println!("{}", s);
}

// 🔸 Mutable borrow
fn mut_borrow_example() {
    let mut s = String::from("Hi");
    change(&mut s);
    println!("{}", s);
}

fn change(s: &mut String) {
    s.push_str(" there!");
}

fn iterators_example() {
    let numbers = vec![1, 2, 3, 4, 5];

    // 🔹 map
    let doubled: Vec<_> = numbers.iter().map(|x| x * 2).collect();
    println!("{:?}", doubled); // [2, 4, 6, 8, 10]

    // 🔹 filter
    let evens: Vec<_> = numbers.iter().filter(|x| *x % 2 == 0).collect();
    println!("{:?}", evens); // [2, 4]

    // 🔹 enumerate
    for (i, val) in numbers.iter().enumerate() {
        println!("Index: {}, Value: {}", i, val);
    }
}

fn iterators_example() {
    let numbers = vec![1, 2, 3, 4, 5];

    // 🔹 map
    let doubled: Vec<_> = numbers.iter().map(|x| x * 2).collect();
    println!("{:?}", doubled); // [2, 4, 6, 8, 10]

    // 🔹 filter
    let evens: Vec<_> = numbers.iter().filter(|x| *x % 2 == 0).collect();
    println!("{:?}", evens); // [2, 4]

    // 🔹 enumerate
    for (i, val) in numbers.iter().enumerate() {
        println!("Index: {}, Value: {}", i, val);
    }
}

fn vec_crud() {
    let mut items = vec!["sword", "shield", "potion"];

    // CREATE
    items.push("elixir");
    items.insert(1, "ring"); // Insère à l'index 1

    // READ
    println!("First item: {}", items[0]);
    if let Some(last) = items.last() {
        println!("Last item: {}", last);
    }

    // UPDATE
    items[0] = "magic sword";

    // DELETE
    items.pop(); // supprime le dernier
    items.remove(1); // supprime à l'index 1

    // Vérification
    if items.contains(&"potion") {
        println!("Potion trouvée !");
    }

    // Affichage
    for item in &items {
        println!("Item: {}", item);
    }
}

fn say_hello<T: Greet>(thing: T) {
    thing.greet();
}

fn macro_examples() {
    // Les plus utilisées :
    println!("Salut {}", "monde");  // Affiche sur stdout
    dbg!(42 + 8);                  // Debug, retourne et affiche
    let v = vec![1, 2, 3];         // Crée un Vec rapidement
}

// Macro perso
macro_rules! say_hi {
    () => {
        println!("Salut macro !");
    };
}

fn custom_macro() {
    say_hi!(); // appelle la macro
}
