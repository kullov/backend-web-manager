import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import Create from '../views/src-1002/src-1002C/Create.vue'
import Register from '../views/login/Register.vue'
import MainOrganization from '../views/src-1002/MainLayout.vue'
import MainTeacher from '../views/src-1003/MainLayout.vue'
import MainIntern from '../views/intern/MainLayout.vue'
import Ability from '../views/ability/Ability.vue'
import Requests from '../views/request/Requests.vue'

Vue.use(VueRouter)

  const routes: Array<RouteConfig> = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    children: [
      {
        path: 'about',
        name: 'About',
        component: About
      },
      {
        path: 'login',
        name: 'Register',
        component: Register
      },
      {
        path: 'create',
        name: 'Create',
        component: Create
      },
      {
        path: 'abilities',
        name: 'Abilities',
        component: Ability
      },
      {
        path: 'requests',
        name: 'Requests',
        component: Requests
      },
      {
        path: 'main-layout-organization',
        name: 'MainOrganization',
        component: MainOrganization,
      },
      {
        path: 'main-layout-teacher',
        name: 'MainTeacher',
        component: MainTeacher,
      },
      {
        path: 'main-layout-intern',
        name: 'MainIntern',
        component: MainIntern,
      },
      
      
    ],
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
