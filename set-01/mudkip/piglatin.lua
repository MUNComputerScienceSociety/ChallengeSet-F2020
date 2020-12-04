local v = {["a"] = true, ["o"] = true, ["e"] = true, ["i"] = true, ["u"] = true, ["y"] = true}
local index
local output
for line in io.lines() do
	output = ""
	for word in line:gmatch("%S+") do
		index = 1
		letter = string.sub(word, index, index)
		while not v[letter] do
			index = index + 1
			letter = string.sub(word, index, index)
		end
		pre = string.sub(word, 1, index-1)
		post = string.sub(word, index)
		output = output .. post .. pre .. (index == 1 and "yay" or "ay") .. " "
	end
	print(output)
end 
