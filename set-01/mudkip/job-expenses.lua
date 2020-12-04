local _ = io.read()
local expenses = 0
for num in io.read():gmatch("%S+") do
	num = tonumber(num)
	if(num < 0) then expenses = expenses - num end
end
print(expenses) 
