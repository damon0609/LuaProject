local Student = {}

local Person = require("Person")

local m_instance = nil
local m_name = "Student"

function Student:Instance()
	if m_instance==nil then
		print("m_instance is nil new one")
		setmetatable(Student,{__index=Person})
		m_instance={}
		setmetatable(m_instance,{__index=Student})
	end
	return m_instance
end


function Student:run(speed)
	print(self.m_name.." run speed="..speed)
end

function Student:jump()
	print(self.m_name.." jump")
end


return Student