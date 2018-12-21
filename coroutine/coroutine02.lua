--生产者

local file = io.open("coroutine01.lua","r");
io.input(file);

--生产层
function produce()
	local co = coroutine.create(
		function ()
			local line = io.read();	
			while line do
				send(line);
				line=io.read();
			end
		end)
	return co;
end


function send(x)
	coroutine.yield(x);
end

function receive(co)
	local status,value = coroutine.resume(co);
	return status,value;
end


--消费层
function customer(co)
	local status,value = receive(co);
	while(status) do
		print(value);
		status,value =receive(co);
	end
end

local co = produce();
customer(co);

io.close(file);








