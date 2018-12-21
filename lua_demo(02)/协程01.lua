co=coroutine.create(
	function(i)
		print(i)
	end
)
coroutine.resume(co,1)
--挂起状态
print(coroutine.status(co))



