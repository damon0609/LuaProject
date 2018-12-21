--创建协程

local co = coroutine.create(function(i)
	print(i)
end)


--查看协程状态
print(coroutine.status(co))

--唤醒协程状态
coroutine.resume(co,10)

print(coroutine.status(co))
print(coroutine.running())


--这里返回的是一个函数
co1=coroutine.wrap(function()
	for i=1,5 do
		print(i)
	end
end)
co1()

print(type(co1))
print(type(co))


print("-------------------------------")
co2=coroutine.create(function()
	for i=1,10 do
		print(i)
		print(coroutine.running())
		coroutine.yield()
	end
end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))
print(coroutine.running())





