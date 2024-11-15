function error_handling_task()    
  print("Start task")    
  coroutine.yield()  -- Wstrzymanie korutyny    
  error("My Error!")    
  print("??? WTF???")    
end    
    
co = coroutine.create(error_handling_task)    
    
-- Error service    
coroutine.resume(co)    
local status, err = coroutine.resume(co)    
if not status then    
  print("Error: " .. err)    
end 
