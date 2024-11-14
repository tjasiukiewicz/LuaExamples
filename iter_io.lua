
io.input("lines.txt")
result = {}
for l in io.lines() do
	table.insert(result, l)
end

table.sort(result)

for num, l in ipairs(result) do
	print(num, l)
end
