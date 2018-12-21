Account={blance=0}
function Account:new( o,name )
	o=o or {name=name}
	setmetatable(o,self)
	self.__index=self
	return o	
end

function Account:deposit( v )
	self.blance=self.blance+v
end

function Account:withdraw( v )
	if v>self.blance then error ("余额不足") end
	self.blance=self.blance-v
end

function Account:show( title )
	print(title or "",self.name,self.blance)
end

a = Account:new(nil,"demo")
a:show("after creation")
a:deposit(1000)
a:show("after deposit")
a:withdraw(100)
a:show("after withdraw")

array={1,4,6,9,100}
print("表的长度:",#array)

array={}
for  i=1,5 do
	array[i]={}
	for j=1,5 do
		--array[i][j]=i*j
		if i>5 then 
			print("\n")
		else 
		   	print(i,"*",j,"=",i*j)
		end
	end
end

io.write("写入文本")


file=io.open("/Users/damon/Desktop/Lua_Project/mylua.lua","r")
io.input(file)
print(io.read())
io.close(file)
