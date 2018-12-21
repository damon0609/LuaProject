complex={}
function  complex.new(r,i)
	return {r=r,i=i}
end

function complex.add(c1,c2)
	return complex.new(c1.r+c2.r,c1.i+c2.i)
end


function complex.print(c)
	local s = "{"
	local sep = ""
	for k,v in pairs(c) do
		s=s..sep..v
		sep=","
	end
	print(s.."}")
end

local temp=complex.new{10,10}
local temp01 = complex.new{0,1}
complex.add(temp,temp01)
complex.print(temp)