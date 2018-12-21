Student={
	
}
local Person = require("Person");

local m_Instance = nil;
local m_Name = "Student";

function Student:SharedInstance()
	
	if(m_Instance==nil) then
		print("init instance")
		m_Instance={};
		setmetatable(Student,{_index=Person});
		setmetatable(m_Instance,{_index=Student});
	end
	return m_Instance;
end


return Student;