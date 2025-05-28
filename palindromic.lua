local palindromic = function(str)
	local left = 1
	local right = #str

	while left < right do
		if str:sub(left, left) ~= str:sub(right, right) then
			return "NO"
		end

		left = left + 1
		right = right - 1
	end

	return "YES"
end

print(palindromic("aba"))
print(palindromic("abba"))
print(palindromic("abca"))
print(palindromic("432234"))
