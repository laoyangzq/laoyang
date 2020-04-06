<template>
  <div>
    <div class="header">
        <div class="head">
            <div class="head1">
                <a href="javascript:;">
                    <img src="../../public/photo/icon_phone.png" alt="">
                    <span>微商城</span>
                </a>
                <a  href="javascript:;">
                    <img src="../../public/photo/icon_sina.png" alt="">
                    <span>官方微博</span>
                </a>
                <a  href="javascript:;">
                    <img src="../../public/photo/icon_tw.png" alt="">
                    <span>台湾元祖</span>
                </a>
            </div>
            <div class="head2">
                <ul>
                    <li @click="user">
                      <a href="javascript:;">{{nic}}</a>&nbsp;丨
                    </li>
                    <li><a href="javascript:;">会员中心</a>&nbsp;丨</li>
                    <li><router-link to="./Cart">购物车</router-link>&nbsp;丨</li>
                    <li><router-link to="./Delivery">元祖门店</router-link>&nbsp;丨</li>
                    <li><router-link to="./About">帮助中心</router-link></li>
                </ul>
            </div>
        </div>
        <div>
             <a href="javascript:;">
                <img src="../../public/photo/top.jpg" alt="">
             </a>
        </div>
        <div>
            <div class="center">
                <div id="c1">
	              <router-link to="./About"><img src="../../public/photo/logo-.png" alt=""></router-link>
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
                      <a href="javascript:;">新年快乐</a>
                      <a href="javascript:;">春节快乐</a>
                      <a href="javascript:;">专款蛋糕</a>
                      <a href="javascript:;">春节礼券</a>
                    </li>
                    <li>
                      <a href="javascript:;">元祖礼盒</a>
                      <a href="javascript:;">补冬礼盒</a>
                      <a href="javascript:;">补冬蛋糕</a>
                    </li>
                    <li>
                      <a href="javascript:;">元祖蛋糕</a>
                      <a href="javascript:;">鲜奶蛋糕</a>
                      <a href="javascript:;">巧克力蛋糕</a>
                      <a href="javascript:;">慕斯蛋糕</a>
                    </li>
                    <li>
                      <a href="javascript:;">精致西点</a>
                      <a href="javascript:;">小慕斯类</a>
                      <a href="javascript:;">西点卷类</a>
                      <a href="javascript:;">麻薯类</a>
                    </li>
                    <li>
                      <a href="javascript:;">冰品季</a>
                      <a href="javascript:;">冰淇淋蛋糕</a>
                      <a href="javascript:;">冰品点心</a>
                    </li>
                  </ul>
                </li>
                <li><router-link to="./List">元祖商城</router-link></li>
                <li>
                  <router-link to="./Brand">品牌故事</router-link>
                  <!-- <a href="">品牌故事</a> -->
                </li>
                <li><a href="javascript:;">元祖推荐</a></li>
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
          <input placeholder="请输入(3~12位)用户名/手机号"
          type="text" v-model="uname">
        </div>
        <div>
          <input placeholder="请输入密码(6~12位大小写字母、数字)" v-model="upwd" type="password">
        </div> 
        <div class="pla">
          <input v-model="captcha" autocomplete="off" type="text"  id="pass" placeholder="验证码">
          <img :src="captchaURL" @click="randNum=Math.random()">
        </div>
        <div>
          <button @click="btn">短信验证登录</button>
          <button @click="ulogin" :disabled="!agree">登录</button>
        </div>  
        <div>
          <input checked v-model="agree" class="autologin" style="width:18px;background-color:#0f0;cursor:pointer;vertical-align:middle" type="checkbox" id="auto">
          <span>我已阅读并同意</span>
          <a @click="agreement()" href="javascript:;" style="color:#000;font-weight:bold;">《用户协议》</a>
            <span class="header_span">和</span>
          <a @click="privacy()" href="javascript:;" style="color:#000;font-weight:bold;">《隐私保护政策》</a>
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
          <input v-model="uname" placeholder="请输入(3~12位)用户名/手机号"
          type="text">
        </div>
        <div>
          <input v-model="upwd" placeholder="请输入密码(6~12位大小写字母、数字)" type="password">
        </div> 
        <div>
          <input v-model="phone" placeholder="请输入正确格式电话">
        </div>    
        <div>
          <input v-model="email" placeholder="请输入正确格式邮箱">
        </div>
        <div>
          <input type="radio" id="man" value=1 name="gender" checked>男
          <input type="radio" id="women" value=0  name="gender">女
        </div>
        <button @click="reg" class="btn" :disabled="!agree">注册</button>
        <div>
          <input checked v-model="agree" class="autologin" style="width:18px;background-color:#0f0;cursor:pointer;vertical-align:middle" type="checkbox" id="auto">
          <span>我已阅读并同意</span>
          <a @click="agreement()" href="javascript:;" style="color:#000;font-weight:bold;">《用户协议》</a>
            <span class="header_span">和</span>
          <a @click="privacy()" href="javascript:;" style="color:#000;font-weight:bold;">《隐私保护政策》</a>
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
        <div>
          <button @click="reg" class="bnn" :disabled="!agree">登录</button>
        </div>
        <div class="dis">
          <input checked v-model="agree" class="autologin" style="width:18px;background-color:#0f0;cursor:pointer;vertical-align:middle" type="checkbox" id="auto">
          <span>我已阅读并同意</span>
          <a @click="agreement()" href="javascript:;" style="color:#000;font-weight:bold;">《用户协议》</a>
            <span class="header_span">和</span>
          <a @click="privacy()" href="javascript:;" style="color:#000;font-weight:bold;">《隐私保护政策》</a>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      nic:"登录| 注册",
      showModal:false,
      showModalz:false,
      showModely:false,
      agree:false,
      uname:'',
      upwd:'',
      phone:'',
      email:'',
      gender:1,
      captcha:"",
      randNum:Math.random()
    }
  },
  computed: {
    captchaURL(){
      return `http://127.0.0.1:4000/register?`+this.randNum
    }
  },
  created(){
    this.loadName();
  },
  methods: {
    loadName(){
      var url="username";
      this.axios.get(url)
      .then(result=>{
        if(result.data.code==-1){
          this.$alert('亲，请登录哟！愿您今后的生活都能被温暖对待！');
        }else{
          this.nic=result.data.result[0].uname;
        }
      })
    },
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
      var captcha = this.captcha;
      if(!reg.test(uname)){
          alert("用户名格式不正确");
          return;
      }
      if(!reg.test(upwd)){
          alert("用户密码格式不正确");
          return;
      }
      if(captcha==""){
          alert("请填写验证码");
          return;
      }
      //发送ajax请求
      var url = "login";
      var obj = {uname,upwd,captcha:captcha};
      this.axios.post(url,this.qs.stringify(obj)).then(res=>{
          if(res.data.code==-1){
              alert("用户名或密码错误！")
          }else if(res.data.code==410){
              alert("验证码输入错误");
              return;
          }else{
              alert("亲，登录成功哟！");
              this.showModal=false;
              this.showModalz=false;
              history.go(0);
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
    agreement() {
      this.$alert("1、 用户有权根据本协议的约定，以及元蛋糕网站上发布的相关规则在元蛋糕网站上查询商品信息、订购具体商品、参加元蛋糕网站的有关活动，以及使用元蛋糕网站提供的其他服务。2、 用户应当保证在元蛋糕网站购买商品过程中遵守诚实信用原则，不扰乱网上交易的正常秩序。3、 用户享有言论自由权利，并拥有适度修改、删除自己发表的文章的权利。4、 用户不得在元蛋糕网站发表包含以下内容的言论：① 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；② 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；③ 损害国家荣誉和利益的；④ 煽动民族仇恨、民族歧视，破坏民族团结的；⑤ 任何包含对种族、性别、宗教、地域内容等歧视的；⑥ 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；⑦ 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；⑧ 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；⑨ 损害国家机关信誉的；⑩ 其他违反宪法和法律行政法规的。5、 未经元蛋糕网站同意，禁止用户在元蛋糕网站上发布任何形式的广告。");
    },
    privacy() {
      this.$alert("1、 用户个人隐私：请阅读元蛋糕网站的隐私保护政策以了解隐私政策。该声明适用于您访问元蛋糕网站，或在元蛋糕网站购买商品或使用元蛋糕网站提供的任何服务。2、 信息安全①元蛋糕网站账户和提现功能有密码保护，请用户妥善保管账户及密码信息；② 如果用户发现自己的个人信息泄密，尤其是元蛋糕网站账户及密码或提现密码发生泄露，请用户立即联络元蛋糕网站客服，以便元蛋糕网站采取相应措施。3、 Cookie的使用规则① 通过元蛋糕网站所设Cookie所取得的有关信息，将适用本规则；② 在元蛋糕网站上发布信息的第三方通过其所发布信息在用户计算机上设定Cookies的，将按该第三方的隐私权政策使用；③ 编辑和删除个人信息的权限：用户可以点击“我的元蛋糕”对用户的个人信息进行编辑和删除，除非元蛋糕网站另有规定。");
    }
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
    top: 40%;
    left: 50%;
    width: 700px;
    height: 500px; 
    margin:-225px 0 0 -350px;
    z-index: 2000;
  }
  .model-top>div:first-child{
    width:100%;
    height:50px;
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
    margin:15px;
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
    outline:medium;
  }
  .modal>div:nth-child(3)>input{
    background-image: url("../../public/photo/Login/Lupwd.png");
  }
  .modal>div:nth-child(4),.modal>div:nth-child(5){
    text-align: center;
  }
  .modal>div:nth-child(4)>input{
    width: 200px;
    height: 35px;
    position: relative;
    top: -15px;
    border:1px solid rgb(22, 184, 71);
    border-radius: 8px;
    outline:medium;
  }
  .modal>div:nth-child(5)>button{
    width:180px;
    height:40px;
    border:0;
    border-radius: 10px;
    margin:20px 20px 0 20px;
  }
  .modal>div:nth-child(4)>button{
    width:180px;
    height:40px;
    /* background:#0d0; */
    border:0;
    border-radius: 10px;
    margin-left: 20px;
    margin-top:20px; 
    text-align: center;
    margin-bottom: 10px;
  }
  .modal>div:nth-child(5)>button:first-child{
    background:#ccc;
  }
  .modal>div:nth-child(5)>button:first-child:hover{
    cursor: pointer;
    background:#0d0;
  }
  .modal>div:nth-child(6){
    text-align: center;
    margin-top: 50px;
  }
  .modal>div:nth-child(6)>button{
    cursor: pointer;
  }
  .modal>div:nth-child(6)>input{
    width:18px;
    height:18px;
  }
  /* ******** */
  .modal1{
    background-color: #fff;
    border:2px solid #08e6e9;
    position: fixed;
    top: 40%;
    left: 50%;
    width: 700px;
    height: 580px; 
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
    outline:medium;
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
  .modal1>div:nth-child(8)>input{
    width:18px;
    height:18px;
  }
  .modal1>div:first-child{
    margin-top: 0;
  }
  .modal1>div{
    margin-top:20px;
  }
  .modal1>button{
    width:180px;
    height:40px;
    /* background:#0d0; */
    border:0;
    border-radius: 10px;
    margin-top:20px; 
  }
  .pla>input{
    padding-left: 10px;
  }
  .modal button[disabled],.modal1 button[disabled]{
    background: #aaa;
    cursor: default;
  }
  .modal button,.modal1 button{
    background:#0d0;
    cursor: pointer;
  }
  .dis{
    margin-top: 30px;
  }
  .dis>input{
    width: 18px;
    height: 18px;
  }
</style>
