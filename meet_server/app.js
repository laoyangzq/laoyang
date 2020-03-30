//功能：学子商城服务器程序
//1:下载四个第三方模块
//express           web服务器
//mysql             mysql驱动
//express-session   会话对象
//cors              跨域
//[8080脚手架   4000服务器]
//npm i express mysql express-session cors
//2:引入第三方模块
const express = require("express");
const session = require("express-session");
const mysql = require("mysql");
const cors = require("cors");
const bodyParser = require("body-parser");
//3:创建数据库连接池
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   connectionLimit:15,
   database:"meet"
})
//4:创建web服务器
var server = express();
//5:配置跨域
//允许跨域程序端口
server.use(cors({
    //允许哪个程序列表 脚手架
    origin:["http://127.0.0.1:8080",
    "http://localhost:8080"],
    //每次请求验证
    credentials:true
}));
//6:配置session对象
server.use(session({
   secret:"128位安全字符串",//加密条件
   resave:true,            //请求更新数据
   saveUninitialized:true  //保存初始化数据
}))
//7:指定静态目录  public
server.use(express.static("public")); 
//8:使用body-parser中间件
server.use(bodyParser.urlencoded({
  extended:false
}))
//9:启动监听端口  4000
server.listen(4000);

//功能零：用户注册
server.post("/reg",(req,res)=>{
  //1:获取参数 uname upwd email phone gender
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var email=req.body.email;
  var phone=req.body.phone;
  var gender=req.body.gender;
  //2:判断是否为空
  if(!uname){
    res.send({code:-2,msg:"姓名不能为空"});
    return;
  }
  if(!upwd){
    res.send({code:-3,msg:"密码不能为空"});
    return;
  }
  if(!email){
    res.send({code:-4,msg:"邮箱不能为空"});
    return;
  }
  if(!phone){
    res.send({code:-5,msg:"电话不能为空"});
    return;
  }
  if(!gender){
    res.send({code:-6,msg:"性别不能为空"});
    return;
  }
  //3:创建sql
  var sql="INSERT INTO meet_user VALUE (null,?,?,?,?,?)";
  //4:发送sql并且结果返回脚手架
  pool.query(sql,[uname,upwd,email,phone,gender],(err,result)=>{
    //5:如果发生严重错误抛出
    if(err)throw err;
    //console.log(result);
    if(result.affectedRows>0){
      res.send({code:1,msg:"添加成功"});
    }else{
      res.send({code:-1,msg:"添加失败"});
    }
  })
})


//功能一;完成用户登录验证
server.post("/login",(req,res)=>{
  //1:获取参数 uname upwd
  var n = req.body.uname;
  var p = req.body.upwd;
  //2:创建sql
  var sql =" SELECT uid FROM meet_user WHERE uname = ? AND upwd = ?";
  //3:发送sql并且结果返回脚手架
  pool.query(sql,[n,p],(err,result)=>{
     //4:如果发生严重错误抛出
     if(err)throw err;
     //5:登录失败用户名密码有错
     if(result.length==0){
       res.send({code:-1,msg:"用户名或密码有误"})
     }else{
       //6:登录成功
       //7:将登陆成功用户id保存
       //session对象作为登陆成功凭据
       //result=[{id:1}];
       //一定不能写req.session.id
       req.session.uid=result[0].uid;
       //console.log(result[0].uid);
       res.send({code:1,msg:"登录成功"});
     }
  })
})

//测试
//1:启动服务器 node app.js
//2:启动mysql 3306
//3:http://127.0.0.1:4000/login?uname=tom&upwd=122
//3:http://127.0.0.1:4000/login?uname=tom&upwd=123

//功能二:商品列表分页显示
server.get("/list",(req,res)=>{
  //1:参数  页码  一页几行
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //2:默认指定页码一页几行
  if(!pno){pno=1}
  if(!ps){ps=20}
  //x:sql
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  var sql = " SELECT id,sum,icd,title,stitle,price,spec,pic FROM meet_list LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    //console.log(result);
    // req.session.lid=result[0].lid;
    res.send({code:1,msg:"查询成功",data:result})
  })
})



//测试
//复制db_01.sql 复制
//启动服务器  node app.js
//打开浏览器  
//http://127.0.0.1:4000/product
//http://127.0.0.1:4000/product?pno=2
//http://127.0.0.1:4000/product?pno=3

// 功能三：跳转详情页
server.get("/jumpdetail",(req,res)=>{
  var id = req.query.id;
  var sql="SELECT icd,title,stitle,price,spec,pic FROM meet_list WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    // console.log(result[0])
    res.send({code:1,msg:"跳转成功",data:result[0]})
  })
})

// 功能四：添加购物车
server.get('/addcart',(req,res)=>{
  // 获取用户当前登录的uid
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-2,msg:"请登录"});
    return;
  }
  // 获取参数  price价格 
  var title=req.query.title;
  var stitle=req.query.stitle;
  var price=req.query.price;
  var icd=req.query.icd;
  var pic=req.query.pic;
  var spec=req.query.spec;
  var count=req.query.count;
  // 查询此用户是否购买过此商品
  var sql="SELECT id FROM meet_shopcar WHERE icd=? AND uid=?";
  pool.query(sql,[icd,uid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){ //没有购买就添加
      var sql=`INSERT INTO meet_shopcar VALUES(null,${price},${count},'${title}','${stitle}','${spec}','${pic}',${uid},${icd})`;
    }else{ //如果购买过此商品
      var sql=`UPDATE meet_shopcar SET count=count+1 WHERE icd=${icd} AND uid=${uid}`;
    }
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({code:1,msg:"添加成功",result:result});
    })
  })
})

// 功能五：查询当前用户购物车信息
server.get('/cart',(req,res)=>{
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-2,msg:'请登录',data:[]});
    return;
  }
  var sql="SELECT title,stitle,spec,price,count,pic,icd FROM meet_shopcar where uid=?";
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})

// 跳转详情
// server.get("/godetail",(req,res)=>{
//   var icd = req.query.icd;
//   console.log(icd)
//   var sql="SELECT title,stitle,price,spec,pic FROM meet_shopcar WHERE icd=?";
//   pool.query(sql,[icd],(err,result)=>{
//     if(err) throw err;
//     // console.log(result[0])
//     res.send({code:1,msg:"跳转成功",data:result[0]})
//   })
// })

// 功能六：删除指定商品
server.get('/delcart',(req,res)=>{
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-2,msg:'请登录'});
    return;
  }
  var icd=req.query.icd;
  // console.log(icd)
  var sql='DELETE FROM meet_shopcar WHERE icd=?';
  pool.query(sql,[icd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:'删除成功'});
    }else{
      res.send({code:-1,msg:'删除失败'});
    }
  })
})

// 功能七：删除多个商品记录
server.get('/dels',(req,res)=>{
  // 1.获取uid判断是否赋值登录成功
  var uid=req.session.uid;
  if(!uid){
    res.send({code:-2,msg:'请登录'});
    return;
  }
  // 2.获取参数ids 删除id列表 脚手架传过来也是这样的格式
  var ids=req.query.ids;
  var sql = `DELETE FROM meet_shopcar WHERE icd IN (${ids})`;
  // 3.删除
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:'删除成功'});
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
})

// 功能八：查询轮播图
server.get('/banner',(req,res)=>{
  var sql="SELECT pic FROM meet_banner";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})

// 功能九：查询分类  
server.get('/class',(req,res)=>{
  var sql="SELECT cname FROM meet_class";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})
