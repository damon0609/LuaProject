path="/Users/damon/Desktop/Lua_Project/mytext01.txt"

--[[ 写入数据部分
file=io.open(path,"a")

io.output(file)

str1=string.format("%1d,%1d,%1d\n",3,7,9)
io.write(str1)

str2=string.format("%.1f,%2.2f,%2d\n",3.9,76.98,19)
io.write(str2)

str3=string.format("%1d,%.1f,%2d",9,7.7,12)
io.write(str3)

io.write("\n")

io.close(file)
--]]


--读取数据部分
file1=io.open(path)
io.input(file1)

--把读到的数据写入表中
local lines={}
for l in io.lines() do
	table.insert(lines,l)
end
io.close(file1)



