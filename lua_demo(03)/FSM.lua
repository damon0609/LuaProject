FSM={
	stateList={},
	current={},
};

function FSM:Create()
	local o = o or {};
	setmetatable(o,{__index=FSM});
	FSM.__index=FSM;
	Init();
	return o;
end

function Init()
	-- body
	print("Init FSM")
end

function FSM:Entry(state)
	FSM.current=state;
end



function FSM:Update()


end

return FSM;