local child = require("mymod2")

function foo()
	print("I'm foo()")
end

function bar()
	print("I'm bar()")
end

return {
	foo = foo,
	bar = bar,
	child = child,
}

