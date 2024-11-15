local person = {
    name = "Zenon",
    surname = "Kuc"
}

-- Make metatable
local metatable = {
    __index = function(tbl, key)
        return "No key: " .. key
    end
}

-- Set metatable
setmetatable(person, metatable)

-- Check key access
print(person.name)
print(person.age)  -- No key... 
