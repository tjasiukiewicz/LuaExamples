


co = coroutine.create(
	function () 
		print("Start coroutine")
		coroutine.yield(1)
		print("Resume coroutine")
		coroutine.yield(2)
		print("End coroutine")
	end
)

print(type(co))
print(coroutine.status(co))
status, val  = coroutine.resume(co)
print(val, coroutine.status(co))
status, val  = coroutine.resume(co)
print(val, coroutine.status(co))
status, val  = coroutine.resume(co)
print(coroutine.status(co))
