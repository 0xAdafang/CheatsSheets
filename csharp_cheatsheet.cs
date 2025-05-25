// 🟦 C# CHEATSHEET - BASES

// 🔸 Variables
int age = 30;
string name = "Alice";
bool isAdmin = true;
double pi = 3.14;
var city = "Montreal";

// 🔸 Conditions
if (age >= 18)
    Console.WriteLine("Majeur");
else if (age >= 16)
    Console.WriteLine("Presque majeur");
else
    Console.WriteLine("Mineur");

// 🔸 Switch
string color = "blue";
switch (color)
{
    case "red":
        Console.WriteLine("Rouge");
        break;
    case "blue":
        Console.WriteLine("Bleu");
        break;
    default:
        Console.WriteLine("Couleur inconnue");
        break;
}

// 🔸 Boucles
for (int i = 0; i < 5; i++)
    Console.WriteLine($"i: {i}");

int n = 0;
while (n < 3)
{
    Console.WriteLine($"n: {n}");
    n++;
}

int z = 0;
do
{
    Console.WriteLine($"z: {z}");
    z++;
} while (z < 2);

// 🔸 Listes (List<T>)
List<string> items = new List<string> { "sword", "potion" };
items.Add("elixir");              // CREATE
items.Insert(1, "shield");        // INSERT
Console.WriteLine(items[0]);      // READ
items[0] = "magic sword";         // UPDATE
items.Remove("potion");           // DELETE by value
items.RemoveAt(1);                // DELETE by index

foreach (var item in items)
    Console.WriteLine(item);

// 🔸 Fonctions
void Greet(string name)
{
    Console.WriteLine($"Hello, {name}");
}

int Add(int a, int b)
{
    return a + b;
}

Greet("Bob");
Console.WriteLine(Add(3, 4));

// 🔸 Classes simples
class Animal
{
    public string Name { get; set; }

    public Animal(string name)
    {
        Name = name;
    }

    public void Speak()
    {
        Console.WriteLine($"{Name} makes a sound");
    }
}

Animal dog = new Animal("Rex");
dog.Speak();

// 🔸 Null safety / coalescing
string? maybeName = null;
Console.WriteLine(maybeName ?? "Nom inconnu");

// 🔸 Dictionnaire
Dictionary<string, int> scores = new Dictionary<string, int>
{
    { "Alice", 90 },
    { "Bob", 75 },
    { "Charlie", 60 }
};

foreach (var kvp in scores)
    Console.WriteLine($"{kvp.Key} => {kvp.Value}");

// 🔸 LINQ
List<int> nums = new List<int> { 1, 2, 3, 4, 5 };
var evens = nums.Where(n => n % 2 == 0).ToList();
var doubled = nums.Select(n => n * 2).ToList();
int sum = nums.Sum();
bool anyOdd = nums.Any(n => n % 2 != 0);
bool allPositive = nums.All(n => n > 0);

// 🔸 Enum, Struct, Interface
enum Role { User, Admin, SuperAdmin }

struct Point
{
    public int X;
    public int Y;
}

interface IAttack
{
    void Attack();
}

class Warrior : IAttack
{
    public void Attack()
    {
        Console.WriteLine("Le guerrier attaque !");
    }
}

IAttack fighter = new Warrior();
fighter.Attack();

// 🔸 Async / Await
async Task LoadDataAsync()
{
    Console.WriteLine("Chargement...");
    await Task.Delay(1000);
    Console.WriteLine("Terminé !");
}
// await LoadDataAsync(); // Appel depuis Main async

// 🔸 Try / Catch / Finally
try
{
    int result = 10 / 0;
}
catch (DivideByZeroException ex)
{
    Console.WriteLine($"Erreur : {ex.Message}");
}
finally
{
    Console.WriteLine("Opération terminée.");
}

// 🔸 DateTime & Fichier
DateTime now = DateTime.Now;
Console.WriteLine(now.ToString("yyyy-MM-dd HH:mm:ss"));

string text = "Bonjour";
File.WriteAllText("hello.txt", text);
string lu = File.ReadAllText("hello.txt");
Console.WriteLine(lu);

// 🔸 Héritage
class Character
{
    public string Name { get; set; }

    public Character(string name)
    {
        Name = name;
    }

    public virtual void Speak()
    {
        Console.WriteLine($"{Name} parle.");
    }
}

class Mage : Character
{
    public Mage(string name) : base(name) { }

    public override void Speak()
    {
        Console.WriteLine($"{Name} lance un sort.");
    }
}

Character c = new Character("Bob");
c.Speak();

Mage m = new Mage("Gandalf");
m.Speak();
