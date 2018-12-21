function writeInfo(info)
	for i=1,#info do
		io.write(info[i],"");
	end
	io.write("\n");
end

function swipe(a,n)
	n=n or #a;
	if n<=1 then
		writeInfo(a);
	else
		for i=1,#a do
			a[n],a[i]=a[i],a[n];
			swipe(a,n-1);
		end
	end
end


function test(len)
	print("before");
	for i=1,len do
		if len<=0 then
			break;
		end
		print(i);
		test(len-1);
	end
end
test(3);