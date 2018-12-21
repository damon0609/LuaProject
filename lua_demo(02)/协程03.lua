function foo(a)
	return coroutine.yield(a+1)
end

co=coroutine.create(function(a,b)
	print("第一次调用协同程序")
	local r = foo(a)
	print("r>>"..r)

	print("第二次调用协同程序")
	local r,s = coroutine.yield(a+b,a-b)
	print("r>>"..r..";s>>"..s)
end)

coroutine.resume(co,1,2)
coroutine.resume(co,1,2)
coroutine.resume(co,1,2)




