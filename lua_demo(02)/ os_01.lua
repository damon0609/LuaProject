print(os.time{year=2018,month=9,day=1,hour=11,sec=1})

local temp = os.date("*t")
for k,v in pairs(temp) do
	print(k,v)
end

print(os.date("%x"))

print(os.date("%c"))


--计算执行程序cpu花去的时钟秒数
local startTimer = os.clock()
for i=1,1000 do
	print(string.format("elapsed time:%.2f",os.clock()-startTimer))
end
print(os.clock()-startTimer)


--os.exit() 终止程序的执行

--os.getenv()得到环境的变量值

print(os.getenv("HOME"))


function createDir(path)
	os.execute("mkdir "..path) --在指定的路径上创建文件夹空格需要要注意
end

local path = "/Users/damon/Desktop/Lua_Project/test"
createDir(path)



