function createQueue()
	return { front = 1, rear = 0 }
end

function isEmpty(queue)
	return queue.front > queue.rear
end

function enqueue(queue, value)
	queue.rear = queue.rear + 1
	queue[queue.rear] = value
end

function dequeue(queue)
	if isEmpty(queue) then
		return nil
	end

	local value = queue[queue.front]
	queue[queue.front] = nil
	queue.front = queue.front + 1

	return value
end

function size(queue)
	return queue.rear - queue.front + 1
end

local queue = createQueue()
enqueue(queue, 1)
enqueue(queue, 2)
enqueue(queue, 3)
enqueue(queue, 4)
enqueue(queue, 5)

print(table.concat(queue, " "))

print(dequeue(queue))
print(dequeue(queue))
print(dequeue(queue))
print(dequeue(queue))
print(dequeue(queue))

print("size " .. size(queue))
