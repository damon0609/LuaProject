function fwrite(fmt,...)
	-- body
	local s = unpack(arg)
	print(s)
	--print(string.format(fmt,unpack(arg)))
end


function unpack(t,i)
	i=i or 1
	if t[i] then
		print(t[i])
		return t[i],unpack(t,i+1) --循环调用自身
	end
end
--]]

fwrite("%02d","no title")
