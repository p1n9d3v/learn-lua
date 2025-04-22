for i = 1, 10, 2 do
	print(i)
end

for i = 1, 10 do
	if i == 5 then
		print(i)
		break
	end
end

function myIterator(s)
	local index = 0
	local length = #s

	return function()
		index = index + 1
		if index <= length then
			return s[index], index
		end

		return nil
	end
end

function genericFor(s)
	for item, index in myIterator(s) do
		print(item, index)
	end
end

genericFor({ "a", "b", "c" })

local num = 0
while true do
	print(num)

	if num == 10 then
		break
	end
	num = num + 1
end

repeat
	io.write("What's your name? ")
	local name = io.read()
	print("Hello " .. name)
until name == "john"
