require("math")

function square_root(x)
	local square = x * x
	local square_root = math.sqrt(square)

	return square, square_root
end

local square, square_root = square_root(9)
print(square, square_root)
