
function is_palidnrome_number(val)
	return string.reverse(tostring(val)) == tostring(val)
end

function palindromic_add(val)
	return tonumber(string.reverse(tostring(val))) + val
end

function calculate_palindromic_add(minval, maxval)

	for i = minval, maxval do
		local val = i
		local count = 0
		while (not is_palidnrome_number(val)) and (count < 20) do
			count = count + 1
			val = palindromic_add(val)
		end
		print(string.format("%4d: %5d, %d", i, count, val))
	end
end

calculate_palindromic_add(190, 200)
