function  create_windows(options)
	if type(options.title) ~="string" then 
		error("no title") 
		elseif type(options.width)~="number" then
			error ("no width")
			elseif type(options.height)~="number" then
				error("no height")
			end
end


a={title="damon",width=20,height=12}
create_windows(a)

local  old = math.sin --这里的参数使用的是度数
local k = math.pi/180 --将弧度转换成度数
math.sin=function ( x )
	return old(x*k) --这里的参数将会变成度数
end
print(math.sin(90))

local function fact( x )
	if x==0 then
		return 1
	else 
		return x*fact(x-1)
	end
end 
--对结果有疑问？
print(3)