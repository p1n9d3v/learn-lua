local matrix1 = {
	{ 1, 2, 3 },
	{ 4, 5, 6 },
}

local matrix2 = {
	{ 7, 8, 9 },
	{ 10, 11, 12 },
}

function addMatrices(matrix1, matrix2)
	local result = {}
	for i = 1, #matrix1 do
		result[i] = {}
		for j = 1, #matrix1[i] do
			result[i][j] = matrix1[i][j] + matrix2[i][j]
		end
	end
	return result
end

local result = addMatrices(matrix1, matrix2)

for i = 1, #result do
	print(table.concat(result[i], ","))
end
