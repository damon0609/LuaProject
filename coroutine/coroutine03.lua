
--创建一个协程
local co01= coroutine.create(function()
	
end)


print(type(co01));
print(coroutine.status(co01));
coroutine.resume(co01);
print(coroutine.status(co01));

local index = 0;
local co02 = coroutine.create(function ( ... )
	while(true) do
		index=index+1;
		print(index);
		coroutine.yield();
	end
end)

coroutine.resume(co02);
coroutine.resume(co02);

