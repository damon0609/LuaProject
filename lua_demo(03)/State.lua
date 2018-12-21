State={name="none"}

State.__index=State;
function State:Create()
	-- body
	local o = o or {};
	setmetatable(o,State);
	State.__index=State;
	return o;
end

function State:Enter()
	-- body
end

function State:Exit()
	-- body
	print("Eixt")
end

function State:Update()
	-- body
	print("Update")
end

return State;

