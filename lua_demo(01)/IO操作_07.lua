path="/Users/damon/Desktop/Lua_Project/mylua.lua"
file=io.open(path,"r+") --以读写的方法打开文件，文件必须存在

io.output(file)
io.input(file) --将当前文件输入流中

--[[
io.write("--append to text")

print(io.read()) --io.read() 默认只读一行

print("--------这是分界线-----------")

print(io.read("*a")) --从当前文件处读取所有文件

print("--------这是分界线-----------")
--]]

local  count = 0
while true do
	local line=io.read()
	if line ==nil then 
		break
	end
	count=count+1
	print(string.format("%6d",count),line)
end



io.close(file)
