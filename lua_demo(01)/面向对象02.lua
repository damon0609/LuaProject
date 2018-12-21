Account={balance=0}


--构造函数
function Account:new(o)
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	return o
end

function Account:deposit(v)
	self.balance=self.balance+v
end

function Account:withdraw(v)
	if v >self.balance then
		error "余额不足"
	end
	self.balance=self.balance-v
end

local function  search(k,plist)
	for i=1,#plist do
		local v = plist[i][k]
		if v then 
			return v
		end
	end
end 

function createClass(...)
	local c = {}

	for i=1,select('#',...) do
		arg[i]=select(i,...)
	end

	setmetatable(c,{__index=function(t,k)
		return search(k,arg)
	end})
	c.__index=c

	function c:new(o)
		o=o or {}
		setmetatable(o,c)
		return o
	end

	return c
end

Named={}
function Named:getname()
	return self.name
end

function Named:setname(v)
	self.name=v
end


--创建类
NamedAccount=createClass(Account,Named)


--创建类模板
account=NamedAccount:new{name="damon"}

print(account:getname())


--select自带方法？
function test( ... )
	for i=1,select("#",...) do
		arg[i]=select(i,...)
		print(i,arg[i])
	end
end

test({1,5,10},{111,22})
