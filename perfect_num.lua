function dividers(n)
	local divs = {}
	for i = 1, ((n + 1) // 2) do
		if (n % i) == 0 then
			table.insert(divs, i)
		end
	end
	return divs
end

function table_sum(tbl)
	local sum = 0
	for _, v in pairs(tbl) do
		sum = sum + v
	end
	return sum
end

function is_perfect_num(n)
	return table_sum(dividers(n)) == n
end

function print_perfect_range(minval, maxval) 
	for i = minval, maxval do
		if is_perfect_num(i) then
			print(i)
		end
	end
end

print_perfect_range(2, 10000)
