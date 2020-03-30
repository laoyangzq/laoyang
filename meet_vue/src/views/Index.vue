<template>
  <div class="index">
    <Header></Header>
    <!-- ******轮播****** -->
    <div class="Wheel-planting">
      <el-carousel height="450px" trigger="click" :interval="1500">
        <el-carousel-item class="item" v-for="(item,i) of list" :key="i">
          <img :src="`http://127.0.0.1:4000/${item.pic}`">
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- *******3F分类****** -->
    <div class="list">
      <div class="list-left">
        <ul>
          <li>元祖新品
            <ul class="list-left-ul">
                <li><router-link to="/Detail">
                  <img src="../../public/photo/272300.jpg" alt="">
                  <p>8号心有所属鲜奶蛋糕</p>
                  <p>￥<em>258.00</em></p>
                </router-link></li>
                <li><a href="">
                  <img src="../../public/photo/3a36550268538fdff7a12018f09455c.jpg" alt="">
                  <p>8号春梅吉祥慕斯蛋糕</p>
                  <p>￥<em>298.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000732_M.jpg" alt="">
                  <p>8号招财纳福鲜奶蛋糕</p>
                  <p>￥<em>258.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100001392_M.jpg" alt="">
                  <p>青蛙来了鲜奶蛋糕</p>
                  <p>￥<em>258.00</em></p>
                </a></li>
              </ul>
          </li>
          <li>热销商品
            <ul  class="list-left-ul">
                <li><a href="">
                  <img src="../../public/photo/100001428_M.jpg" alt="">
                  <p>春节年味礼盒</p>
                  <p>￥<em>258.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000805_M.jpg" alt="">
                  <p>元祖招财进宝礼盒</p>
                  <p>￥<em>268.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000962_M.jpg" alt="">
                  <p>新村铭礼礼盒</p>
                  <p>￥<em>308.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100001173_M.jpg" alt="">
                  <p>元祖祥瑞礼盒</p>
                  <p>￥<em>180.00</em></p>
                </a></li>
              </ul>
          </li>
          <li>节庆民俗
            <ul class="list-left-ul">
                <li><a href="">
                  <img src="../../public/photo/100000234_M.jpg" alt="">
                  <p>元祖旺来凤梨酥</p>
                  <p>￥<em>128.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000235_M.jpg" alt="">
                  <p>坚果礼盒</p>
                  <p>￥<em>120.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000258_M.jpg" alt="">
                  <p>幸福结果子礼盒</p>
                  <p>￥<em>60.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/100000309_M.jpg" alt="">
                  <p>绿豆糕礼盒</p>
                  <p>￥<em>100.00</em></p>
                </a></li>
              </ul>
          </li>
          <li>元祖卡劵
              <ul class="list-left-ul">
                <li><a href="">
                  <img src="../../public/photo/600000355_M.jpg" alt="">
                  <p>100型心意卡</p>
                  <p>￥<em>100.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/600000357_M.jpg" alt="">
                  <p>200型心意卡</p>
                  <p>￥<em>200.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/600000358_M.jpg" alt="">
                  <p>元祖300型心意卡</p>
                  <p>￥<em>300.00</em></p>
                </a></li>
                <li><a href="">
                  <img src="../../public/photo/600000404_M.jpg" alt="">
                  <p>元祖500型心意卡</p>
                  <p>￥<em>500.00</em></p>
                </a></li>
              </ul>
          </li>
        </ul>
      </div>
      <div class="list-right">
        <img src="../../public/photo/272300.jpg" alt="">
      </div>
    </div>
    <!-- *****4F***** -->
    <div class="f4">
      <div class="f4-top">
        <h3>梦蛋糕</h3>
        <ul>
          <li v-for="(item,i) of clist" :key="i"><router-link :to="{path:'./List'}">{{item.cname}}</router-link>&nbsp;丨</li>
        </ul>
      </div>
      <div class="f4-bottom">
        <img src="../../public/photo/100000309_M.jpg" alt="">
        <ul class="f4-bottom-right">
          <li><router-link :to="{path:'./Detail'}">
            <img src="../../public/photo/100000732_M.jpg" alt="">
            <p>朝雨鲜奶蛋糕</p>
            <p>寓意良辰美景，幸福时刻</p>
            <p>￥198.00</p>
          </router-link></li>
          <li><a href="">
            <img src="../../public/photo/100000324_M.jpg" alt="">
            <p>朝纤云农桥鲜奶蛋糕</p>
            <p>带给你浓郁的蓝莓风味</p>
            <p>￥198.00</p>
          </a></li>
          <li><a href="">
            <img src="../../public/photo/100000234_M.jpg" alt="">
            <p>以花为名鲜奶蛋糕</p>
            <p> 让“世界上第一个挺你的妈妈”，成为幸福的妈妈</p>
            <p>￥258.00</p>
          </a></li>
        </ul>
      </div>
    </div>
    <div class="f4">
      <div class="f4-top">
        <h3>元祖礼盒</h3>
        <ul>
          <li v-for="(item,i) of clist" :key="i"><router-link :to="{path:'./List'}">{{item.cname}}</router-link>&nbsp;丨</li>
        </ul>
      </div>
      <div class="f4-bottom">
        <img src="../../public/photo/100000309_M.jpg" alt="">
        <ul class="f4-bottom-right">
          <li><a href="">
            <img src="../../public/photo/100000732_M.jpg" alt="">
            <p>朝雨鲜奶蛋糕</p>
            <p>寓意良辰美景，幸福时刻</p>
            <p>￥198.00</p>
          </a></li>
          <li><a href="">
            <img src="../../public/photo/100000324_M.jpg" alt="">
            <p>朝纤云农桥鲜奶蛋糕</p>
            <p>带给你浓郁的蓝莓风味</p>
            <p>￥198.00</p>
          </a></li>
          <li><a href="">
            <img src="../../public/photo/100000234_M.jpg" alt="">
            <p>以花为名鲜奶蛋糕</p>
            <p> 让“世界上第一个挺你的妈妈”，成为幸福的妈妈</p>
            <p>￥258.00</p>
          </a></li>
        </ul>
      </div>
    </div>
    <div class="f4">
      <div class="f4-top">
        <h3>精致西点</h3>
        <ul>
          <li v-for="(item,i) of clist" :key="i"><router-link :to="{path:'./List'}">{{item.cname}}</router-link>&nbsp;丨</li>
        </ul>
      </div>
      <div class="f4-bottom">
        <img src="../../public/photo/100000309_M.jpg" alt="">
        <ul class="f4-bottom-right">
          <li><a href="">
            <img src="../../public/photo/100000732_M.jpg" alt="">
            <p>朝雨鲜奶蛋糕</p>
            <p>寓意良辰美景，幸福时刻</p>
            <p>￥198.00</p>
          </a></li>
          <li><a href="">
            <img src="../../public/photo/100000324_M.jpg" alt="">
            <p>朝纤云农桥鲜奶蛋糕</p>
            <p>带给你浓郁的蓝莓风味</p>
            <p>￥198.00</p>
          </a></li>
          <li><a href="">
            <img src="../../public/photo/100000234_M.jpg" alt="">
            <p>以花为名鲜奶蛋糕</p>
            <p> 让“世界上第一个挺你的妈妈”，成为幸福的妈妈</p>
            <p>￥258.00</p>
          </a></li>
        </ul>
      </div>
    </div>
    <div class="bottom">
      <h3>精选活动</h3>
      <div>
        <a href=""><img src="../../public/photo/100000235_M.jpg" alt=""></a>
        <a href=""><img src="../../public/photo/100001173_M.jpg" alt=""></a>
        <a href=""><img src="../../public/photo/100001174_M.jpg" alt=""></a>
      </div>
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
  data(){
      return {
          list:[],
          clist:[],
      }
  },
  created(){
        this.loadMore();
        this.class();
  },
  methods:{
    loadMore(){
      var url = "banner";
      var obj={uid:this.uid};
      this.axios.get(url,{params:obj})
      .then(result=>{
          this.list=result.data.data;
          // console.log(this.list)
      })
    },
    class(){
      var url = "class";
      this.axios.get(url)
      .then(result=>{
          this.clist=result.data.data;
          // console.log(this.clist)
      })
    },
  }
}
</script>

<style scoped>
  *{margin:0;padding:0;}
  body{
    background-color: #f00;
  }
  .index{
      width:1200px;
      margin:0 auto;
  }
  a{
    text-decoration:none;
    color:black;
  }
  /* *********轮播************* */
  .Wheel-planting{
    width:100%;
    height:450px;
  }
  /* .Wheel-planting>el-carousel{
    width:100%;
    height:438px;
  }*/
  .item{
    width:100%;
    height:450px;
  } 
  .item>img{
    width:100%;
    height:450px;
  }
  /* *****3F分类********** */
  .list{
    width:100%;
    height:332px;
    display: flex;
    background: #f9f9f9;
  }
  .list>.list-left{
    width:908px;
    height:332px;
    position:relative;
  }
  .list>.list-right{
    width:292px;
    height:332px;
  }
  .list-left>ul{
    width:908px;
    height:57px;
  }
  .list-left>ul>li{
    list-style: none;
    width:227px;
    height:30px;
    float: left;
    border-bottom: 3px solid #000000;
    margin-bottom:10px;
    z-index:30;
    font-size: 20px;
    text-align: center;
    margin-top: 10px;
  }
  .list-left>ul>li:hover{
    border-bottom: 3px solid #f00;
    color:#f00;
  }
  /* //// */
  /* .list-left>ul>li:first-child>ul, */
  .list-left>ul>li:nth-child(2)>ul,.list-left>ul>li:nth-child(3)>ul,.list-left>ul>li:nth-child(4)>ul{
    opacity:0;
    transition:all .5s linear;
    display: none;
  }
  /* .list-left>ul>li:first-child:hover>ul, */
  .list-left>ul>li:nth-child(2):hover>ul,.list-left>ul>li:nth-child(3):hover>ul,.list-left>ul>li:nth-child(4):hover>ul{
    opacity:1;
    display: block;
    clear: both;
  }
  /* ** */
  .list-left-ul{
    width: 908px;
    height:264px;
    display: flex;
    position:absolute;
    left:0;
    margin-top:8px;
    z-index:90;
  }
  .list-left-ul>li{
    width:200px;
    height:250px;
    padding:10px 10px 0 0;
    float: left;
    list-style: none;
    margin-left:15px;
    background:white;
  }
  .list-left-ul>li:hover{
    box-shadow: 0 0 10px #f00;
  }
  .list-left-ul img{
    width:185px;
    height:185px;
    margin-left: 13px;
  }
  .list-left-ul p{
    text-align: center;
    font-size: 18px;
  }
  .list-left-ul em{
    font-weight: 600;
  }
  .list-left-ul p:nth-child(3){
    text-align: center;
    color:#f00;
    margin-top:5px;
    margin-bottom:10px;
  }
  .list-right>img{
    width:90%;
    height:90%;
    padding:20px 0 0 30px;
  }
  /* **********4F************ */
  .f4{
    width:100%;
    height:407px;
    position: relative;
    margin: 0px auto 10px auto;
    padding-bottom: 15px;
    background: #f9f9f9;
  }
  .f4-top{
    width:100%;
    height:38px;
    display: flex;
    justify-content: space-between;
    line-height: 38px;
    border-bottom: 2px solid #e4004f;
  }
  .f4-top li{
    float: left;
    list-style: none;
    margin:0 5px 0 5px;
  }
  .f4-top a{
    color:#999;
  }
  .f4-top a:hover{
    color:#e4004f;
  }
  .f4-bottom{
    width:100%;
    height:368px;
    display: flex;
  }
  .f4-bottom>img{
    width:317px;
    height:367px;
    margin-left: 20px;
  }
  .f4-bottom>img:hover{
    cursor: pointer;
    box-shadow: 0 0 10px #f00;
    border-radius:25px;
  }
  .f4-bottom-right{
    margin-left: 5px;
  }
  .f4-bottom-right>li{
    width:260px;
    height:318px;
    float: left;
    list-style: none;
    padding: 50px 13px 0;
  }
  .f4-bottom-right>li:hover{
    transform: scale(1.1);
    background:white;
  }
  .f4-bottom-right img{
    width: 180px;
    height: 180px;
    margin: 20px auto 10px auto;
    display: block;
  }
  .f4-bottom-right p{
    text-align: center;
    margin-top:10px;
  }
  .f4-bottom-right p:nth-child(2),.f4-bottom-right p:nth-child(3){
    width:100%;
    height:22px;
    overflow: hidden;
  }
  .f4-bottom-right p:nth-child(4){
    color:#f00;
  }
  /* ****精选活动 */
  .bottom>h3{
    height:40px;
    line-height: 40px;
    margin-bottom: 15px;
    padding-left: 19px;
    border: none;
    background: #f9f9f9;
  }
  .bottom>div{
    display: flex;
  }
  .bottom a{
    display: block;
    width:375px;
    height:200px;
    margin:0 12px 0 12px;
  }
  .bottom img{
    width: 100%;
    height:100%;
  }
  .bottom img:hover{
    border-radius: 50%;
  }
</style>