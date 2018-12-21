local s = os.clock()
for i=0,100000 do
	--print(i)
end

--获取cpu使用时间
print(string.format("elapsed time: %.2f\n",os.clock()-s))

print(os.time())


t=os.date("*t",os.time())
for i,v in pairs(t) do
	print(i,v)
end


--获取系统时间
print(os.date())