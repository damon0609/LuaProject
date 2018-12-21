list={}

--返回一个表，第一个值为first,最后一个值为-1
function list.new()
	return {first=1,last=-1}
end


--将第一个表的第一个值往坐标移动一个位置，且对其赋予指定的值
function list.pushleft(list,value)
	local  first = list.first-1
	list.first=first
	list[first]=value
end


--往数据的右边添加一个值
function list.pushright(list,value)
	local last = list.last+1
	list.last=last
	list[last]=value
	-- body
end

--将列表中的第一个数据移除且索引号移动一位并且返回这个移除的值
function list.popleft(list)
	local first = list.first
	if first>last then error("list is empty") end
	local value = list[first]
	list[first]=nil
	list.first=first+1
	return value
end

--移除最后一个值后索引号往前移动一位
function list.popright(list)
	local last = list.last
	if list.first>last then error("list is empty") end
	local value = list.last
	list[last]=nil
	list.last=list.last-1
	return value
end


local test01 = list.new()
print(test01.first,test01.last)

print("----------------------------------")

reserved={["when"]=true,["end"]=true,["local"]=true}
if reserved["when"] then
	print("包含")
else
	print("不包含")
end



path="/Users/damon/Desktop/Lua_Project/mytext01.txt"
local t = {}
for line in io.lines(path) do 
	table.insert(t,line)
	print(line)
end

--在文本的最后一行插入一行
table.insert(t,"") 
for k,v in ipairs(t) do
	print(k,v)
end

local s = table.concat(t,"\n")
print("拼接所有数据-",s)
print("字符串的长度-",#s)


