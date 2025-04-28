function reversed_number1(n)
	local nStr = tostring(n)
	return string.reverse(nStr)
end

print(reversed_number1(1234))

function reversed_number2(n)
	local temp = n
	local result = ""

	while temp > 0 do
		local remain = temp % 10
		result = result .. tostring(remain)
		temp = math.floor(temp / 10)
	end

	return result
end

print(reversed_number2(1234))
