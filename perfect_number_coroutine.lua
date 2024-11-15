-- Funkcja korutyny, która znajduje dzielniki liczby
function find_divisors(n)
  local i = 1
  return coroutine.create(function()
    while i <= n // 2 do  -- Dzielniki nie mogą być większe niż połowa liczby
      if n % i == 0 then
        coroutine.yield(i)  -- Wstrzymaj korutynę i zwróć dzielnik
      end
      i = i + 1
    end
  end)
end

-- Funkcja, która sprawdza, czy liczba jest doskonała
function is_perfect_number(n)
  local co = find_divisors(n)  -- Tworzymy korutynę dla danej liczby
  local sum_divisors = 0

  -- Wznowienie korutyny i sumowanie dzielników
  while true do
    local status, divisor = coroutine.resume(co)
    if not status then  -- Jeśli korutyna zakończyła działanie
      break
    end
    sum_divisors = sum_divisors + divisor  -- Dodajemy dzielnik do sumy
  end

  return sum_divisors == n  -- Sprawdzamy, czy suma dzielników równa się liczbie
end

-- Przykład użycia:
local number = 28
if is_perfect_number(number) then
  print(number .. " jest liczbą doskonałą.")
else
  print(number .. " nie jest liczbą doskonałą.")
end
