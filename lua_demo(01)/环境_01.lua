a=10
b=100
--全局环境变量存储在_G的表中
print(_G)

for k,v in pairs(_G) do
	print("key--"..k,v)
end

print("------------")

--[[
--对存储的全局环境变量进行初始化
_G={}

--print()也是全局变量中的一个key,所以可以用下面的方法访问
_G.print("---"..a)

for k,v in pairs(_G) do
	print(k)
end
--]]

a="111"

local  newSet = {}
setmetatable(newSet,{__index=_G})

--这个表的元表指向存储全局变量的表中
newSet.print("这是全局变量中的key:"..a)


--对存储全局变量的表进行初始化
_G={}
print(_G.a)

--元表设置在初始化全局变量表之前
print(newSet.a)







