path="/Users/damon/Desktop/Lua_Project/lua_03.lua"
io.input(path)

--生产数据返回创建的线程
function producer()
	return coroutine.create(function()
		while true do
			local value = io.read("*l")
			send(value)
			--这个后面的代码有被挂起
		end
	end)
end

--将数据挂起
function send(x)
	coroutine.yield(x)
end

--开始接受数据
function receiver(prod)
	local status,value=coroutine.resume(prod)
	return value
end

--过滤管道
function filter(prod)
	return coroutine.create(function()
		local line = 1
		while true do
			--这里启用协同获得数据对数据
			local value = receiver(prod)

			--对数据进行重新处理
			value=string.format("%2d %s",line,value)

			--将处理的后的数据传给再次挂起的协同中
			send(value)

			line=line+1
		end
	end)
end

--消费者
function customer(prod)
	while true do
		local value = receiver(prod)
		local v1,v2 = string.find(value,"nil") --这里停止的判断条件有问题
		if not v1 and not v2 then
			print(value)
		else
			break
		end
	end
end
--生产者生产内容

p=producer()
f=filter(p)
customer(f)



