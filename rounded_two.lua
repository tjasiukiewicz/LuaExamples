function rounded_two(val)
	return (val & (val - 1)) == 0
end

print(15,rounded_two(15))
print(16,rounded_two(16))
print(18,rounded_two(18))
