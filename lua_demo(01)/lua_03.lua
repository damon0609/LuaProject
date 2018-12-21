--1 实现迭代器的两个步骤返回列表中的值
--2 返回列表中的每个值

--构造一个只可以访问表中值的迭代器列表
function iterator_list( t )
	local i = 0
	--使用闭包函数对函数进行返回值的控制
	return function ()
		i=i+1
		if i<=#t then 
			return t[i] 
		end
	end
end

t={1,4,10}
iter = iterator_list(t)

--这里对每个值进行迭代
while true do
	local  element = iter()
	if element == nil then
		break
	end
	print(element)
end

print("---------for循环进行迭代--------")
for element in iterator_list(t) do
	print(element)
end
