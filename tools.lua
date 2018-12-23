--[[
*加载文件
*创建向量
*获取向量模长
*获取向量单位向量
*获取两向量的弧度
*获取两向量的角度
]]



tools={}


--加载文件
function tools.loadfile(path)
	loadfile(path);
end

--获得一个向量
function tools.getVector3(x,y,z)
	return {x=x,y=y,z=z};
end

--获得模长
function tools.getDistance(v)
	local dis = math.sqrt(v.x*v.x+v.y*v.y+v.z*v.z);
	return dis;
end


--获得单位向量
function tools.getNormalized(v)
	local _x = v.x;
	local _y = v.y;
	local _z = v.z;

	local dis = tools.getDistance(v);
	local res = 0

	if dis~=0 then
		res = tools.getVector3(_x/dis,_y/dis,_z/dis);
	else
		res=0;
	end
	return res;
end

--两个向量的夹角
function tools.getRadius(v1,v2)
	local nor1 = tools.getNormalized(v1);
	local nor2 = tools.getNormalized(v2);

	--计算出向量的夹角
	local dot = nor1.x*nor2.x+nor1.y*nor2.y,nor1.z*nor1.z;

	local angle = 0;

	local epsilon = 0.00001;
	if math.abs(epsilon-1)<=epsilon then
		angle=0;
	elseif math.abs(epsilon+1)<=epsilon then
		angle=math.pi;
	else
		angle=math.acos(dot)

		--夹角是向量尾尾相连 顺时逆时 头尾相连
		--根据叉乘得到的向量计算模厂判断判断方向 叉乘得到的向量各个分量相加 大于0 顺时针，小于0 逆时针 等于0 平行	
		--y1z2- y2z1  +  z1x2 - x1z2 +  x1y2 - y1x2
		local cross = nor1.y*nor2.z-nor2.y*nor1.z + nor1.z*nor2.x-nor1.x*nor2.z + nor1.x*nor2.y-nor1.y*nor2.x
		if cross < 0 then
			angle = 2*math.pi-angle; --这里是按照360度来计算的
		end
	end
	return angle;
end

function tools.getAngle(v1,v2)
	return math.deg(tools.getRadius(v1,v2));
end

return tools;