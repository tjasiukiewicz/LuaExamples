-- Coroutine 1
function task1()
  for i = 1, 5 do
    print("Task 1: " .. i)
    coroutine.yield()
  end
end

-- Coroutine 2
function task2()
  for i = 1, 5 do
    print("Task 2: " .. i)
    coroutine.yield()
  end
end

-- Coroutine create
co1 = coroutine.create(task1)
co2 = coroutine.create(task2)

-- Sched coroutine
while coroutine.status(co1) ~= "dead" or coroutine.status(co2) ~= "dead" do
  coroutine.resume(co1)
  coroutine.resume(co2)
end

