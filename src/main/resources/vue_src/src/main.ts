
import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios';
import VueAxios from 'vue-axios';
 
Vue.use(VueAxios, axios);

Vue.config.productionTip = false
import Element from 'element-ui'
Vue.use(Element)
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
//import material-icon scss
import "font-awesome/css/font-awesome.min.css";
//defined as global component
Vue.component('VueFontawesome', require('vue-fontawesome-icon/VueFontawesome.vue').default);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
