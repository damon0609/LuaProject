local student = require("Student")
local person = require("Person")

local s1 = student:Instance()
s1.m_name="s1"
s1:talk("wo shi s1")
s1:jump()
s1:run(5.4)

local s2 = student:Instance()
s2.m_name="s2"
s2:talk("wo shi s2")
s2:jump()
s2:run(9.4)


