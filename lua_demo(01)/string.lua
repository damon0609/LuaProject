
for i=1,5 do
	print(string.format("%03d %s",i,"--"))
end

--数据类型

--number
print(type(1.2))

--boolean
print(type(true))

--string
print(type("a"))

--function
print(type(print))

--table
print(type({}))

--thread
local co = coroutine.create(function()
	-- body
end)
print(type(co))

--转义字符

--\n 表示换行符
print("a\nb")

--\t 水平制表符 
print("a \t b")

--\v vertical table
print("a \v b")


print("\rb")


print("\"")

page=[[
<html> 
<head> 
<title>an html page</title>
</head>
<body>
lua [[a text between double breackets]]
</body>
</html>
]]

io.write(page)
