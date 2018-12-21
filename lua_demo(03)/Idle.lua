require("State");

Idle={};

function Idle:Create(name,fsm)
	-- body
	local o = o or {};
	setmetatable(o,{__index=Idle});
	Idle.__index=State;
	o.name=name;
	table.insert(fsm.stateList,o);
	return o;
end

function Idle:Enter()
	-- body
	print(self.name);
end

function Idle:Test()
	-- body
	print("test")
end

return Idle;


