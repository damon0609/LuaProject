
require("Idle");
require("Walk");
require("FSM");

main={};


function main:Init()
	InitState();

end

function InitState()
	local fsm= FSM:Create();

	local idle = Idle:Create("idle",fsm);
	local walk = Walk:Create("walk",fsm);
	
	fsm:Entry(idle);
	print(fsm.current.name);



	
end




main:Init();


