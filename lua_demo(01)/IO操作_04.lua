--io读写操作
local path = "/Users/damon/Desktop/Lua_Project/"
path1=path.."mylua.lua"

file = io.open(path1,"a")

--io.write() 可以直接在当前流中写入文本

--输入流打开后，直接向当前文本中写入内容，不会输出到控制台
io.output(file) 
io.write("--this is test")

--io.input(file)
print(io.read("*a"))

io.close(file)


