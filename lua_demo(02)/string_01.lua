a={"a","D","f","e"}


--排序算法的函数
table.sort(a,function (a,b)
	return string.lower(a)<string.lower(b)
end )

for k,v in ipairs(a) do
	print(k,v)
end

--对字母进行大写转换
print(string.upper("a"))


--截取字符串从指定到指定位置结束
--字符串的索引从1开始，可以指定负数，负数从结尾开始
str="hello lua"
substr = string.sub(str,2,4)
print(substr)


--从结尾处到索引号为2的地方
substr01=string.sub(str,2,-1)
print(substr01)

--将数字转换成字符串
str01 = string.char(92,93,94)
print(str01)


--将字母转换成字符串
str02=string.byte("a")
print(str02)


str03=string.byte("hello",2)
print(str03)

--将指定字符串格式化
print(string.format("%.4f",1.3))
print(string.format("%04d",9))
print(string.format("%s","damon"))

--将10进制转换成8进制
print(string.format("%o",10))

--将10进制转换成16进制
print(string.format("%x",6897))

print(string.format("%04d/%.4f",8,1.2))

--函数模式匹配
s="hello lua"
i,j=string.find(s,"lua")
print(i,j)

s1=string.sub(s,i,j)
print(s1)

s1=[[
ak
cd
ba
]]

local t = {}
local i,j= 0
while true do
	i,j = string.find(s1,"\n",i+1)
	if i==nil then
		break
	end
	table.insert(t,i)
end
for k,v in ipairs(t) do
	print(k,v)
end




