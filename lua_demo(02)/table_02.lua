a={}
for i=0,3 do
	table.insert(a,i)
end
print(#a)

b={2}
table.insert(b,1,10)
for k,v in ipairs(b) do
	print(k,v)
end

--移除元素
table.remove(b,2)

for k,v in ipairs(b) do
	print(k,v)
end

c={1,42,4,91}
table.sort(c)
for k,v in ipairs(c) do
	print(k,v)
end

