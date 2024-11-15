local M = {}
package.loaded[...] = M

function M.foo()
	print("I'm foo()")
end

function M.bar()
	print("I'm bar()")
end

