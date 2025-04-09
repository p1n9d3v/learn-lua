-- io.read() := read a line from stdin
-- io.write() := write a line to stdout

io.write("What's your name? ")
local name = io.read()
print("Hello " .. name)
