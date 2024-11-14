function add_ascii(msg)
	local sum = 0
	for _, v in pairs({string.byte(msg, 1, #msg)}) do
		sum = sum + v
	end
	return sum
end

print(add_ascii("BILLGATES"))
