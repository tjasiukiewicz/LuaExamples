
function createTable(tbl)
	local proxy = {}
	local metaTable = {
		__newindex = tbl,
		__index = function (_, k)
			if tbl[k] then
				return tbl[k]
			elseif k == "average" then
				local sum = 0;
				for _, v in pairs(tbl) do
					sum = sum + v
				end
				return sum / #tbl
			elseif k == "sum" then
				local sum = 0;
				for _, v in pairs(tbl) do
					sum = sum + v
				end
				return sum
			else
				return nil
			end
		end
	}
	setmetatable(proxy, metaTable)
	return proxy
end

t = createTable({1, 2, 30, 4})
t[4] = 4
t[5] = 5
print(t[1])
print(t[5])
print(t.sum)
print(t.average)

print("in table show... empty :) it's proxy :)")
for k, v in pairs(t) do
	print(k, v)
end
