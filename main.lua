local Student = require("Student");

local s1 = Student.SharedInstance();
local s2 = Student.SharedInstance();




s1.m_Name="s1";
---表实例化返回的对象为什么是同一个表
Test={}
function Test:Create()
	o=o or {}
	setmetatable(o,{_index=self})
	setmetatable(self,{_index=self})
	return o;
end

local t1=Test:Create();
local t2=Test:Create();

print(game)
print(t1);
print(t2);






