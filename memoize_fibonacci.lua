function memoize(func)
	local cache = {}
	return function(n)
		if cache[n] then
			--print("cache HIT!")
			return cache[n]
		else
			--print("cache MISS!")
			local result = func(n)
			cache[n] = result
			return result
		end

	end
end


function fibonacci(n)
    if n <= 1 then
        return n
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

fibonacci = memoize(fibonacci)

print(fibonacci(42))
