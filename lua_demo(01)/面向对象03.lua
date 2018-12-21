
-- 用两个表来保存私有方法和公用方法

function newAccount(initbalance)
	local self = 
	{
		balance=initbalance,
		count=0
	}

	--增加积分
	local addCount = function(v)
		self.count=self.count+v*0.1
	end

	local withdraw = function (v)
		self.balance=self.balance-v
		addCount(v)
	end

	local deposit = function ()
		self.balance=self.balance+v
	end

	local getbalance = function ()
		return self.balance
	end

	local getcount = function ()
		return self.count
	end

	--返回一个表表中存储公开可用的方法
	return {
		withdraw=withdraw,
		deposit=deposit,
		getbalance=getbalance,
		getcount=getcount
	}
end


local t = newAccount(1000)
print("花费:1000",t.withdraw(100))
print("剩余",t.getbalance())
print("积分",t.getcount())


