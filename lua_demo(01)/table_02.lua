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

print("---------------------------")

--[[
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

function set.union(a,b)
	local res = set.new{}
	for m,n in ipairs(a) do 
		--res[_i]=true 
	end
	for _i,v in pairs(b) do 
		res[_i]=true
	end
	return res
end

local set01 = set.new{1,5,10}
--local set02 = set.new{10,19}
for k,v in ipairs(set01) do
	print(k,v)
end
--]]


