<template>
  <div class="list">
    <Header></Header>
    <div>
      <a href="">主页</a>&nbsp;&gt;<a href="">巧克力蛋糕</a>
    </div>
    <div>
      <img src="../../public/photo/List/Ltitle.jpg" alt="">
    </div>
    <h1>您搜索的是&nbsp;"巧克力蛋糕"</h1>
    <div class="list_commodity">
      <div>
        <a href="">综合排序</a>
        <span>价格
          <div>
            <a href="">由高到低</a>
            <a href="">由低到高</a>
          </div>  
        </span>        
        <span>共<em>{{getCount()}}</em>个商品</span>
      </div>
      <div class="list_content"  v-for="(item,i) of list" :key="i">
        <router-link :to="'/Detail?id='+item.id">
          <img :src="'http://yuanzu.applinzi.com/'+item.pic">
        </router-link>
        <div>
          <h5><a href="">{{item.title}}</a></h5>
          <p>{{item.stitle}}</p>
          <p>规格：{{item.spec}}</p>
        </div>
        <p>¥<em>{{item.price}}</em></p>
        <a href="#" @click="shopping">立即购买</a>
      </div>
      <div @click="loadMore" class="load">加载更多</div>
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
  created(){
        this.loadMore();
  },
  data(){
      return {
          list:[],
          pno:0//显示当前页码
      }
  },
  methods:{
      loadMore(){
          this.pno++;
          var url = "list";
          var obj = {pno:this.pno};
          this.axios.get(url,{params:obj}).then(res=>{
              var rows = this.list.concat(res.data.data);
              this.list = rows;
          })
      },
      deta(){
        this.$router.push('/Detail?id='+item.id);
      },
      shopping(){
        alert('此功能暂未开放，敬请期待')
      },
      getCount(){ //计算总数
      var count=0;
      var rows=this.list;
      // console.log(rows)
      for(var i=0;i<rows.length;i++){
        // console.log(rows[i]);
        if(this.list[i]){
          count+=this.list[i].sum;
        }
        // console.log(count);
      }
      return count;
    },
  }
}
</script>
<style scoped>
  .list{
    width:1200px;
    margin:0 auto;
  }
  .list>div:nth-child(2){
    width:100%;
    height:45px;
    line-height: 45px;
  }
  .list>div:nth-child(2)>a{
    text-decoration: none;
    color:#4f4f4f;
    padding-left: 10px;
  }
  .list>div:nth-child(3){
    width:100%;
    height:220px;
  }
  .list>div:nth-child(3)>img{
    width:100%;
    height:100%;
  }
  h1{
    font-size: 28px;
    padding-left:10px;
    font-weight: 500;
  }
  /* ***** */
  .list_commodity>div:first-child{
    width:100%;
    height:41px;
    line-height: 41px;
    position: relative;
    border: 1px solid #e5e5e5;
    background:#f5f5f5;
  }
  .list_commodity>div:first-child>a{
    display: inline-block;
    width:114px;
    height:100%;
    text-align: center;
    text-decoration: none;
    color:#fff;
    background:#e4004f;
    font-size: 20px;
    position:absolute;
  }
  .list_commodity>div:first-child>span:nth-child(2){
    display: inline-block;
    width:91px;
    height:41px;
    text-align: center;
    font-size: 20px;
    border-right: 1px solid #e5e5e5;
    background-image: url("../../public/photo/List/Lbottom.png" );
    background-repeat: no-repeat;
    background-position: center right;
    position:absolute;
    left:114px;
  }
  .list_commodity>div:first-child>span:nth-child(2):hover{
    color:#fff;
    background:#e4004f;
  }
  .list_commodity>div:first-child>span:nth-child(3){
    position:absolute;
    left:800px;
  }
  .list_commodity>div:first-child>span:nth-child(3)>em{
    color:#f00;
    font-weight: 800;
    margin:0 5px;
  }
  .list_commodity>div:first-child>span:nth-child(2)>div{
    top:55px;
    opacity:0;
    transition:all .5s linear;
    background:#fff;
  }
  .list_commodity>div:first-child>span:nth-child(2):hover>div{
    top:35px;
    opacity:1;
    display: block;
    padding-left: 0;
  } 
  .list_commodity>div:first-child>span:nth-child(2)>div>a{
    display: inline-block;
    text-decoration: none;
    font-size: 16px;
    color:rgb(20, 9, 9);
  }
  /* ***详情****** */
  .list_content{
    width:100%;
    height:150px;
    padding:20px 0;
    display:flex;
    background: white;
    border-bottom: 1px solid #e5e5e5;
  }
  .list_content>a:first-child{
    display: inline-block;
    width:150px;
    height:150px;
    margin:0 50px 0 20px;
  }
  .list_content>a>img{
    width:100%;
    height:100%;
  }
  .list_content>div{
    width:450px;
    height:135px;
    padding:15px 80px 0 0;
  }
  .list_content>div>h5{
    margin:0 0 5px 0;
  }
  .list_content>div>h5>a{
    text-decoration: none;
    color: #4f4f4f;
    font-size:17px;
  }
  .list_content>div>h5>a:hover{
    color:#e93d6d;
  }
  .list_content>div>p:nth-child(2){
    color: #3c3c3c;
    height: 38px;
    overflow: hidden;
    margin:7px 0 2px 0;
  }
  .list_content>div>p:nth-child(3){
    margin-bottom:0;
  }
  .list_content>p{
    width:180px;
    line-height: 150px;
    margin:0;
    font-size: 24px;
    font-weight: 700;
    color: #e93d6d;
  }
  .list_content>a:last-child{
    display: block;
    width:127px;
    height:45px;
    line-height: 45px;
    text-align: center;
    text-decoration: none;
    background: #e50150;
    color:#fff;
    margin:53px 0 0 40px;
  }
  .load{
    text-align: center;
    font-size: 20px;
    cursor: pointer;
  }
</style>