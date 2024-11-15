-- Current time
local current_time = os.time()

-- Add 7 days (7 * 24 * 60 * 60 sekund)
local future_time = current_time + (7 * 24 * 60 * 60)

-- Format
local future_date = os.date("%Y-%m-%d", future_time)

-- Print...
print("Date after 7 days: " .. future_date)
