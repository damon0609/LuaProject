
--加载代码块返回函数并不执行，f()后可以执行，如果是函数就相当于声明一个函数
f=loadfile("lua_04.lua");
f()
test()

data=loadfile("db.lua")

entry=function(o)
	print(o.title)
end


data()
	

