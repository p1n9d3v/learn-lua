function parenthesization(expression)
	local stack = {}
	local parenthesis = { ["("] = ")", ["["] = "]" }

	for i = 1, #expression do
		local char = expression:sub(i, i)

		if char == "(" or char == "[" then
			table.insert(stack, char)
		elseif char == ")" or char == "]" then
			if #stack == 0 then
				return "Incorrect " .. i
			end

			local last = table.remove(stack)

			if char ~= parenthesis[last] then
				return "Incorrect " .. i
			end
		end
	end

	if #stack ~= 0 then
		return "Incorrect " .. #expression
	end

	return "Correct"
end

local result = parenthesization("([a+b]])*(c+d)")
print(result)
