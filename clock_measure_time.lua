function measure_time(func)
  local start_time = os.clock()  -- Save start time 
  func()  -- Call function
  local end_time = os.clock()  -- Save end time
  print("Exec time: " .. (end_time - start_time) .. " sec")
end

-- Sample function 
function example_function()
  local sum = 0
  for i = 1, 100000000 do
    sum = sum + i
  end
  return sum
end

-- Measure exec time
measure_time(example_function)
