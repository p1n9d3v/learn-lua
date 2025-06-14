function smaller_on_the_left(sequence)
	local result = {}

	for i = 1, #sequence do
		local cur = sequence[i]
		local value = -1

		for j = i - 1, 1, -1 do
			local prev = sequence[j]

			if prev ~= -1 and prev < cur then
				value = prev
				break
			end
		end

		table.insert(result, value)
	end

	print(table.concat(result, ","))
end

smaller_on_the_left({ 2, 5, 3, 7, 8, 1, 9 })
smaller_on_the_left({ 5, 7, 4, 9, 8, 10 })
