import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false
import vuetify from '@/plugins/vuetify' // path to vuetify export
import 'vuetify/dist/vuetify.min.css';
Vue.use(vuetify);

import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'

//import material-icon scss
import "font-awesome/css/font-awesome.min.css";
//defined as global component
Vue.component('VueFontawesome', require('vue-fontawesome-icon/VueFontawesome.vue').default);

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
