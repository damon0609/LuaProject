path="/Users/damon/Desktop/Lua_Project/wiretlua.lua"

file=io.open(path,"w") --写入文件该文件存在则清空，不存在则创建

io.output(file)

io.write("--这是写入的文件")

io.close(file)


file1=io.open(path,"r+")
io.output(file1)
io.write("--以附加的形式写入的数据")
io.write("\n--写入数据")

io.input(file1)
print(io.read("*a"))

io.close(file1)