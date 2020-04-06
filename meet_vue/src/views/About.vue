<template>
  <div class="about">
    <Header></Header>
    <div>
      <a href="javascript:;">主页</a>&nbsp;&gt;<a href="javascript:;">关于元蛋糕</a>
    </div>
    <div>
      <img src="../../public/photo/About/Atop.gif" alt="">
    </div>
    <div>
      <p>上海元祖梦果子股份有限公司1981年成立于台湾，1993年第一块鲜亮醒目的 “元祖红” 招牌在上海竖起。至今元祖食品以上海为基地，先后在中国大陆的上海、无锡、杭州、成都、武汉、青岛、长沙、重庆、广东、福建、大连等主要城市设立了十几家分公司。门店遍及台海两岸，力求以时效确保品质新鲜、服务贴心，从初创时期开始，随着产品的不断创新和门店的扩增，公司每年都在稳步成长。今天，这块元祖红招牌已遍布中国各大城市，并成为家喻户晓的 “精致礼品名家代言者”。</p>
    </div>
    <div class="a_detail">
      <ul>
        <li>1980年创立于台湾万华（如意堂果业本铺）元祖麻糬正式生产</li>
        <li>1991年台湾第四十家门店，准备国际化</li>
        <li>1993年进入中国大市场，成立上海元祖食品有限公司</li>
        <li>1994年浙江分公司成立，经营浙江市场</li>
        <li>1995年江苏分公司成立，经营江苏，安徽市场</li>
        <li>1997年四川分公司成立，经营四川，贵州，广西市场</li>
        <li>2003年湖北分公司成立，经营湖北，江西市场</li>
        <li>2005年山东分公司成立，经营山东市场</li>
        <li>2006年湖南分公司成立，经营湖南市场</li>
        <li>2008年广东分公司成立，经营广东市场</li>
        <li>2011年荣获上海著名商标</li>
        <li>2012年福建分公司成立，经营福建市场</li>
        <li>2013年北京分公司成立，经营北京天津市场</li>
      </ul>
    </div>
    <div class="about_center">
      <h1>让人与人之间的联结更紧密</h1>
      <h4>元祖品牌统一形象，全国连锁通路， 带给消费者五星级服务。</h4>
      <img src="../../public/photo/About/Acenter.gif" alt="">
      <h4>优美典雅的店内设计，优质的服务，让你享有快乐购物的尊贵感受</h4>
      <img src="../../public/photo/About/Abottom.gif" alt="">
    </div>
    <div class="about_phone">
      <ul>
        <li>全国客服热线：400-110-3737（服务时间：8:00-21:00）</li>
        <li>客户体验反馈邮箱地址：khty@ganso.net</li>
        <li>元祖总部：021-59755678</li>
        <li>全国团购业务合作：021-59755678-6668</li>
        <li>区域企业团购业务：上海元祖:021-59755678</li>
        <li>江苏元祖：0510-82105768-8181</li>
        <li>浙江元祖：0571-88881111</li>
        <li>四川元祖：028-82005757</li>
        <li>湖北元祖：027-86733092</li>
        <li>河南元祖：0371-87091177</li>
      </ul>
      <ul>
        <li>江西元祖：0791-86271917</li>
        <li>福建元祖：0591-22850890</li>
        <li>山东元祖：0532-83656217</li>
        <li>湖南元祖：0731-84069037</li>
        <li>辽宁元祖：0411-83776156</li>
        <li>广东元祖：020-34368119</li>
        <li>北京元祖：010-52077388</li>
        <li>河北元祖：0311-85267925</li>
        <li>广西元祖：0771-2836901</li>
        <li>台湾元祖：886-2-2508-4090</li>
      </ul>
    </div>
    <Footer></Footer>
    <Sidebar></Sidebar>
  </div>
</template>

<script>
import Footer from './Footer.vue';
import Header from './Header.vue';
import Sidebar from './Sidebar.vue';
export default {
  components:{Footer,Header,Sidebar},
}
</script>

<style scoped>
  .about{
    width:1200px;
    margin:0 auto;
  }
  .about>div:nth-child(2){
    width:100%;
    height:45px;
    line-height: 45px;
  }
  .about>div:nth-child(2)>a{
    text-decoration: none;
    color:#4f4f4f;
    padding-left: 10px;
  }
  .about>div:nth-child(3){
    width:1200px;
    height:410px;
  }
  .about>div:nth-child(3)>img{
    width:100%;
    height:100%;
  }
  .about>div:nth-child(4)>p{
    font-size: 18px;
    line-height:40px;
    padding:10px 20px;
  }
  .a_detail{
    width:100%;
    /* height:450px; */
    text-align: center;
  }
  .a_detail>ul{
    display: inline-block;
    width:530px;
    height:100%;
    border-bottom:1px dashed #ccc; 
  }
  .a_detail li{
    height: 40px;
    line-height: 30px;
    color: #6b6b6b;
    text-align: left;
  }
  /* *** */
  .about_center{
    width:100%;
    text-align: center;
    margin-top: 20px;
  }
  .about_center>h1{
    width:550px;
    line-height: 60px;
    margin-left: 325px;
    font-size: 42px;
    font-family: 宋体;
    font-weight: bold;
    color: rgb(170, 0, 1);
    border-bottom:1px solid #ccc;
  }
  .about_center>h4{
    color: #6b6b6b;
    /* line-height: 36px; */
    font-size: 24px;
  }
  /* ** */
  .about_phone{
    display: flex;
    padding:50px  50px 40px 150px;
  }
  .about_phone>ul:first-child{
    width:600px;
  }
  .about_phone>ul:last-child{
    width:400px;
    margin-left:50px;
  }
  .about_phone li{
    color: #6b6b6b;
    font-size: 18px;
    height: 44px;
    line-height: 44px;
    list-style: none;
  }
</style>