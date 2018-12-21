print(string.rep("[^\n]",3,"*"))


--"\n就是一个换行符"
print("[^\n]")

--同上一个等价
print("[^".."\n".."]")

print("-----------------魔法字------------------")
--[] 可以表示集合
print(string.match("9 is number","[0123456789]"))

--集合的简化形式
print(string.match("9 is number","[0-9]"))

--只能匹配一次
print(string.match("193","[0-9]",3))

print("除字符之外")
print(string.match("abc1","[^a-zA-Z]"))

--从指定位置匹配指定的字符串
print(string.match("abc","c"))

--% + * - ？[] ^ () $
--%a表示字母
--%d表示数值
--%c表示控制符
--%l表示小写字母
--%p表示标点符号
--%s空白字符
--%u大写字符
--%w字符或者数字
--%x表示16进制
--%z内部表示0的字母

local s = "Today is 11/10/2018"
print(string.match(s,"%d"))
print(string.match(s,"%u"))

--大写形式属于补集
print(string.match(s,"%D"))





