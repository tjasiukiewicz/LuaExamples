

prices = {10.0, 20.0, 30.0}

function calc_price(tbl, func)
	local result = {}
	for _, v in ipairs(tbl) do
		table.insert(result, func(v))
	end
	return result
end

function calc_vat(val) 
	return val * 1.23
end

function calc_send(val)
	return val + 0.1
end

for k, v in pairs(calc_price(prices, calc_vat)) do
	print(k, v)
end
