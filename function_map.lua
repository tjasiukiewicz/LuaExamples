function foo(a, ...)
	print(a)
	local tbl = table.pack(...)
	for k, v in pairs(tbl) do
		print(k, v)
	end
end

function bar()
	return 10, 20, 30
end

-- foo(1, 2, 3, 4)
-- a, _, c = bar()
-- print(a, c)

a = 12
do
	local a = 13
	do
		local a  = 30
		print(a)
	end
end

-- print(a)

function range(minindex, maxindex)
	local index = minindex
	local gen = function()
		local idx = index
		index = index + 1
		if (idx <= maxindex) then
			return idx
		end
		return nil 
	end
	return gen
end
--[[
gen = range(1, 3)
print(gen())
print(gen())
print(gen())
print(gen())
--]]

function fake_add(a , b) 
	if ((a == 2) and (b == 2)) then
		return 5
	end
	return a + b
end

function log(fun)
	local wrapped = function (...)
		local result = fun(...)
		print("log:", result, ...)
		return result
	end
	return wrapped
end

my_add = log(fake_add)
print(my_add(2, 2))


