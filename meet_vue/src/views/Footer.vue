<template>
  <div>
    <div class="footer">
      <ul>
        <li><a href="javascript:;">购物指南</a></li>
        <li><a href="javascript:;">订购流程</a></li>
        <li><a href="javascript:;">订购方式</a></li>
        <li><router-link to="./Delivery">元祖服务</router-link></li>
        <li><router-link to="./Brand">关于我们</router-link></li>
        <li><router-link to="./About">联系我们</router-link></li>
      </ul>
      <p>版权所有 @ 2019 老杨元蛋糕股份有限公司 渝ICP备17043737号 
        <a href="javascript:;">
          <img src="../../public/photo/organ.png" alt=""> 渝公网安备案 31011885001203号</a>
      </p>
      <p><img src="../../public/photo/5 (1).jpg" alt=""></p>
    </div>
  </div>
</template>

<script>
export default {
  
}
</script>

<style scoped>
   
  /* *******版权******* */
  .footer{
    width:1200px;
    height:200px;
    border-top:8px solid #f00;
    text-align: center;
    margin:50px auto;
  }
  .footer>ul{
    width:650px;
    height:40px;
    line-height: 40px;
    margin-top:70px;
    text-align: center;
    margin-left: 280px;
  }
  .footer li{
    float: left;
    list-style: none;
    font-size: 20px;
  }
  .footer a{
    color:#999;
    text-decoration: none;
    margin:0 5px;
  }
  .footer>p{
    height:30px;
    text-align: center;
    margin-top: 8px;
  }
</style>