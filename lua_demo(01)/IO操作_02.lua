--io 简单模式 附加的方式添加到文本中
local path = "/Users/damon/Desktop/Lua_Project/"

path1=path.."test2.txt"
file=io.open(path1,"a")
--设置当前的输入流
io.input(file)
io.output(file)
io.write("后添加内容\n")
io.close(file)

path2=path.."test3.txt"
file2=io.open(path2,"a")
io.input(file2)
io.output(file2)
io.write("this file2 \n")
print(io.read("*a"))
io.close(file2)



