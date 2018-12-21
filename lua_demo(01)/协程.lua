ølocal co = coroutine.create(function()
	print("创建协程")
end)

--线程在lua中是一种类型
print(co,type(co))


--查看线程的状态
--suspended  running dead normal
print(coroutine.status(co))


--唤起线程 ，resume有返回值，
--状态为dead时返回false,状态为suspended时返回true

local bret = coroutine.resume(co)
print(bret)

--线程执行完成后就进入dead状态
print(coroutine.status(co))


--创建线程
co=coroutine.create(function()
	for i=1,15 do
		print("co",i)
		coroutine.yield()--挂起状态
		print("co after yield",i)
	end
end)

print(coroutine.status(co))

for i=1,5 do
	coroutine.resume(co)
end


