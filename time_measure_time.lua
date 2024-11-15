function measure_real_time(func)
  local start_time = os.time()
  func()
  local end_time = os.time()
  print("Exec time: " .. (end_time - start_time) .. " sec")
end

function example_function()
  local sum = 0
  for i = 1, 100000000 do
    sum = sum + i
  end
  return sum
end

measure_real_time(example_function)

