function track (t)
	local proxy = {}
	local mt = {
		__index = function (_, k)
			print("*access to element " .. tostring(k))
			return t[k]
		end,
		__newindex = function (_, k, v)
			print("*update of element " .. tostring(k) .. " to " .. tostring(v))
			t[k] = v
		end,
		__pairs = function ()
			return function (_, k)
				local nextkey, nextvalue = next(t, k)
				if nextkey ~= nil then
					print("*traversing element " .. tostring(nextkey))
				end
				return nextkey, nextvalue
			end
		end,
		__len = function () return #t end
	}
	setmetatable(proxy, mt)
	return proxy
end

t = {}
t = track(t)
t[2] = "buba"
print(t[2])
