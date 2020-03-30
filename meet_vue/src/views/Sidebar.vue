<template>
  <div class="Sidebar">
    <div>
      <div @click="backtop">
        <p>TOP<a @click="showbtn">返回顶部</a></p>
        
      </div>
      <router-link to="./">首页</router-link>
      <router-link to="./Cart">购物车</router-link>
    </div>
  </div>
</template>

<script>
export default {
    mounted() {
       window.addEventListener("scroll",this.showbtn,true);
    },
    methods: {
        // 显示回到顶部按钮
       showbtn(){
          let that = this;
          let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
          that.scrollTop = scrollTop
       },
      backtop(){
          var timer = setInterval(function(){
            let osTop = document.documentElement.scrollTop || document.body.scrollTop;
            let ispeed = Math.floor(-osTop / 5); 
            document.documentElement.scrollTop = document.body.scrollTop = osTop + ispeed;
            this.isTop = true;
            if(osTop === 0){
              clearInterval(timer);
            }
          },30)
      }
    }
  
}
</script>

<style scoped>
  .Sidebar>div{
    position:fixed;
    width:40px;
    right:0;
    top:0;
    bottom:0;
    background-color: #444851;
    z-index:1000;
  }
  .Sidebar>div>div{
    width:40px;
    height:40px;
    position: fixed;
    position:relative;
    top:400px;
    text-align: center;
    line-height: 40px;
    font-size: 20px;
    font-weight: 700;
    color:white;
    background:#30343d;
  }
  .Sidebar>div>div>p{
    margin: 0;
  }
  .Sidebar>div>div>p:hover{
    background:#e4004f;
    cursor: pointer;
  }
  .Sidebar>div>div>p>a{
    width:120px;
    height:40px;
    opacity:0;
    transition:all .5s linear;
    color:white;
    background:#e4004f;
    position:absolute;
    right:40px;
    top:0px;
  }
  .Sidebar>div>div>p:hover>a{
    left:35px;
    opacity:1;
    display: block;
    padding-left: 0;
  }
  /* ***** */
  .Sidebar>div>a{
    position: absolute;
    width:40px;
    font-size: 22px;
    font-weight: 700;
    color:white;
    text-decoration: none;
    text-align: center;
    background:#30343d;
  }
  .Sidebar>div>a:nth-child(2){
    top:445px;
  }
  .Sidebar>div>a:nth-child(3){
    display: block;
    height:100px;
    top:510px;
    background-image: url("../../public/photo/Login/cart.png");
    background-position: center top;
    background-repeat: no-repeat;
    padding-top:32px;
  }
  .Sidebar>div>a:hover{
    background:#e4004f;
  }
</style>