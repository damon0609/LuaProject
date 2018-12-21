--IO完全模式

local path = "/Users/damon/Desktop/Lua_Project/"
path1=path.."mylua.lua"

--[[
file=io.open(path1,"r")
print(file:read("*a"))

file:close()
--]]


--以附件的形式打开只写
file1=io.open(path1,"r+")
io.input(file1)
io.output(file1)
io.write("--++++++++++")
print(io.read("*a"))
io.close(file1)