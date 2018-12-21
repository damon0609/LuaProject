-- 

Account={balance=1000}

function Account:new(o)
	o=o or {}
	--setmetatable(o,{__index=self})
	setmetatable(o,self)
	self.__index=self
	return o
end


function Account:withdraw(v)
	if v>self.balance then
		print("余额不足")
		return false
	else
		self.balance=self.balance-v
		return true
	end
end

function Account:deposit(v)
	self.balance=self.balance+v
end


account1=Account:new()
print(account1.balance)


--这里省略的this是调用者自身
account2=Account.new(Account)
print(account2.balance)

print(getmetatable(account1))
print(getmetatable(account2))
print(Account)

--重新创建一个模板
CreditAccount=Account:new{limit=10000}
print("信用卡额度",CreditAccount.limit)

function CreditAccount.withdraw(self,v)
	if v-self.balance>self.limit then
		print("超过使用额度")
	end
end

--如果未赋值则使用默认值
function CreditAccount:getLimit()
	return self.limit or 0
end

--在新的对象上添加自己的方法
function CreditAccount:addCount(count)
	
end

--创建新模板的实例
credit1=CreditAccount:new()
credit1:deposit(1000)

print(credit1:withdraw(13000))
print(credit1.balance)

