
function pyramid(n)
	for i = 1, n, 2 do
		print(string.format("%s%s", string.rep(' ', n - (i // 2)), string.rep('*', i)))
	end
end

pyramid(5)
