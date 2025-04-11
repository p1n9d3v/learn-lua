function calculateSum(sequence)
	local sum = 0
	for i = 1, #sequence do
		sum = sum + sequence[i]
	end
	return sum
end

local s = { 1, 2, 3, 4, 5 }
print(calculateSum(s))

function f(x, y)
	print(x, y)
end

f(1, 2)
f() --NOTE: if no arguments are passed, the function will receive nil automatically

-- NOTE: return multiple values

function maximum(sequence)
	local max_index = 1
	local max = sequence[max_index]
	for i = 2, #sequence do
		if sequence[i] > max then
			max = sequence[i]
			max_index = i
		end
	end

	return max, max_index
end

local s = { 1, 2, 3, 4, 5 }
local max, max_index = maximum(s)

print(max, max_index)

-- NOTE: variadic functions, variadic is the ability to accept an arbitrary number of arguments

function add(...)
	local s = 0
	for _, v in ipairs({ ... }) do
		s = s + v
	end

	return s
end

print(add(1, 2, 3, 4, 5))
