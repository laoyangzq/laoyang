<template>
  <div>
    <div class="header">
        <div class="head">
            <div class="head1">
                <a href="">
                    <img src="../../public/photo/icon_phone.png" alt="">
                    <span>微商城</span>
                </a>
                <a  href="">
                    <img src="../../public/photo/icon_sina.png" alt="">
                    <span>官方微博</span>
                </a>
                <a  href="">
                    <img src="../../public/photo/icon_tw.png" alt="">
                    <span>台湾元祖</span>
                </a>
            </div>
            <div class="head2">
                <ul>
                    <li @click="user">
                      <a href="#">登录/注册</a>&nbsp;丨
                    </li>
                    <li><a href="">会员中心</a>&nbsp;丨</li>
                    <li><router-link to="./Cart">购物车</router-link>&nbsp;丨</li>
                    <li><a href="">元祖门店</a>&nbsp;丨</li>
                    <li><a href="">帮助中心</a></li>
                </ul>
            </div>
        </div>
        <div>
             <a href="">
                <img src="../../public/photo/top.jpg" alt="">
             </a>
        </div>
        <div>
            <div class="center">
                <div id="c1">
	              <a href=""><img src="../../public/photo/logo-.png" alt=""></a>
                </div>
	            <div id="c2">
    	            <input type="text" placeholder="请输入搜索名称">
    	            <button>搜索</button>
                  <p>热门搜索：元祖梦蛋糕&nbsp;精致西点</p>
	            </div>
	            <img src="../../public/photo/- (3).jpg" alt="">
            </div>
            <div class="center1">
              <ul>
                <li>全部商品分类
                  <ul class="hov">
                    <li>
                      <a href="">新年快乐</a>
                      <a href="">春节快乐</a>
                      <a href="">专款蛋糕</a>
                      <a href="">春节礼券</a>
                    </li>
                    <li>
                      <a href="">元祖礼盒</a>
                      <a href="">补冬礼盒</a>
                      <a href="">补冬蛋糕</a>
                    </li>
                    <li>
                      <a href="">元祖蛋糕</a>
                      <a href="">鲜奶蛋糕</a>
                      <a href="">巧克力蛋糕</a>
                      <a href="">慕斯蛋糕</a>
                    </li>
                    <li>
                      <a href="">精致西点</a>
                      <a href="">小慕斯类</a>
                      <a href="">西点卷类</a>
                      <a href="">麻薯类</a>
                    </li>
                    <li>
                      <a href="">冰品季</a>
                      <a href="">冰淇淋蛋糕</a>
                      <a href="">冰品点心</a>
                    </li>
                  </ul>
                </li>
                <li><a href="">元祖商城</a></li>
                <li>
                  <router-link to="./Brand">品牌故事</router-link>
                  <!-- <a href="">品牌故事</a> -->
                </li>
                <li><a href="">元祖推荐</a></li>
              </ul>
            </div>
        </div>
    </div>
    <!-- ********************* -->
    <!-- ****登录*** -->
    <div class="modal" v-if="showModal">
      <!-- v-if="showModal" -->
        <div class="model-top">
          <div>
            <a @click="login">
              <img src="../../public/photo/Login/Lchacha.png" alt="">
            </a>
            <img @click="loginimg" src="../../public/photo/Login/Lresigter.png" alt="">  
          </div>
          <div><p>————普通登录————</p></div>
        </div>
        <div>
          <input placeholder="请输入用户名/手机号"
          type="text" v-model="uname">
        </div>
        <div>
          <input placeholder="请输入密码" v-model="upwd" type="password">
        </div> 
        <div>
          <button @click="btn">短信验证登录</button>
          <button @click="ulogin">登录</button>
        </div>  
        <div>
          <input type="checkbox">
          <span>我已阅读并同意</span>
          <a href="#">《用户协议》</a>
            <span class="header_span">和</span>
          <a href="#">《隐私保护政策》</a>
        </div>
    </div>
    <!-- ****注册*** -->
    <div class="modal1" v-if="showModalz">
      <!-- v-if="showModalz" -->
        <div class="model-top">
          <div>
            <a @click="login">
              <img src="../../public/photo/Login/Lchacha.png" alt="">
            </a>
            <img @click="rigsterimg" src="../../public/photo/Login/Llogin.png" alt="">  
          </div>
          <div><p>————注册————</p></div>
        </div>
        <div>
          <input v-model="uname" placeholder="请输入用户名"
          type="text">
        </div>
        <div>
          <input v-model="upwd" placeholder="请输入密码" type="password">
        </div> 
        <div>
          <input v-model="phone" placeholder="请输入电话">
        </div>    
        <div>
          <input v-model="email" placeholder="请输入邮箱">
        </div>
        <div>
          <input type="radio" id="man" value=1 name="gender" checked>男
          <input type="radio" id="women" value=0  name="gender">女
        </div>
        <button @click="reg" class="btn">注册</button>
        <div>
          <input type="checkbox">
          <span>我已阅读并同意</span>
          <a href="#">《用户协议》</a>
            <span class="header_span">和</span>
          <a href="#">《隐私保护政策》</a>
        </div>
    </div>
    <!-- ****短信登录*** -->
    <div class="modal" v-if="showModely">
      <div class="model-top">
          <div>
            <a @click="login">
              <img src="../../public/photo/Login/Lchacha.png" alt="">
            </a>
            <img @click="loginphone" src="../../public/photo/Login/Llogin.png" alt="">  
          </div>
          <div><p>————手机验证登录————</p></div>
        </div>
        <div class="p_int">
          <input placeholder="请输入用户手机号"
          type="text">
        </div>
        <div>
          <input type="" name="verCode" id="verCode" value="" placeholder="请输入验证码" maxlength="6"/>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      showModal:false,
      showModalz:false,
      showModely:false,
      uname:'',
      upwd:'',
      phone:'',
      email:'',
      gender:1
    }
  },
  methods: {
    user(){
      this.showModal=true;
    },
    login(){
      this.showModal=false;
      this.showModalz=false;
      this.showModely=false;
    },
    loginimg(){
      this.showModalz=true;
      this.showModely=false;
    },
    rigsterimg(){
      this.showModalz=false;
      this.showModal=true;
    },
    btn(){
      this.showModely=true;
    },
    loginphone(){
      this.showModely=false;
      this.showModal=true;
    },
    // **********  登录
    ulogin(){
      var reg = /^[a-zA-Z0-9]{3,12}$/;
      var uname = this.uname;
      var upwd = this.upwd;
      if(!reg.test(uname)){
          alert("用户名格式不正确");
          return;
      }
      if(!reg.test(upwd)){
          alert("用户密码格式不正确");
          return;
      }
      //发送ajax请求
      var url = "login";
      var obj = {uname,upwd};
      this.axios.post(url,this.qs.stringify(obj)).then(res=>{
          if(res.data.code==-1){
              alert("用户名或密码错误！")
          }else{
              alert("亲，登录成功哟！");
              this.showModal=false;
              this.showModalz=false;
          }
      })
    },
    // 注册
    reg(){
            // console.log(1)
            var reg = /^[a-zA-Z0-9]{3,12}$/;
            var phoneReg = /^((\+86|0086)\s+)?1[3-9]\d{9}$/;
            var emailReg = /^\w+@([A-Za-z0-9])+\.[A-Za-z]{2,3}(\.[a-z]{2})?$/;
            var uname = this.uname;
            var upwd = this.upwd;
            var phone = this.phone;
            var email = this.email;
            var gender = this.gender;
            if(man.checked==true){
                gender = 1;
            }else{
                gender = 0;
            }
            // console.log(2);
            // console.log(gender);
            if(!uname||!reg.test(uname)){
                alert("用户名格式不正确");
                return;
            }
            if(!upwd||!reg.test(upwd)){
                alert("用户密码格式不正确");
                return;
            }
            if(!phoneReg.test(phone)){
                alert("电话号码格式不正确");
                return;
            }
            if(!emailReg.test(email)){
                alert("电子邮箱格式不正确");
                return;
            }
            var url = "reg";
            var obj = {uname,upwd,email,phone,gender};
            this.axios.post(url,this.qs.stringify(obj))
            .then(res=>{
                if(res.data.code==1){
                    alert("注册成功")
                    this.showModal=false;
                    this.showModalz=false;
                }else{
                    alert("注册失败")
                }
            })
        },
  }
}
</script>

<style scoped>
  .header{
  	  width:1200px;
      margin:0 auto;
  }
  .head{
      background: #eeeeee;
      display: flex;
      justify-content: space-between;
      align-items: center;
     }
  .head1{
  	width: 400px;height:34px;
  	line-height: 34px;
  	align-items: center;
  }
  .head1 span{
      font-size: 15px;
      margin-right: 10px;
  }
  .head1 img{
  	vertical-align: middle;
  }
  .head2{
    position:relative;
  }
  .head2>ul{
    display: inline-block;
    align-items: center;
    margin:0;
  }
  .head2 li{
      float: left;
      margin-right:5px;
      margin-left:5px;
      list-style:none;
  }
  .head a{
    text-decoration:none;
    color:black;
  }
  .head a:hover{
    color:#e4004f;
  }
/* ****************** */
  .center{
    display: flex;
    height: 100px;
  }
  #c1{
    width:280px;height:84px;
    position: relative;
  }
  #c1 img{
    position: absolute;
    bottom:0px;left:30px;
  }
  #c2{
    width:522px;height:95px;
    margin-left:20px;
    margin-top:20px;
  }
  #c2>input{
    border:3px solid #c7023a;
    width:428px;height: 30px;
    padding-left: 10px;
    outline:medium;
    padding-bottom:0; 
  }
  #c2>button{
    width:70px;height: 36px;
    background: #c7023a;
    color:#ffffff;
    border:1px;
  }
  #c2>button:hover{
    background:#f00;
    cursor: pointer;
  }
  #c2>p{
    line-height: 30px;
    font-family: '宋体';
    color:#aeaeae;
    font-size: 13px;
  }
  .center>img{
    margin-left:100px;
  }

  .center1{
    display: flex;
    border-bottom:5px solid #e9004f;
    vertical-align: middle;
  }
  .center1>ul{
    padding-left: 0;
    margin-bottom:0;
  }
  /* ******** */
  .center1>ul>li:first-child{
    width: 225px;height: 40px;
    line-height: 40px;
    text-align: center;
    background: #e9004f;
    color: #ffffff;
    font-size: 16px;
    cursor: pointer;
    position: relative;
  }
  .center1>ul>li:first-child>ul{
    /* top:55px; */
    opacity:0;
    display: none;
    transition:all .5s linear;
    position:relative;
    z-index:300;
  }
  .center1>ul>li:first-child:hover>ul{
    opacity:1;
    display: block;
    padding-left: 0;
  }
  .center1>ul>li:nth-child(2):hover>a,.center1>ul>li:nth-child(3):hover>a,.center1>ul>li:nth-child(4):hover>a{
    color:#f00;
  }
  .center1>ul>li:first-child>ul>li{
    width: 225px;
    height: 91px;
    float: left;
    background: #eeeeee;
    color: #000;
    font-size: 16px;
  }
  .center1>ul>li:first-child>ul>li:nth-child(2),.center1>ul>li:first-child>ul>li:nth-child(4){
    background:#ffff;
    color:#000;
  }
  .center1>ul>li:first-child>ul>li>a:first-child{
    display: block;
    width:225px;
    height:20px;
    text-align: left;
    font-size: 16px;
    color:#0d0;
  }
  .center1>ul>li:first-child>ul>li>a:nth-child(2),.center1>ul>li:first-child>ul>li>a:nth-child(3),
  .center1>ul>li:first-child>ul>li>a:nth-child(4){
    margin-top:8px;
    float: left;
    width:90px;
    margin-left: 5px;
    height:20px;
    font-size: 12px;
  }
  .hov>li>a:hover{
    color:#e4004f;
  }

  .center1 li{
    float: left;
    list-style-type:none;
  }
  .center1 a{
    width: 117px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    font-size: 16px;
    margin-left: 30px;
    color: #4f4f4f;
    text-decoration: none;
  }
  /* ******* */
  .modal{
    background-color: #fff;
    border:2px solid #08e6e9;
    position: fixed;
    top: 50%;
    left: 50%;
    width: 700px;
    height: 550px; 
    margin:-225px 0 0 -350px;
    z-index: 2000;
  }
  .model-top>div:first-child{
    width:100%;
    height:88px;
    display: flex;
    position: relative;
  }
  .model-top>div:first-child>a{
    display:block;
    width:32px;
    height:32px;
    margin-top:0;
  }
  .model-top>div:first-child>img{
    height:100%;
    position:absolute;
    right:0;
  }
  .model-top>div:nth-child(2){
    text-align: center;
  }
  .model-top>div:nth-child(2)>p{
    font-size: 25px;
    font-weight: 500;
    margin:10px;
  }
  .modal>div:nth-child(2),.modal>div:nth-child(3){
    width:100%;
    height:50px;
    margin-bottom:30px;
    text-align: center;
  }
  .modal>div:nth-child(2)>input,.modal>div:nth-child(3)>input{
    width:380px;
    height:50px;
    padding-left: 70px;
    vertical-align: middle;
    background-image: url("../../public/photo/Login/Luser.png");
    background-repeat: no-repeat;
    border:1px solid rgb(22, 184, 71);
    border-radius: 8px;
  }
  .modal>div:nth-child(3)>input{
    background-image: url("../../public/photo/Login/Lupwd.png");
  }
  .modal>div:nth-child(4){
    text-align: center;
  }
  .modal>div:nth-child(4)>button{
    width:180px;
    height:40px;
    background:#0d0;
    border:0;
    border-radius: 10px;
    margin-left: 20px;
    margin-top:20px; 
  }
  .modal>div:nth-child(4)>button:first-child{
    background:#ccc;
  }
  .modal>div:nth-child(4)>button:first-child:hover{
    cursor: pointer;
    background:#0d0;
  }
  .modal>div:nth-child(5){
    text-align: center;
    margin-top: 50px;
  }
  .modal>div:nth-child(5)>input{
    width:18px;
    height:18px;
  }
  /* ******** */
  .modal1{
    background-color: #fff;
    border:2px solid #08e6e9;
    position: fixed;
    top: 50%;
    left: 50%;
    width: 700px;
    height: 660px; 
    margin:-225px 0 0 -350px;
    z-index: 2000;
    text-align: center;
  }
  .modal1>div:nth-child(2)>input,.modal1>div:nth-child(3)>input,.modal1>div:nth-child(4)>input,.modal1>div:nth-child(5)>input{
    width:380px;
    height:50px;
    padding-left: 70px;
    vertical-align: middle;
    background-image: url("../../public/photo/Login/Luser.png");
    background-repeat: no-repeat;
    border:1px solid rgb(22, 184, 71);
    border-radius: 8px;
  }
  .modal1>div:nth-child(6){
    width:452px;
    height:50px;
    font-size: 30px;
    align-items: center;
    text-align: left;
    border:1px solid rgb(22, 184, 71);
    border-radius: 8px;
    margin-left: 123px;
    text-align: center;
    background-image: url("../../public/photo/Login/Lsex.png");
    background-repeat: no-repeat;
  }
  .modal1>div:nth-child(6)>input{
    width:20px;
    height:20px;
    margin-left: 80px;
  }
  .modal1>div:nth-child(3)>input{
    background-image: url("../../public/photo/Login/Lupwd.png");
  }
  .modal1>div:nth-child(4)>input{
    background-image: url("../../public/photo/Login/Lphone.png");
  }
  .modal1>div:nth-child(5)>input{
    background-image: url("../../public/photo/Login/Lemail.png");
  }
  .modal1>div{
    margin-top:20px;
  }
  .modal1>button{
    width:180px;
    height:40px;
    background:#0d0;
    border:0;
    border-radius: 10px;
    margin-top:20px; 
  }
</style>
