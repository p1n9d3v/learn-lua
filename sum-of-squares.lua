function sum_of_squares(n)
	local sum = 0
	for i = 1, n do
		sum = sum + (i ^ 2)
	end

	return sum
end

print(sum_of_squares(3))
print(sum_of_squares(4))
