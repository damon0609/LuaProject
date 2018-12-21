Set={}
Set.mt={}

function Set.new(t)
	local res = {}
	setmetatable(res,Set.mt)
	for _,v in pairs(t) do
		res[v]=true
	end
	return res
end

local set01=Set.new{1,4,10}
for k,v in pairs(set01) do
	print(k,v)
end

Set.mt.__le=function (a,b)
	for v in pairs(a) do
		if not b[v] then 
			return false
		end
		return true
	end
end

function Set.tostring(t)
	local s ="{"
	local sep=""
	for _,e in pairs(t) do
		s=s..sep..e
		sep=","
	end
	return s.."}"
end


function Set.print(t)
	print(Set.tostring(t))
end
local set02 = Set.new{2,9}

t={1,48,9}
Set.print(t)



