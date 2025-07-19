require("math")

local binaryNumber = function(n)
	--if the number is zero then break the loop
	local queue = { "1" }

	for i = 1, n do
		local front = table.remove(queue, 1)
		table.insert(queue, front .. "0")
		table.insert(queue, front .. "1")

		print(front)
	end
end

print(binaryNumber(5))
print(binaryNumber(10))
