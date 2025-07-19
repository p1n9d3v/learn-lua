local number_matcher = function(numbers, target)
	local queue = {}

	for _, num in ipairs(numbers) do
		local complement = target - num

		for _, q_element in ipairs(queue) do
			if complement == q_element then
				return true
			end
		end

		table.insert(queue, num)
	end

	return false
end

print(number_matcher({ 1, 2, 5 }, 9))
print(number_matcher({ 1, 3, 9, 7, 2 }, 11))
print(number_matcher({ 1, 2, 3, 4 }, 8))
