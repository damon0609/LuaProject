
--数据结构
--用表来实现一维数组
array01={}
local index = 1
for i=1,5 do
	for j=1,5 do
		array01[index]=i*j
		index=index+1
	end
end

for i=1,#array01 do
	print(array01[i])
end

print("------------------------------")


--用表来实现二维数组
--5*2的矩阵
array02={}
for i=1,5 do
	array02[i]={}
	for j=1,2 do
		array02[i][j]=i..":"..j
	end
end

for k,v in ipairs(array02) do
	for _,l in ipairs(v) do
		print(l)
	end
end

print("-----------------第二个---------------------")

--使用一个数组记录矩阵
array03={}
for i=1,3 do
	for j=1,2 do
		array03[i*2+j]=i..":"..j
	end
end

print(#array03)
for i=1,#array03 do
	print(array03[i])
end

--链表


print("---------------第三行--------------")
--对列和双端队列

List={}
function List.new()
	return {first=0,last=-1}
end

--在两端添加数据
function List.pushLeft(list,value)
	--获取当前第一个索引号计算出新的索引号赋值给list然后对值进行更新
	local first = list.first-1
	list.first=first
	list[first]=value
end

function List.pushRight(list,value)
	local last = list.last+1
	list.last=last
	list[last]=value
end


--移除队列的首一个元素且返回该元素
function popLeft(list)
	local first = list.first
	if first>list.last then error("list is empty") end
	local value = list[first]
	list[first]=nil
	list.first=first+1
	return value
end

function popRight(list)
	--获取队列中最后一个元素的索引
	local last = list.last

	--判断该表是否合理
	if list.first>last then error("list is empty") end

	--获取最后一个索引的值返回该值

	local last = list[last]
	list[last]=nil
	list.last=last-1
	return value
end


local list01 = List.new()
List.pushLeft(list01,10)
List.pushLeft(list01,100)

for k,v in pairs(list01) do
	print(k..":"..v)
end


print("----------第四行-----------")
--集合和包


--将list中的值值作为表的键
function Set(list)
	local set = {}
	for _,l in pairs(list) do --这里的思路需要学习
		set[l]=true
	end
	return set
end


local reserved = Set{"function","while","local","end"}
for k,v in pairs(reserved) do
	print(k,v)
end





