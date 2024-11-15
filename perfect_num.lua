#!/usr/bin/env lua5.4

function dividers(n)
	local divs = {}
	for i = 1, ((n + 1) // 2) do
		if (n % i) == 0 then
			table.insert(divs, i)
		end
	end
	return divs
end

-- generyczna funkcja redukcji.
-- w przypadku braku podanej funkcji, liczy sumę
-- indent to argument "obojętny". domyślnie 0
-- podawać dla np.:
--     dla sumy: 0
--     dla mnożenia: 1
--     dla max: wartość_minimalna
--     dla min: wartość maksymalna
--     ...
function reduce_table(tbl, func, indent)
	local indent = indent or 0
	local result = indent
	local func = func or function(a, b) return a + b end
	for _, v in pairs(tbl) do
		result = func(result, v)
	end
	return result
end

function is_perfect_num(n)
	return reduce_table(dividers(n)) == n
end

function perfect_in_range(minval, maxval) 
	local i = minval > 2 and minval or 2
	return coroutine.wrap(function()
		while true do
			if is_perfect_num(i) then
				coroutine.yield(i)
			end
			if i <= maxval then 
				i = i + 1
			else
				break
			end
		end
	end
	)
end

for v in perfect_in_range(2, 10000) do
	print(v)
end
