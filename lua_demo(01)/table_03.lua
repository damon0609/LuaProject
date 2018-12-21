
Item={id=0, itemType="none",attack=0,damage=0,level=0}

function Item:new(id,itemType,attack,damage,level)
	 temp = o or {}
	setmetatable(temp,self)
	self.__index=self
	self.id=id or 0
	self.itemType=itemType or "none"
	self.attack=attack or 0
	self.damage=damage or 0
	self.level=level or 0
	return temp
end

function Item:toString()
	return string.format("id=%s,itemType=%s,attack=%s,damage=%s,level=%s",
		self.id,self.itemType,self.attack,self.damage,self.level)
end

--继承类

--继承类如何写
--这个表中插入的还有问题

local item = Item:new(100,"equipment",1.5,19,7)
print(item:toString())


local item02 = Item:new(102,"equipment",9.5,1,9)
print(item02:toString())

local temp={}
for i=1,10 do
	local item03 = Item:new(i,"none",i*3,i*2,i*4)
	table.insert(temp,i,item03)
end

for i=1,10 do
	print(temp[i]:toString())
end




