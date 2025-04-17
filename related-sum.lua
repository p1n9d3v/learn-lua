function related_sum(n)
	local nStr = tostring(n)
	local len = #nStr
	local halfLen = len / 2

	local sumFirstHalf = 0
	local sumSecondHalf = 0

	for i = 1, halfLen do
		sumFirstHalf = sumFirstHalf + tonumber(nStr:sub(i, i))
	end
	for i = halfLen + 1, len do
		sumSecondHalf = sumSecondHalf + tonumber(nStr:sub(i, i))
	end

	if sumFirstHalf == sumSecondHalf then
		print(sumFirstHalf .. "=" .. sumSecondHalf)
	elseif sumFirstHalf > sumSecondHalf then
		print(sumFirstHalf .. ">" .. sumSecondHalf)
	else
		print(sumFirstHalf .. "<" .. sumSecondHalf)
	end
end

related_sum(1000)
related_sum(78)
related_sum(70724444)
