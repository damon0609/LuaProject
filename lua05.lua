MathTool={};
MathTool.PI=3.14;



local function MathTool:add(x,y)
	return x+y;
end 

local function MathTool:min(x,y)
	return x-y;
end

MathTool={
	add=add;
}

return MathTool;



--[[
item={id=100;}

--下面两个等价
print(item.id);
print(item["id"]);
--]]