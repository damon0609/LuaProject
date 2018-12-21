mytable={}
mytable01={}
setmetatable(mytable,mytable01)
print(getmetatable(mytable)._add)


myset={}
myset.mt={}

function myset.new(t)
	local set = {}
	setmetatable(set,myset.mt)
	for  _,l in ipairs(t) do
		set[l]=true
	end
	return set
end

function myset.union(t1,t2)
	local  res = {}
	for v in pairs(t1) do res[v]=true end
	for v in pairs(t2) do res[v]=true end
	return res
end

function myset.intersection (a,b)
    local res = myset.new{}
    for k in pairs(a) do
        res[k] = b[k]    -- 很聪明的方法，如果集合"b"中没有元素"k"的话就会返回"nil"。
    end
    return res
end

function myset.sub(t1,t2)
	local res = myset.new{}
	for k in pairs(t1) do
		if not t2[k] then
			res[k]=true
		end
	end
	return res
end

function myset.div(a,b)
	local res = myset.new{"__div"}
	return res
end

function myset.tostring(t)
	local s = "{"
	local sep = ""
	for e in pairs(t) do --这个用法需要注意，这样写即可做键也可以做值
		s=s..sep..e
		sep=","
	end
	return s.."}"
end

function myset.print(t)
	print(myset.tostring(t))
end

myset.mt.__add=myset.union --两个相加的表
myset.mt.__mul = myset.intersection --定义两个交集的表
myset.mt.__sub=myset.sub --剔除表1中与表2相同的元素
myset.mt.__div=myset.div


print("----------------------")
local table01 = myset.new{1,4,10,2}
print(getmetatable(table01))

local  table02 = myset.new{2,5,11,189}
print(getmetatable(table02))

myset.print({11,15,190})
myset.print(table02)

print("合并两个表")
myset.print(table01+table02)

print("交集")
myset.print(table01*table02)

print("剔除表1中与表2相同的元素")
myset.print(table01-table02)

print("-----")
myset.print(table01/table02)

