<template>
  <div class="details">
    <Header></Header>
    <div class="detail">
      <div class="detail_left">
        <img :src="'http://yuanzu.applinzi.com/'+this.pic">
        <div class="detail-left">
          <img src="../../public/photo/100000223_M.jpg" alt="">
          <img src="../../public/photo/100000234_M.jpg" alt="">
          <img src="../../public/photo/100000235_M.jpg" alt="">
          <img src="../../public/photo/190210.jpg" alt="">
        </div>
      </div>
      <div class="detail-right">
        <h1>{{title}}</h1>
        <p>{{stitle}}</p>
        <div>优惠价：<span>￥{{price}}</span></div>
        <div>规格：{{spec}}</div>
        <div class="count">
          <span>数量：</span>
          <div>
            <span @click="cartSub()">－</span>
            <input type="text" :value="count">
            <span @click='cartAdd()'>＋</span>
          </div>
        </div>
        <button class="btn1" @click="addCart">加入购物车</button>  
        <button class="btn2" @click="shopping">立即购买</button>
        <div class="d-bottom">服务承诺：√精选食材&nbsp;√品质保证&nbsp;√五星服务&nbsp;√贴心宅配</div>
        <span class="uid">商品编号：<p>{{icd}}</p></span>
      </div>
    </div>
    <div class="detail-bottom">
      <div>
        <a href="">商品介绍</a>
        <a href="">商品评价</a>
      </div>
      <img src="../../public/photo/100001174_M.jpg" alt="">
      <img src="../../public/photo/100001205_M.jpg" alt="">
      <img src="../../public/photo/100001428_M.jpg" alt="">
      <img src="../../public/photo/100000344_M.jpg" alt="">
      <img src="../../public/photo/100000805_M.jpg" alt="">
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
  created() {
    this.loadDetail();
    // this.load();
  },
  data(){
        return {
            list:null,
            icd:null,
            price:0,
            title:null,
            stitle:null,
            price:null,
            spec:null,
            count:1,
            pic:'',
            clist:[]
        }
    },
  methods:{
    loadDetail(){
      var id =this.$route.query.id;
      // console.log(id)
      var url = "jumpdetail";
      var obj = {id};
      // console.log(obj)
      this.axios.get(url,{params:obj})
      .then(res=>{
          this.list = res.data.data;
          this.price = this.list.price.toFixed(2);
          this.title = this.list.title;
          this.stitle = this.list.stitle;
          this.spec = this.list.spec;
          this.icd = this.list.icd;
          console.log(this.icd)
          this.pic = this.list.pic;
          console.log(this.pic)
      })
    },
    // load(){
    //   var icd =this.$route.query.icd;
    //   // console.log(icd)
    //   var price='';
    //   var url = "godetail";
    //   var obj = {icd};
    //   // console.log(obj)
    //   this.axios.get(url,{params:obj})
    //   .then(res=>{
    //       this.list = res.data.data;
    //       this.price = this.list.price.toFixed(2);
    //       this.title = this.list.title;
    //       this.stitle = this.list.stitle;
    //       this.spec = this.list.spec;
    //       this.icd = this.list.icd;
    //       console.log(this.icd)
    //       this.pic = this.list.pic;
    //       console.log(this.pic)
    //   })
    // },
    shopping(){
      alert('此功能暂未开放，敬请期待')
    },
    // 添加购物车
    addCart(){
      var icd=this.icd;
      var title=this.title;
      var stitle=this.stitle;
      var price=this.price;
      var count=this.count;
      var pic=this.pic;
      var spec=this.spec;
      // console.log(icd)
      // console.log(pic);
      var url="addcart";  
      var obj={icd,title,stitle,spec,price,pic,count}
      this.axios.get(url,{params:obj})
      .then(result=>{
        // console.log(result.data);
        if(result.data.code==-2){
          alert("请登录");
          this.$router.push('/');
        }else{
          alert('添加成功');
        }
      })
    },
    cartSub(){  //数量减少
      if(this.count>1){
        this.count--;
      }else{
        alert("亲，商品数量不能为0哟！")
      }
    },
    cartAdd(){  //数量增加
      if(this.count<50){
        this.count++;
      }else{
        alert("亲，商品数量不能超过50哟！")
      }
    },
  }
}

</script>

<style scoped>
   *{margin:0;padding:0;}
   .details{
     width:1200px;
     margin:0 auto;
   }
   .detail{
     width:100%;
     height:570px;
     display: flex;
     margin-bottom: 16px;
     padding-top: 17px;
     background-color: #f9f9f9;
   }
   .detail>div:first-child{
     width:477px;
     height:544px;
     margin-left: 17px;
     padding-bottom: 24px;
   }
   .detail>div:first-child>img{
     width:450px;
     height:450px;
     float: left;
   }
   .detail .detail-left{
     height:560px;
   }
   .detail .detail-left>img{
     width:70px;
     height:70px;
     margin:10px;
   }
   .detail .detail-left>img:first-child{
     margin-left: 40px;
   }
   /* **右边详情**** */
   .detail-right{
     padding-left: 10px;
   }
   .detail-right>h1{
     font-size: 28px;
     margin-top:10px;
   }
   .detail-right>p{
     font-size: 20px;
     color: #8e8e8e;
     margin-top:10px;
   }
   .detail-right>div{
     font-size: 20px;
     margin-top:20px;
     color:#8e8e8e;
   }
   .detail-right>div:nth-child(3)>span{
     color:#f00;
     font-weight: 900;
     font-size: 25px;
   }
   .detail-right>div:nth-child(4)>span{
     display:inline-block;
     width:60px;
     height:30px;
     text-align: center;
     vertical-align: middle;
     border:1px solid #8e8e8e;
     margin-left: 20px;
   }
   .detail-right>.count{
     display: flex;
     position:relative;
     margin-top: 20px;
     font-size: 23px;
   }
   .detail-right>.count>div>span{
     font-size: 25px;
   }
   .detail-right>.count>div>span:nth-child(3){
     position:absolute;
     left:140px;
   }
   .detail-right>.count>div>span,.detail-right>.count>div>span:nth-child(3):hover{
     cursor: pointer;
   }
   .detail-right>.count input{
     width:40px;
     height:25px;
     text-align: center;
     position:absolute;
     top:2px;
   }
   .detail-right>.btn1,.detail-right>.btn2{
     display: block;
     width:160px;
     height:50px;
     border-radius: 15px;
     font-size: 20px;
     border:1px solid #f00;
     margin-top:20px;
   }
   .detail-right>.btn1{
     background:#faa;
     color: #f00;
   }
   .detail-right>.btn2{
     width:220px;
     background:#e4004f;
     color:#fff;
   }
   .detail-right>.d-bottom{
     width:600px;
     height:50px;
     font-size: 23px;
     line-height: 50px;
     background: #f7f3e8;
     padding:0 10px 0 10px;
     margin-top: 40px;
   }
   .detail-right>.uid{
     display: flex;
     margin-top: 20px;
     font-size: 18px;
     color: #8e8e8e;
   }
   .detail-right>.uid>p{
     padding-top: 3px;
   }
   /* ***详情介绍******** */
   .detail-bottom>div{
     width:100%;
     height:40px;
     background:#999999;
   }
   .detail-bottom>div>a{
     display:inline-block;
     width:100px;
     height:100%;
     line-height: 40px;
     text-align: center;
     text-decoration: none;
     color:#fff;
   }
   .detail-bottom>img{
     width:1100px;
     height:500px;
     padding:20px 50px;
     margin-bottom: 20px;
   }
   .detail-bottom>img:hover{
     border-radius: 50%;
   }
   /* 放大镜效果 */

</style>