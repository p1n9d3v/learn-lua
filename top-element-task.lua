local stack = {}

local push = function(value)
	table.insert(stack, value)
end

local isEmpty = function()
	return #stack == 0
end

local pop = function()
	if isEmpty() then
		return nil
	end
	return table.remove(stack)
end

local top = function()
	if isEmpty() then
		return nil
	end
	return stack[#stack]
end

for i = 1, 10 do
	push(i)
end

print("----")
print(table.concat(stack, " "))

for i = 1, #stack do
	print(top())
	pop()
end
