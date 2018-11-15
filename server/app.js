//1.加载相应模块
const express=require("express");
const mysql=require("mysql");
const pool=require("./pool");
//2.创建express服务器
var app=express();
//3.绑定监听端口
app.listen(3000);
//静态资源
app.use(express.static(__dirname+"/public"));
//功能一 创建小程序首页 图片列表——轮播图
app.get("/imagelist",(req,res)=>{
  var sql="SELECT * FROM imagelist";
  //3.json
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
app.get("/tuijianlist",(req,res)=>{
  var sql="SELECT * FROM tuijian_list";
  //3.json
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
app.get("/hostlist",(req,res)=>{
  var sql="SELECT * FROM host_list";
  //3.json
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
app.get("/book",(req,res)=>{
  var id=parseInt(req.query.id);
  var sql="SELECT * FROM books WHERE id=?";
  //3.json
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//分页的漫画分类
app.get("/books",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  var sql=` SELECT count(id) as c FROM books`;
  var process=0;
  var obj={pno:pno,pageSize:pageSize};
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pageCount=Math.ceil(result[0].c/pageSize);
    process+=50;
    obj.pageCount=pageCount;
    if(process==100){
      res.send(obj);
    }
  });
  var sql=" SELECT * FROM books";
      sql+=" LIMIT ?,?";
  var offset=parseInt((pno-1)*pageSize);
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    process+=50;
    obj.data=result;
    if(process==100){
      res.send(obj);
    }
  })
});
app.get("/itemize",(req,res)=>{
  var sql="SELECT * FROM itemize";
  //3.json
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//详情页分类
app.get("/detail",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  var sql=` SELECT count(id) as c FROM book_detail`;
  var process=0;
  var obj={pno:pno,pageSize:pageSize};
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var pageCount=Math.ceil(result[0].c/pageSize);
    process+=50;
    obj.pageCount=pageCount;
    if(process==100){
      res.send(obj);
    }
  });
  var sql=" SELECT * FROM book_detail";
      sql+=" LIMIT ?,?";
  var offset=parseInt((pno-1)*pageSize);
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    process+=50;
    obj.data=result;
    if(process==100){
      res.send(obj);
    }
  })
});