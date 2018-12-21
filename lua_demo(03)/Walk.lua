Walk={}
function Walk:Create(name,fsm)
	-- body
	setmetatable(Walk,{__index=State});
	local t = {};
	setmetatable(t,{__index=Walk});
	t.name=name;
	table.insert(fsm.stateList,t);
	return t;
end

function Walk:Enter()
	-- body
	print(self.name);
end


function Walk:Test( ... )
	-- body
	print("Walk Test")
end

return Walk;