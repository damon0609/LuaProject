--逻辑运算符

--and or 

v=10
print("未赋值则为nil")

--a or b 
--如果a为false,则返回b,否则返回a 
--a and b 
x=2
a= x or v
print(x)

--a and b 
--如果a为false,则返回a,否则返回b
a=a and x 
print(a)

--对函数的数据类型进行判断
function test( w )
	if not w then  
		print("未赋值")
	elseif type(w) ~="number" then
		print("未使用指定类型的")
	else
		print(w+1)
	end
end
test(2)