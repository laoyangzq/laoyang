import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Detail from '../views/Detail.vue'
import Brand from '../views/Brand.vue'
import Cart from '../views/Cart.vue'
import List from '../views/List.vue'
import Sidebar from '../views/Sidebar.vue'
import About from '../views/About.vue'
import Delivery from '../views/Delivery.vue'




Vue.use(VueRouter)

const routes = [
  {path:'/Delivery',component:Delivery},
  {path:'/About',component:About},
  {path:'/Sidebar',component:Sidebar},
  {path:'/List',component:List},
  {path:'/Cart',component:Cart},
  {path:'/Brand',component:Brand},
  {path:'/Detail',component:Detail},
  {path:'/',component:Index},
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
