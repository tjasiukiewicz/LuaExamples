function rangeIterator(n)
    return coroutine.wrap(function()
        for i = 1, n do
            coroutine.yield(i)
        end
    end)
end

for i in rangeIterator(5) do
    print(i)
end

