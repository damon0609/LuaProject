---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by damon.
--- DateTime: 2018/6/2 上午11:33
---
print("hello")
print("你好lua")
print("大家好")
print(type(table))


t={["key"]=1111,11,"damon"}
for k,v in pairs(t) do
    print(k,v)
end

print("这个lua编辑器比其他的好用")

print(string.format("%.4f",999))

print(#"abc")


--输出多行字符串
str=[[
<html>
<body>
<a href="www.baidu.com">
</body>
</html>
]]

print(str)

--..连接字符串
print("222"+"1.9")

--+ 会将数字字符串转换为数学运算

print("2.2"+10)
--求字符串长度

print(#"lsjflsjfl")


print(#"汉")


print(tonumber("1111"))

print(tostring(1800))

print(string.len(str))
