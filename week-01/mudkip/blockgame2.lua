local n, m = io.read():match("(%d+) (%d+)")
local win = true
local t
n, m = tonumber(n), tonumber(m)

while n ~= 0 and m ~= 0 and n % m ~= 0 and n < (m * 2) do
	if (n - m) > m then
		n = n - m
	else
		t = m
		m = n - m
		n = t
	end
	win = not win
end
print(win and "win" or "lose")
