
function process_table(tbl)
	return table.unpack(tbl)
end

function pack_to_table(...)
	return table.pack(...)
end

a, b = process_table({1, 2, 3, 4})
print(a, b)

tbl = pack_to_table(1, 2, 3, 4)
print(tbl)

for k, v in pairs(table.pack(1, 2, 3, 4)) do
	print(k, v)
end

function foo(tbl) 
	return table.pack(table.unpack(tbl))
end

for k, v in pairs(foo({ala = 12, 4, 1, 2, 3})) do
	print(k, v)
end

function one_arg(a)
	print(a)
end

one_arg "1"
