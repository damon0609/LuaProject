
--将输入的表中的值作为返回函数的中键
function Set(list)
	local set = {}
	for k,v in ipairs(list) do
		set[k]=true
	end
	return set
end

reserved = Set({"when","local","then"})

for k,v in ipairs(reserved) do
	print(k,v)
end

Entry={"This is data01",
 	"This is data02",
 	"This is data03"}
