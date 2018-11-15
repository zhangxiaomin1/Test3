//1.加载mysql模块
const mysql=require("mysql");
//2.创建连接池对象
var pool=mysql.createPool({
  host:"localhost",
  user:"root",
  password:"",
  database:"kkmh",
  port:3306,
  connectionLimit:20
});
//3.导出连接池对象
module.exports=pool;