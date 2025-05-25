# 🟣 ELIXIR CHEATSHEET - BASES

# 🔸 Variables (immutables par défaut)
x = 5
name = "Alice"
is_admin = true

# 🔸 Structures de contrôle
if x > 3 do
  IO.puts("x est grand")
else
  IO.puts("x est petit")
end

# case
case x do
  1 -> IO.puts("Un")
  5 -> IO.puts("Cinq")
  _ -> IO.puts("Autre")
end

# 🔸 Fonctions
defmodule Math do
  def add(a, b), do: a + b
end

IO.puts(Math.add(2, 3))

# Fonctions anonymes (lambda)
square = fn x -> x * x end
IO.puts(square.(4))

# 🔸 Listes
fruits = ["apple", "banana", "cherry"]
IO.puts(Enum.at(fruits, 0))      # accès
IO.inspect(fruits ++ ["date"])   # ajout
IO.inspect(List.delete(fruits, "banana"))  # suppression

# Boucle avec Enum
Enum.each(fruits, fn fruit -> IO.puts(fruit) end)

# 🔸 Tuples
t = {1, 2, 3}
IO.inspect(elem(t, 1)) # 2

# 🔸 Maps (dictionnaires)
person = %{name: "Alice", age: 30}
IO.puts(person.name)
IO.inspect(Map.put(person, :city, "Montreal"))

# 🔸 Pattern matching
{name, age} = {"Bob", 40}
IO.puts("#{name} a #{age} ans")

# 🔸 Pipe operator (super utile)
"elixir"
|> String.upcase()
|> IO.puts()

# 🔸 Recursivité simple
defmodule Count do
  def down(0), do: IO.puts("Fin")
  def down(n) do
    IO.puts(n)
    down(n - 1)
  end
end

Count.down(3)

# 🔸 Concurrency (light preview)
spawn(fn -> IO.puts("Je suis un process !") end)

# 🔸 Try / Rescue
try do
  1 / 0
rescue
  ArithmeticError -> IO.puts("Division par zéro !")
end
