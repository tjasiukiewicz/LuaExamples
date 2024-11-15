-- Async coroutine delay     
function delay(seconds)    
  return coroutine.create(function()    
    local start_time = os.time()    
    while os.time() - start_time < seconds do    
      coroutine.yield()     
    end    
    io.write("Timeout!\n")    
  end)    
end    
    
-- Coroutine delay 3 sec    
local co = delay(3)    
    
-- Clock simulation    
while true do     
  coroutine.resume(co)    
  if coroutine.status(co) == "dead" then break end    
  -- Run other tasks    
  print("Work in main...")    
  os.execute("sleep 1")  -- Other task delay    
end
