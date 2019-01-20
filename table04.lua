--5*5维数组
table01={};
for i=1,5 do
	table01[i]={};
	for j=1,5 do
		table01[i][j]=i.."---"..j;
	end
end

for k,v in ipairs(table01) do
	temp=v;
	for m,n in ipairs(v) do
		print("value-"..n);
	end
end

--一维数组
table02={};
for i=1,5 do
	for j=1,4 do
		table02[(i-1)*4+j]=(i-1)*4+j;
	end
end
for k,v in ipairs(table02) do
	print(k.."---"..v);
end

