Person = {name="chenpeng"}
 
--冒号语法糖，Lua会自动将self作为第一个参数，self代表的是这个函数的实际调用者
function Person:talk( words )
	-- body
	print(self.name	.. "说" ..words)
end
 
 
--定义元表的__index 的元方法
--对任何找不到的键，都会返回'undefined'
Person.__index=Person
 
 
function Person:Create( name )
	-- body
	local p = {}
	setmetatable(p,Person)
	p.name=name
	return p
end

p1={};
setmetatable(p1,Person);

p1:talk("ppp"); 

p2={};
setmetatable(p2,Person);
p2:talk("damon");




 



