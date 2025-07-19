local hot_potato = function(children, passes)
	local queue = {}
	for i = 1, #children do
		table.insert(queue, children[i])
	end

	while #queue > 1 do
		for i = 1, passes - 1 do
			local child = table.remove(queue, 1)
			table.insert(queue, child)
		end

		local removed = table.remove(queue, 1)
		print("Eliminated: " .. removed)
	end

	return queue[1]
end

local winner = hot_potato({ "Alice", "Bob", "Charlie", "David", "Eve" }, 3)
-- winner is "?"
print(winner)
