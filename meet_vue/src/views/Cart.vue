<template>
  <div class="cart">
    <Header></Header>
    <div class="top">主页&nbsp;&gt;&nbsp;购物车</div>
    <div class="cart-ul">
      <ul>
        <li>1.购物车</li>
        <li>2.填写订单信息</li>
        <li>3.提交成功</li>
        <li>4.在线支付</li>
      </ul>
    </div>
    <div class="cart-detail">
      <div class="cart-d-top">
        <p>商品</p>
        <p>单价</p>
        <p>数量</p>
        <p>操作</p>
      </div>
      <div class="cart_top">
        <input type="checkbox" style="zoom:180%;" class="putt" v-model="alls" @change="selectAll" >
        <p>全选</p>
        <button @click="dels">删除选中商品</button>
      </div>
      <div class="cart-d-but" v-for="(item,i) of list" :key="i">
         <div>
           <input type="checkbox" style="zoom:180%;" class="put" v-model="item.cb" @change="isSelect">
           <a><img :src="`http://127.0.0.1:4000/${item.pic}`"></a>
           <!-- :to="'/Detail?icd='+item.icd" -->
           <div>
             <a href="javascript:;">{{item.title}}</a>
             <p>{{item.stitle}}</p>
             <p>{{item.icd}}</p>
           </div>
         </div>
         <div>
           ¥<span>{{item.price.toFixed(2)}}</span>
         </div>
         <div>
           <button @click="cartSub(i)">－</button>
           <input type="text" :value="item.count">
           <button @click='cartAdd(i)'>＋</button>
         </div>
         <div>
           <button @click="del" :data-icd="item.icd"><img src="../../public/photo/cart_de.png" alt=""> 移除</button>
         </div>
      </div>
    </div>
    <div class="cart-bottom">
      <div>
        <h3>订单合计</h3>
        <div>
          <span>商品数量总计：</span>
          <span>{{getCount()}}</span>
        </div>
        <div>
          <span>商品金额总计：</span>
          <span>¥<b>{{getTotal()}}</b></span>
        </div>
        <div>
          <button @click="goshopping">继续购物</button>
          <button @click="shopping">结算</button>
        </div>
        <p>ps：不包含运费</p>
      </div>
    </div>
    <Footer></Footer>
    <Sidebar></Sidebar>
  </div>
</template>

<script>
import Header from './Header.vue';
import Footer from './Footer.vue';
import Sidebar from './Sidebar.vue';
export default {
  components:{
    Header,Footer,Sidebar
  },
  data(){
    return {
      list:[],
      alls:false, //全选按钮的状态
    }
  },
  created() {
    this.add();
  },
  methods:{
    add(){
      var url='cart'
      this.axios.get(url)
      .then(result=>{
        // console.log(result.data.data);
        var rows=result.data.data;
        for(var item of rows){
          item.cb=false;
        }
        this.list=rows;
      })
    },
    cartSub(i){  //数量减少
      if(this.list[i].count>1){
        this.list[i].count--;
      }else{
        alert("亲，商品数量不能为0哟！")
      }
    },
    cartAdd(i){  //数量增加
      if(this.list[i].count<50){
        this.list[i].count++;
      }else{
        alert("亲，商品数量不能超过50哟！")
      }
    },
    del(e){
      // 删除指定的商品 先获icd
      var icd = e.target.dataset.icd;
      // console.log(icd)
      if(confirm("确定要删除吗？")){
        var url="delcart";
        var obj={icd};
        // console.log(obj);
        this.axios.get(url,{params:obj})
        .then(result=>{
          // console.log(result);
          if(result.data.code==1){
            alert("删除成功");
            this.add();
          }
        })
      }
    },
    selectAll(){  //全选状态
      for(var item of this.list){
        item.cb=this.alls;
      }
    },
    dels(){ //选中删除 删除多个
      var r=confirm('确定要删除选中的商品吗？')
      var str='';
      for(var item of this.list){
        if(item.cb){  //如果是选中的商品
          str+=item.icd+",";
        }
      }
      // 如果没有选中商品，提示请选择要删除的商品
      if(str.length==0){
        alert("请选择要删除的商品")
        return;
      }
      // 截取到倒数第一位 不要最后一个逗号
      str=str.slice(0,-1);
      console.log(str);
      var url="dels";
      var obj={ids:str};
      // console.log(obj)
      this.axios.get(url,{params:obj})
      .then(result=>{
        if(result.data.code==1){
          alert("删除成功");
          this.add();
        }
      })
    },
    isSelect(){
      // 当所有商品状态为true 全选为true
      // 一个商品为false 全选为false
      this.alls=this.list.every(function(elem,i,arr){
        return elem.cb;
      })
    },
    getTotal(){ //计算总价
      var total=0;
      var rows=this.list;
      // console.log(rows)
      for(var i=0;i<rows.length;i++){
        // console.log(this.list[i].count);
        if(this.list[i]){
          total+=this.list[i].price*this.list[i].count;
        }
      }
      return total.toFixed(2);
    },
    getCount(){ //计算总数
      var count=0;
      var rows=this.list;
      // console.log(rows)
      for(var i=0;i<rows.length;i++){
        if(this.list[i]){
          count+=this.list[i].count;
        }
      }
      return count;
    },
    shopping(){
      alert('此功能暂未开放，敬请期待')
    },
    goshopping(){
      this.$router.push('/List');
    },
  }
}
</script>

<style scoped>
  .cart{
    width:1200px;
    margin:0 auto;
  }
  .top{
    margin-top:5px;
    padding-left: 15px;
    font-size: 16px;
  }
  /* *********** */
  .cart-ul{
    width:100%;
    height:31px;
  }
  .cart-ul>ul{
    width:100%;
    height:30px;
    padding:0;
  }
  .cart-ul li{
    float: left;
    list-style: none;
    width:300px;
    height:30px;
    text-align: center;
    background:#e6e4e5;
    line-height: 30px;
  }
  .cart-ul li:first-child{
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
  }
  .cart-ul li:last-child{
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
  }
  .cart-ul li:hover{
    background: #e9004f;
    color:#fff;
  }
  /* ************* */
  .cart-detail{
    width:100%;
  }
  .cart-d-top{
    width:100%;
    display: flex;
    text-align: center;
  }
  .cart-d-top>p{
    height:36px;
    line-height: 36px;
    background: rgb(135, 136, 236);
    font-weight: 900;
    margin-bottom:0;
  }
  .cart-d-top>p:first-child{
    width:460px;
  }
  .cart-d-top>p:nth-child(2){
    width:280px;
  }
  .cart-d-top>p:nth-child(3){
    width:260px;
  }
  .cart-d-top>p:last-child{
    width:200px;
  }
  /* ************** */
  .cart-d-but{
    width:1198px;
    display: flex;
    border-left: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
  }
  .cart-d-but>div:first-child{
    width:460px;
    height:120px;
    padding:18px 0;
    display: flex;
    vertical-align: middle;
  }
  .cart-d-but>div:first-child>.put{
    width:18px;
    height:18px;
    margin-top: 23px;
    -webkit-appearance: radio;
  }
  .cart-d-but>div:first-child>a:nth-child(2){
    display: block;
    width:116px;
    height:116px;
    margin-left: 20px;
  }
  .cart-d-but>div:first-child>a:nth-child(2)>img{
    width:100%;
    height:100%;
  }
  .cart-d-but>div:first-child>div{
    margin-top:20px;
  }
  .cart-d-but>div:first-child>div>a{
    text-decoration: none;
    margin-left: 20px;
    padding-right: 10px;
    font-weight: 700;
    font-size: 20px;
    color: #4f4f4f;
    display: block;
    width: 265px;
    height:26px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .cart-d-but>div:first-child>div>a:hover{
    color:#f00;
  }
  .cart-d-but>div:first-child>div>P{
    padding-left: 20px;
    display: block;
    width: 265px;
    height:26px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .cart-d-but>div:nth-child(2){
    width:280px;
    color:#f00;
    font-weight: 700;
    font-size: 18px;
    text-align: center;
    padding-top:65px;
    padding-bottom: 65px;
  }
  .cart-d-but>div:nth-child(3){
    width:258px;
    text-align: center;
    padding-top:60px;
    padding-bottom: 60px;
  }
  .cart-d-but>div:nth-child(3)>input{
    width:40px;
    height:30px;
    text-align: center;
    padding:0;
    margin:0;
  }
  .cart-d-but>div:nth-child(3)>button{
    width:30px;
    height:34px;
  }
  .cart-d-but>div:last-child{
    width:200px;
    text-align: center;
    padding-top:60px;
    padding-bottom: 60px;
  }
  .cart-d-but>div:last-child>a{
    text-decoration: none;
    color:#000;
  }
  .cart-d-but>div:last-child>a:hover{
    color: #f00;
  }
  /* ********** */
  .cart-bottom{
    width:100%;
    height:200px;
    margin-bottom:30px;
  }
  .cart-bottom>div{
    width:340px;
    height:100%;
    float: right;
  }
  .cart-bottom>div>div:nth-child(2),.cart-bottom>div>div:nth-child(3),
  .cart-bottom>div>div:nth-child(4){
    font-size: 20px;
    margin-bottom: 8px;
    padding:0 5px;
  }
  .cart-bottom>div>div:nth-child(2){
    border-top:1px solid #ccc;
    position: relative;
  }
  .cart-bottom>div>div:nth-child(3){
    border-bottom:1px solid #ccc;
    position: relative;
  }
  .cart-bottom>div>div:nth-child(2)>span:nth-child(2),.cart-bottom>div>div:nth-child(3)>span:nth-child(2){
    color:#f00;
    position: absolute;
    right:20px;
    font-weight: 700;
  }
  .cart-bottom>div>div:nth-child(4){
    margin:15px 0;
    text-align: right;
  }
  .cart-bottom>div>div:nth-child(4)>button{
    width:110px;
    height:45px;
    margin-right:20px;
    background: #de5356;
    color:#fff;
    border:0;
    border-radius: 5px;
  }
  .cart-bottom>div>div:nth-child(4)>button:hover{
    background: #f00;
    cursor: pointer;
  }
  .cart-bottom h3{
    margin:8px 0;
  }
  .cart-bottom>div>p{
    margin:3px;
  }
  .cart_top{
    width:1198px;
    height:45px;
    display: flex;
    position:relative;
    border-left: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
  }
  .cart_top>.putt{
    width:20px;
    height:20px;
    -webkit-appearance: radio;
  }
  .cart_top>p{
    height:45px;
    margin:0;
    line-height: 45px;
    font-size: 20px;
    font-weight: 700;
    color:forestgreen;
  }
  .cart_top>button{
    position: absolute;
    right: 0;
    height: 45px;
    font-size: 20px;
    color:forestgreen;
  }
</style>