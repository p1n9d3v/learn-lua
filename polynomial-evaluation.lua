require("math")

local function polynomial(x, ...)
	local coefficients = { ... }
	local result = 0

	for i, v in ipairs(coefficients) do
		result = result + v * math.pow(x, i - 1)
	end

	return result
end

print(polynomial(2, 3, 4, 5))
print(polynomial(3, 0, 0, 10))
