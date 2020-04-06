<template>
  <div class="delivery">
    <Header></Header>
    <div>
      <a href="javascript:;">主页</a>&nbsp;&gt;<a href="javascript:;">售后服务</a>
    </div>
    <div class="de_top">
      <div class="de_top_left">
        <img src="../../public/photo/Delivery/De_left.gif" alt="">
      </div>
      <div class="de_top_right">
        <img src="../../public/photo/Delivery/De_right.gif" alt="">
        <h2>「售后服务热线」400-110-3737</h2>
        <p>
（节假日不休,早晨8:00-晚上9:00）
「售后电子邮箱」services@ganso.net</p>
        <h2>「投诉处理流程」</h2>
        <p>我公司客服人员将在第一时间接电或回电给您以了解实际情况。 您需要将有问题的产品拍照、建议顾客保留有问题的实物。
我公司的客服人员将会向您收集一些关于问题产品的资料,可能会要求您
通过微信、QQ等方式上传资料给我司客服人员，带来不便，敬请谅解！
      查明属实，我司将对您做出妥善的处理。</p>
        <h2>「元祖承诺」</h2>
        <p>    1.订单满100元距离门店7公里免费宅配服务送货上门，支持官网网银
和支付宝付款；微商城微信支付等。</p>
        <p>2.依照您的要求，我们将按时、保质的把产品送到您指定的地点</p>
      </div>
    </div>
    <div class="de_bottom">
      <h2>「快递类商品」</h2>
      <p>当您收到的快递商品如有运输过程中损坏，严重变形，我们会为您进行最快的退换货处理。</p>
      <h2>「门店宅配商品」</h2>
      <p>当你收到门店配送的商品如蛋糕，出现坍塌或者严重变形，我们会为进行换货处理。</p>
      <h2>「快递商品退换」</h2>
      <p>如发生了快递商品在运输途中损坏，或因温度导致的品质问题，您需要把问题商品回寄给→发货单位并将物品拍照→发送给我们的客服人员，问题
属实，我们将会以最快的速度为您退换货。</p>
      <h2>「门店宅配商品退换」</h2>
      <p>如收到的蛋糕商品出现了严重表面的坍塌等装况，您需要把问题商品进行拍照，问题属实，我们将会为您进行重新制作配送到您的府上，问题商品
请顾客自行处理。</p>
      <h2>「节令商品退换」</h2>
      <p>当端午、中秋等高峰季节，如果您在我们的官方网站订购了礼盒类商品或者中秋月饼礼盒，出现暂时性缺货或漏发货的状况时，我们会为您以最快
速的重新配货快递到你的手上。</p>
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
  .delivery{
    width:1200px;
    margin:0 auto;
  }
  .delivery>div:nth-child(2){
    width:100%;
    height:45px;
    line-height: 45px;
  }
  .delivery>div:nth-child(2)>a{
    text-decoration: none;
    color:#4f4f4f;
    padding-left: 10px;
  }
  /* ****left */
  .de_top{
    width:100%;
    height:960px;
    display: flex;
  }
  .de_top_left{
    width:639px;
    height:100%;
  }
  .de_top_left>img{
    width:100%;
    height:100%;
  }
  /* right */
  .de_top_right{
    width:555px;
    height:100%;
    margin-left: 6px;
    padding-left: 20px;
  }
  .de_top_right>img{
    margin-left: 50px;
  }
  .de_top_right>h2,.de_bottom>h2{
    font-size: 26px;
    color: #333;
    line-height: 56px;
    font-weight: normal;
  }
  .de_top_right>p,.de_bottom>p{
    font-size: 16px;
    line-height: 40px;
    color: #6b6b6b;
    text-indent: 1em;
  }
  /* 下 */
  .de_bottom{
    width:100%;
    padding-left:20px;
  }
</style>