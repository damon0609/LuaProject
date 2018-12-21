Person={};


function Person:Create()
	setmetatable(self,{_index=Person});
	local p = {};
	setmetatable(p,{_index=Person});
	return p;
end


function Person:Talk(word)
	print("Person"..word);
end




return Person;
