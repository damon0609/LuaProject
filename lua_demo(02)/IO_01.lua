local path = "/Users/damon/Desktop/Lua_Project/text01.txt"

--将当前路径下的文件为输入流
local file = io.open(path,"a+")
io.output(file)
io.write("111 \n")
io.close(file)

local file02 = io.open(path,"r+")
io.input(file02)
io.close(file02)

local path1 = "/Users/damon/Desktop/Lua_Project/text02.txt"
--如果文件存在将文件长度清为0，文件不存在则创建文件
local file03 = io.open(path1,"w")
io.output(file03)
for i=1,10 do
	io.write("这是第"..i.."行")
end
io.close(file03)


--a 附加到指定文件中
local file04 = io.open(path1,"a")
io.output(file04)
for i=1,10 do
	io.write("这是第"..i.."行 \n")
end
io.close(file04)

local file05 = io.open(path1,"r+")
io.input(file05)
print(io.read("*a"))
io.output(file05)
io.write("写入内容")
io.close(file05)

--可读写+
local file06 = io.open(path1,"w+")
io.output(file06)
--文件存在将之前的内容清空
io.write("清空之前的内容")
io.input(file06)
print(io.read("*a"))
io.close(file06)



