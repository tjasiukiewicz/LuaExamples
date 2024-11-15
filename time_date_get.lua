local current_time = os.time()

print("Current time in sec. after 1970-01-01: " .. current_time)

local formatted_time = os.date("%Y-%m-%d %H:%M:%S")

print("Current time YYYY-MM-DD HH:MM:SS: " .. formatted_time)

