--完全模式

local path = "/Users/damon/Desktop/Lua_Project/text02.txt"
local file = io.open(path,"r")
print(file:read("*a"))
file:close()

local file01 = io.open(path,"a")
file01:write("完全模式写入信息\n")
file01:write("完全模式写入信息\n")
file01:close()

print("----------------------")
local file02 = io.open(path,"r")
file02:seek("set")
print(io.read("*a"))
file02:close()

