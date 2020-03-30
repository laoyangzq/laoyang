import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs';


// element-ui
import ElementUI from 'element-ui'

import 'element-ui/lib/theme-chalk/index.css';


axios.defaults.baseURL="http://yuanzu.applinzi.com";
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;

Vue.use(ElementUI);

Vue.config.productionTip = false

import Vuex from "vuex"
Vue.use(Vuex);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
