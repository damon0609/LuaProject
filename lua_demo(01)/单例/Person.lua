local Person = {["name"]="",["age"]=18}


function Person.Create(self,name,age)
	setmetatable(self,{__index=Person})
	local p = {}
	setmetatable(p,{__index=Person})
	p["name"]=name
	p["age"]=age
	return p
end

function Person:talk(words)
	print("person say-",words)
end

function Person:jump(height)
	print("person jump-",height)
end

function Person:printInfo()
	print("name-"..self["name"],"age-"..self["age"])
end

return Person