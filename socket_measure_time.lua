local socket = require("socket")

function measure_time_high_precision(func)
  local start_time = socket.gettime()
  func()
  local end_time = socket.gettime()
  print("Exec time: " .. (end_time - start_time) .. " sec.")
end

function example_function()
  local sum = 0
  for i = 1, 100000000 do
    sum = sum + i
  end
  return sum
end

measure_time_high_precision(example_function)
