-- lua中的线程相关内容被放置在coroutine表中
-- create 表示创建一个线程，把将要执行的函数作为参数,该线程被创建后被挂起并不执行
-- 返回类型为thread
-- 四种状态suspended running deal normal


-- status 查看线程状态，参数为创建的线程

local f = coroutine.create(function()
	print("create coroutine")
end)

print(type(f))


print(coroutine.status(f))

coroutine.resume(f)
print(coroutine.status(f))

local f1 = coroutine.create(function()
	for i=1,10 do
		print(i);
		coroutine.yield();
	end
end)

coroutine.resume(f1);
coroutine.resume(f1);


local f2 = coroutine.create(function(a,b,c)
	print(a,b,c);
end)


--通过resume传递参数给将要执行的函数
local result = coroutine.resume(f2,1,2,4)


local f3 = coroutine.create(function(a,b)
	coroutine.yield(a+b);
end)

print(coroutine.resume(f3,1,4));
print("------------------------")
local f4 = coroutine.create(function()
	print("f4",coroutine.yield())
end)
coroutine.resume(f4);
print("****")
coroutine.resume(f4,4,5);

	
