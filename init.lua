--[==[
msg = [=[
ala
ma
asa
]=]
--[[ _PROMPT = "my lua > "
--]]
--]==]

function dir(tbl) 
	for k, v in pairs(tbl) do
		print(k, v)
	end
end

function exit() 
	os.exit()
end
