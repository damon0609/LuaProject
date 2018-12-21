--io操作读取文件
local path = "/Users/damon/Desktop/Lua_Project/"
path1=path.."test.lua"
file=io.open(path1,"r")
io.input(file)
print("------------这是读取一行")
print(io.read())

print("-------------这是读取所有")
print(io.read("*a"))


print("-------------读取数字")
print(io.read("*n"))


print("-------返回指定字符个数的字符串----------")
print(io.read(7))


io.close(file)