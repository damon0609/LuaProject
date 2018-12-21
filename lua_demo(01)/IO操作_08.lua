path="/Users/damon/Desktop/Lua_Project/IO操作_01.lua"
file=io.open(path,"r") --  读取文件，该文件必须存在

io.input(file) --写入文件流

local  lines = {}
for line in io.lines() do
	table.insert(lines,line) --将读取的文件写入表中
end

table.sort(lines)

for i,l in ipairs(lines) do
	print(i,l)
end

print("读取数字--",io.read("*number")) --读取数字

io.close(file)
