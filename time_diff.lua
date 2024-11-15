-- Czas początkowy
local start_time = os.time()

-- Symulujemy jakąś operację (np. czekanie przez 3 sekundy)
os.execute("sleep 3")

-- Czas końcowy
local end_time = os.time()

-- Oblicz różnicę czasu
local elapsed_time = os.difftime(end_time, start_time)

-- Wyświetl różnicę czasu
print("Czas wykonania operacji: " .. elapsed_time .. " sekund")
