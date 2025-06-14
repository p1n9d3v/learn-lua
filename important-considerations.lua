function palindrome(sequence)
	local stack = {}
	for i = 1, #sequence do
		local c = sequence:sub(i, i)
		local t = stack[#stack]
		if t == c then
			table.remove(stack, #stack)
		else
			table.insert(stack, c)
		end
	end

	if #stack == 0 then
		return true
	end

	return false
end

local result = palindrome("abba")

if result then
	print("YES")
else
	print("NO")
end
