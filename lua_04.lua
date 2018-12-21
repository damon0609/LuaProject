print("--test");
function test()
	print("function test")
end


--不换行的输出方法
function PrintCross()	
	for i=1,9 do
		local temp = i;
		local result=""; --这里必须声明字符串否则无法连接
		for j=1,temp do
			result=result.." "..i.."*"..j.."="..i*j;
		end
		print(result);
		result="";
	end
end
PrintCross();

