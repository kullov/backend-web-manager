
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
import 'bootstrap/dist/css/bootstrap.min.css';
//import material-icon scss
import "font-awesome/css/font-awesome.min.css";
//defined as global component
Vue.component('VueFontawesome', require('vue-fontawesome-icon/VueFontawesome.vue').default);

import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'

// Install BootstrapVue
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)

import PerfectScrollbar from 'vue2-perfect-scrollbar'
import 'vue2-perfect-scrollbar/dist/vue2-perfect-scrollbar.css'

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
Vue.component('font-awesome-icon', FontAwesomeIcon);
 
Vue.use(PerfectScrollbar)

// Vee-validate
import { ValidationObserver, ValidationProvider, extend } from 'vee-validate';
import { required, min, max, email, numeric, max_value } from "vee-validate/dist/rules";

extend('required', {
  ...required,
  message: (_, values) => "Đây là trường bắt buộc"
});
extend('email', {
  validate(value) {
    const emailRegex = /^[a-zA-Z0-9_.]{1,32}@[a-zA-Z0-9-_,.]{2,}(\.[a-zA-Z0-9-_,.]{2,}){1,}$/gm;
    return emailRegex.test(value);
  },
  message: (_, values) => "Nhập email không hợp lệ"
});
extend('password', {
  params: ['target'],
  // @ts-ignore
  validate(value, { target }) {
    return value === target;
  },
  message: (_, values) => "Mật khẩu không trùng nhau"
});
extend('is_date_after', {
  params: ['target'],
  // @ts-ignore
  validate(value, { target }) {
    return value > target;
  },
  message: (_, values) => "Ngày kết thúc phải sau ngày bắt đầu"
});
extend('is_date_before', {
  params: ['target'],
  // @ts-ignore
  validate(value, { target }) {
    return value < target || !target;
  },
  message: (_, values) => "Ngày bắt đầu phải trước ngày kết thúc"
});


Vue.component("ValidationObserver", ValidationObserver);
Vue.component('ValidationProvider', ValidationProvider);


// const accountService = new AccountService(store, router);
// // Add a request interceptor
// axios.interceptors.request.use(
//   (config) => {
//     debugger;
//       const token = sessionStorage['jhi-authenticationToken'];
//       if (token) {
//           config.headers.Authorization = 'Bearer ' + token;
//       }
//       // config.headers['Content-Type'] = 'application/json';
//       return config;
//   },
//   (error) => {
//       Promise.reject(error);
//   });

// router.beforeEach((to, from, next) => {
//   if (!to.matched.length) {
//     next('/not-found');
//   }

//   if (to.meta && to.meta.authorities && to.meta.authorities.length > 0) {
//     if (!accountService.hasAnyAuthority(to.meta.authorities)) {
//       sessionStorage.setItem('requested-url', to.fullPath);
//       next('/forbidden');
//     } else {
//       next();
//     }
//   } else {
//     // no authorities, so just proceed
//     next();
//   }
// });
import moment from 'moment';
import AccountService from './services/account.service';
Vue.prototype.$moment = moment;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
