local t = {}

for i = 1, 10 do
	-- t[i] = io.read()
	t[i] = i
end

for i, v in ipairs(t) do
	print(i, v)
end

-- `#` is the length operator
print(#t)

local t2 = {}
t2[0] = 0
t2[1] = 1
t2[2] = 2
t2[5] = 5

--  'ipairs' and '#' are sequence-based
--  '0' is not the first index of the sequence, '1' is the first index
--  since the values of indices '4' and '5' are not specified, they are excluded from the sequence
for i, v in ipairs(t2) do
	print(i, v) -- print 1, 2
end
print(#t2)
