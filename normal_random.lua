-- Funkcja do generowania losowych liczb zgodnych z rozkładem normalnym
function normal_random(mean, stddev)
    -- Używamy metody Boxa-Mullera do generowania liczb normalnych
    local u1 = math.random()
    local u2 = math.random()
    local z0 = math.sqrt(-2 * math.log(u1)) * math.cos(2 * math.pi * u2)
    
    -- Zwracamy wynik z odpowiednim przesunięciem (średnia) i skalowaniem (odchylenie standardowe)
    return mean + z0 * stddev
end

-- Funkcja do generowania liczby w zakresie od 1 do 10
function generate_normal_number_in_range(mean, stddev, min, max)
    -- Wygeneruj liczbę z rozkładu normalnego
    local number = normal_random(mean, stddev)
    
    -- Ogranicz liczbę do podanego zakresu
    while number < min or number > max do
        number = normal_random(mean, stddev)
    end
    
    -- Zwróć liczbę w zakresie
    return number
end

-- Ustawienia
local mean = 5  -- średnia rozkładu (środek przedziału)
local stddev = 1.5  -- odchylenie standardowe
local min = 1  -- dolna granica zakresu
local max = 10  -- górna granica zakresu

-- Generowanie jednej liczby w zakresie od 1 do 10
local random_number = generate_normal_number_in_range(mean, stddev, min, max)

-- Wyświetl wylosowaną liczbę
print(string.format("Wylosowana liczba: %.2f", random_number))
