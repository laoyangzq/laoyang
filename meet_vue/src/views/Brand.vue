<template>
  <div class="brand">
    <Header></Header>
    <div class="top">主页&nbsp;&gt;&nbsp;品牌故事</div>
    <div class="top-i">
      <img src="../../public/photo/Brand/solagen_r1_c2.gif" alt="">
    </div>
    <div class="brand-top">
      <img src="../../public/photo/Brand/brand.png" alt="">
      <p>元祖食品· 1981年创立于台湾地区</p>
      <img src="../../public/photo/Brand/solagen_r5_c6.gif" alt="">
      <p>1981年创始于台湾，1993年第一块鲜亮醒目的"元祖红"招牌在上海竖起。至今元祖门店遍及台湾两岸，力求以时效确保品质新鲜、服务贴心；随着产品不断创新和门店的扩增，公司每年都在稳步成长。今天这块元祖红招牌已遍布中国各大城市，并成为家喻户晓的"精致礼品名家"。</p>
    </div>
    <div class="brand-top">
      <p><img src="../../public/photo/Brand/brand.png" alt=""></p>
      <img src="../../public/photo/Brand/solagen_r7_c5.gif" alt="">
    </div>
    <div class="brand-middle">
      <div><img src="../../public/photo/Brand/solagen_r5_c4 (1).gif">
        <div>
            <h2>讲究饮食文化·坚持食品品质</h2>
            <p>新鲜让美味加分，为了喜爱元祖食品的消费者能享用到新鲜的产品，元祖不辞繁琐工序，坚持各门店现场裱花，确保美味与新鲜传递到消费者手里</p>
        </div>
      </div>
      <div>
        <h2>演绎民俗.创新传统</h2>
        <p>元祖Much蛋糕、春节八宝年糕、清明麻糬、端午元祖龙粽、绿豆糕、中秋元祖雪月饼……元祖根据不同节令，推出相应的礼盒与商品。</p>
        <img src="../../public/photo/Brand/solagen_r7_c3.gif" alt="">
      </div>
    </div>
    <div class="brand-bottom">
      <img src="../../public/photo/Brand/brand.png" alt="">
      <img src="../../public/photo/Brand/solagen_r9_c1.gif" alt="">
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
  .brand{
    width:1200px;
    margin:0 auto;
  }
  .top{
    margin-top:5px;
    padding-left: 15px;
    font-size: 16px;
  }
  .top-i{
    text-align: center;
    margin-top:10px;
  }
  /* *********** */
  .brand-top{
    width:1160;
    height:400px;
    text-align: center;
    margin-top: 10px;
    padding:10px 20px;
  }
  .brand-top>img:first-child{
    margin-top:20px;
  }
  .brand-top>p:nth-child(2){
    margin-bottom:0;
  }
  .brand-top>p:nth-child(4){
    margin-top:40px;
    text-align: left;
    font-size: 18px;
    color:#999;
  }
  /* ******** */
  .brand-middle{
    width: 910px;
    height: 608px;
    margin: 30px auto;
    overflow: hidden;
  }
  .brand-middle>div:first-child{
    width:850px;
    height:252px;
    display: flex;
  }
  .brand-middle>div:first-child>img{
    width:386px;
    height:100%;
  }
  .brand-middle>div:first-child>div>h2{
    padding-left:20px;
  }
  .brand-middle>div:first-child>div>p{
    margin:40px 20px 20px 20px;
  }
  .brand-middle>div:nth-child(2)>h2,.brand-middle>div:nth-child(2)>p{
    margin:25px 30px;
  }
  /* ********* */
  .brand-bottom{
    text-align: center;
  }
  .brand-bottom>img:nth-child(2){
    margin:20px 0;
  }
</style>