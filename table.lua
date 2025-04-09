-- table are a fundamental data structure like object in lua

local obj = {}
obj.name = "p1n9"
obj.age = 31
obj.gender = "male"
obj["hobby"] = "lua"

for k, v in pairs(obj) do
	print(k, v)
end

print("-----")

local arr = {
	1,
	2,
	3,
	4,
	5,
}

arr[6] = 6
arr[7] = 7
arr[8.1] = 8.1 -- 8.1 : 8.1
arr[9.0] = 9 -- 9 : 9, 9.0 is converted to number

-- ipairs() := iterate over a table using indices
-- '8.1' and '9.0' are not iterated
for k, v in ipairs(arr) do
	print(k, v)
end

-- pairs() := iterate over a table using key-value pairs
for k, v in pairs(arr) do
	print(k, v)
end

print("-----")

local polygon = {
	{ x = 0, y = 0 },
	{ x = 3, y = 4 },
	{ x = 6, y = 0 },
	{ x = 4, y = -4 },
	{ x = 1, y = 0 },
}

for i, v in ipairs(polygon) do
	print(i, v.x, v.y)
end
