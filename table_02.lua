text={}
text.default={size=14,content="hello"}
text.mt={}

function text.new(a)
	setmetatable(a,text.mt)
	return a
end

--元表的元方法
text.mt.__index=function(tb,key)
	return text.default[key]
end

local t=text.new{content="bye"}
print(t.size.."--"..t.content)

--表
set={}

--元表
set.mt={}


function set.new(t)
	local temp = {}
	setmetatable(temp,set.mt)
	for k,v in ipairs(t) do
		temp[v]=true 
	end
	return temp
end

local s1 = set.new{"key1","key2"}
for k,v in pairs(s1) do
	print(k,v)
end

function set.union(a,b)
	local res = set.new{}
	for _i,v in pairs(a) do res[v]=true end
	for _i,v in pairs(b) do res[v]=true end
end




