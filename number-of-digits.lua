require("math")

function number_of_digits(n)
	local count = 0
	while n > 0 do
		n = math.floor(n / 10)
		count = count + 1
	end

	return count
end

print(number_of_digits(1230)) -- 3
