Account={width=0,height=0}

function Account:new(o,width,height)
	o = o or {}
	setmetatable(o,self)
	--元表的元方法
	self.__index=self
	self.width=width or 0
	self.height = height or 0
	return o
end

function Account:printCount()
	print(self.width..self.height)
end

local a1 = Account:new(nil,10,2)
a1:printCount()




MapItem={index={x=0,y=0},isExist=false}
function MapItem:new(o,m_index,m_isExist)
	o=o or {}
	setmetatable(o,self)
	self.__index=self

	if type(m_index)=="table" and type(m_isExist)=="boolean" then
		self.index=m_index
		self.index=m_index
		self.isExist=m_isExist
	else
		print("不是合适的类型")
		o=nil
	end
	return o
end

function MapItem:printInfo()
	return string.format("index={x=%q,y=%q};isExist=%q",
		self.index.x,self.index.y,self.isExist)
end

local mapItems = {}

--数据放在外部存储
file=io.open("/Users/damon/Desktop/Lua_Project/mapItem01.txt","a")
io.output(file)
for i=1,10 do
	for j=1,10 do
		local temp = MapItem:new(nil,{x=i,y=j},true)
		--io.write(temp:printInfo().."\n")
		table.insert(mapItems,#mapItems+1,temp)
		if i<2 and j<2 then 
			break
		end

	end
end
io.close()

--数据存储在表中
for k,v in pairs(mapItems) do
	--print(v:printInfo())
end

for i=1,10 do
	if i>1 then
		break 
	end
	for j=1,10 do
		if j>1 then
			break
		end
		print(i,j)
	end
	
end



