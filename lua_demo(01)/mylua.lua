--append to textlocal path = "/Users/damon/Desktop/Lua_Project/"
path1=path.."test.lua"

--直接读取
--[[
file=io.open(path1,"r")
io.input(file)
print(io.read("*a"))
io.close(file)
]]


file=io.open(path1,"a")
io.input(file)
print(io.read("*a"))
io.close(file)--++++++++++--++++++++++