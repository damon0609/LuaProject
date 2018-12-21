

--state 0 可以领取 1已领取 2 未领取
temp={}
table.insert(temp,{index=1,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=0})
table.insert(temp,{index=2,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=1})
table.insert(temp,{index=3,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=2})
table.insert(temp,{index=4,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=3})
table.insert(temp,{index=5,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=2})
table.insert(temp,{index=6,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=2})
table.insert(temp,{index=7,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=1})
table.insert(temp,{index=8,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=1})
table.insert(temp,{index=10,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=0})
table.insert(temp,{index=11,itemReward="3001-1|3001-2",proReward="9001-1|9001-2",state=0})


for k,v in ipairs(temp) do
	print("index-"..v.index,"state-"..v.state)
end


print("---------------------------------")

--这里使用的是回调函数
table.sort(temp,function(a,b)
	if a.state==b.state then
		return a.index>b.index
	end
	return a.state>b.state;
end)

for k,v in ipairs(temp) do
	print(v.index,v.state)
end
