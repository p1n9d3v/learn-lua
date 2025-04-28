function multiplication_table(n)
	local table = {}
	for i = 1, 10 do
		table[i] = i * n
	end

	for i = 1, 10 do
		print(n .. "*" .. i .. " = " .. table[i])
	end
end

multiplication_table(5)
