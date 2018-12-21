
--只能对已有的键进行取值
local mytable = setmetatable({key="key1"},{__index={key2="key2Value"}})
print(mytable.key2)

print(mytable.key3)

local mytable01 = {}
local mytable02 = setmetatable({key="value"},{__newindex=mytable01})
print(mytable02.key)

--缺少索引时则寻找元表对元表进行赋值
mytable02.newKey="newKey"

print(mytable02.newKey,mytable01.newKey)
print(mytable02.key,mytable01.key)

--—__add元方法

--计算表的最大索引
local function max_length(t)
	local key = 0
	for k,v in pairs(t) do
		if key<k then
			key=k
		end
	end
	return key
end

print(#{1,4})
print(max_length({1,9,18,5}))

--这里返回的是被设置元表的表
rawtable = setmetatable({1,2,3},{
	__add=function (rawtable,newtable)
	--插入一次计算一次表的长度
	for i=1,max_length(rawtable) do
		table.insert(rawtable,max_length(rawtable)+1,newtable[i])
	end
	return rawtable
end})

twotable={4,5,6}
rawtable=rawtable+twotable
for k,v in pairs(rawtable) do
	print(k,v)
end

--call计算表中的元素的和
sumtable=setmetatable({10,9,8},{
	__call = function(sumtable,newtable)
		local sum = 0
		for i=1,max_length(sumtable) do
			sum=sum+sumtable[i]
		end
		for i=1,max_length(newtable) do
			sum=sum+newtable[i]
		end
		return sum
	end
})
newtable={10}
print(sumtable(newtable))

mytable=setmetatable({1,2,3},{
	__tostring=function(mytable)
	local sum = 0
	for i=1,#mytable do
		sum=sum+mytable[i]
	end
	return "和为"..sum
end})
print(mytable)
