local tekst = "Czas: 14:30, 09:45:12, 08:00 PM, 23:59:59, 11:59 AM"

-- Wyrażenie regularne dopasowujące zapis czasu w formacie HH:MM, HH:MM:SS, HH:MM AM/PM
local wzorzec = "(%d%d):(%d%d)(:%d%d)?%s?(AM|PM)?"

-- Funkcja gmatch zwraca iterator, który przechodzi po wszystkich dopasowaniach
for godzina, minuta, sekunda, am_pm in string.gmatch(tekst, wzorzec) do
    -- Wyświetlamy dopasowane części
    print("Godzina: " .. godzina .. ", Minuta: " .. minuta .. 
          (sekunda and ", Sekunda: " .. sekunda or "") ..
          (am_pm and ", AM/PM: " .. am_pm or ""))
end
