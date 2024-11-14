msg = "abc daf"
-- całość danych binarnych
print(string.byte(msg, 1, -1))

print(string.sub(msg, 2, -2))

msg = "żółtko"

print(#msg)
print(utf8.len(msg))

print(utf8.codepoint(msg, 1, 2)) -- to samo co string.byte(...)

msg = "to jest tekst"
print(string.find(msg, "jest"))

print(type(tostring(123)))
print(type(tonumber("123")))
