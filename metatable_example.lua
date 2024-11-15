-- Tworzymy nową tabelę dla wektora
Vektor = {}

-- Funkcja konstruktor dla obiektów typu Vektor
function Vektor.new(x, y)
    local vektor = {x = x, y = y}
    setmetatable(vektor, Vektor)  -- Ustawiamy metatable dla obiektu
    return vektor
end

-- Metoda __add pozwala na dodawanie dwóch wektorów
function Vektor.__add(v1, v2)
    return Vektor.new(v1.x + v2.x, v1.y + v2.y)
end

-- Metoda __tostring umożliwia ładne wyświetlanie obiektów typu Vektor
function Vektor.__tostring(v)
    return "Vektor(" .. v.x .. ", " .. v.y .. ")"
end

-- Przykładowe użycie

-- Tworzymy dwa wektory
local v1 = Vektor.new(1, 2)
local v2 = Vektor.new(3, 4)

-- Dodajemy je za pomocą operatora +
local v3 = v1 + v2

-- Wyświetlamy wynik
print(v3)  -- Wydrukuje: Vektor(4, 6)
