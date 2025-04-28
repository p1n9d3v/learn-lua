require("math")
-- odd position and even number
-- 679031 -> 1 + 0 + 7
function isEven(n)
	return n % 2 == 0
end

function isOdd(n)
	return n % 2 == 1
end

function cool_number(n)
	local sum = 0
	local temp = n
	local count = 1

	while temp > 0 do
		local remain = temp % 10

		if isOdd(count) then
			sum = sum + remain
		end

		count = count + 1
		temp = math.floor(temp / 10)
	end

	if isEven(sum) then
		return "COOL"
	end

	return "NOT COOL"
end

print(cool_number(679031))
print(cool_number(607))
print(cool_number(65547))
