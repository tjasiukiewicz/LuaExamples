function memoize(func)
	local cache = {}
	return function(...)
		local key = table.concat({...}, ',')
		if cache[key] then
			--print("cache HIT!")
			return cache[key]
		else
			--print("cache MISS!")
			local result = func(...)
			cache[key] = result
			return result
		end

	end
end

function add(a, b)
	-- expensive add :)
	os.execute("sleep 3")
	return a + b
end


function fibonacci(n)
    if n <= 1 then
        return n
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

fibonacci = memoize(fibonacci)
add = memoize(add)

print(fibonacci(42))
print(fibonacci(42))
print("first run")
print(add(2, 4))
print("second run")
print(add(2, 4))
