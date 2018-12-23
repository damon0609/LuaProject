
require("tools")

local v1 = tools.getVector3(1,2,3);

local dis = tools.getDistance(v1);
print(string.format("distance: %0.2f",dis));

local nor = tools.getNormalized(v1);
print(string.format("noramlized: x=%0.2f y=%0.2f z=%0.2f",nor.x,nor.y,nor.z))


local v2 = tools.getVector3(1,0,0);
local v3 = tools.getVector3(1,-1,0);
print("distance=",tools.getDistance(v2,v3))

print("angle=",tools.getAngle(v2,v3));
