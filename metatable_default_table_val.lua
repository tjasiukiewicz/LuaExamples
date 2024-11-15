function setDefault (t, d)
	local mt = {__index = function () return d end}
	setmetatable(t, mt)
end

tab = {x=10, y=20}

print(tab.x, tab.z)

setDefault(tab, 5)

print(tab.x, tab.z)
