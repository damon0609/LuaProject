
--创建一个协同程序默认挂起状态

local value = 1.9


local co = coroutine.create(function()
	print("create coroutine")
	value=value+1
end)

--查看coroutine的状态
print(coroutine.status(co))


local temp = coroutine.resume(co)

--返回唤醒的状态
print(temp)

print(value)

local co1 = coroutine.create(function(a,b)
	coroutine.yield(a,b)
end)

--local co1return = coroutine.resume(co1,1,11)
print(coroutine.resume(co1,1,11)) --这调用带参数的线程


local co2 = coroutine.create(function(a,b,c)
	print(a,b,c)
end)
coroutine.resume(co2,11,22,33)

print("----------------------------------")

path="/Users/damon/Desktop/Lua_Project/lua_03.lua"
io.input(path)


--生产者生产内容，然后被挂起，如果接受则需要时则调用
local producer = coroutine.create(function()
	while true do
		local value = io.read("*l")
		send(value)
	end
end)

function send(x)
	--将获取的数据作为挂起的参数传给主程序
	coroutine.yield(x)
end

function receive()
	--通过resume来获取主程序的传回来的数据
	local status,value = coroutine.resume(producer)
	return value
end

while true do
	local value = receive()
	if value then
		print(value)
	else
		break
	end
end

