function readOnly (t)
	local proxy = {}
	local mt = {
		__index = t,
		__newindex = function (t, k, v)
			error("attempt to update a read-only table", 2)
		end
	}
	setmetatable(proxy, mt)
	return proxy
end

t = readOnly({1, 2, 3, 4})
print(t[1])
t[5] = "ala"
