JSON=(loadfile "JSON.lua")();

--table转json
json_Str=JSON:encode({"中文","two","three",name="damon"});
print(json_Str);


json_Str01=JSON:encode({name="damon",id=100,attack="98",damage="817"})
print(json_Str01);


--json转table
json_table=JSON:decode('[{"name":"damon","id":1000,"attack":"9.8","damage":"88"}]');


--将json字符串转换成表访问
json_table01=JSON:decode(json_Str01);
print(json_table01["id"]);
print(json_table01["damage"]);


print(json_table[1]["name"]);



require("MathTool")
print(MathTool.PI);
