local stack = {}

function push(value)
	table.insert(stack, value)
end

function pop()
	if isEmpty() then
		return nil
	end

	return table.remove(stack)
end

function isEmpty()
	return #stack == 0
end

push(1)
push(2)

print(table.concat(stack, " "))

print(pop())
print(pop())
print(pop())
