import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import Create from '../views/src-1002/Create.vue'
import Register from '../views/login/Register.vue'
import MainLayout from '../views/src-1002/MainLayout.vue'

Vue.use(VueRouter)

  const routes: Array<RouteConfig> = [
  {
    path: '/',
    name: 'routes.home',
    component: Home,
    children: [
      {
        path: 'about',
        name: 'routes.about',
        component: About
      },
      // {
      //   path: 'main',
      //   name: 'routes.main',
      //   component: MainLayout,
      //   // children: [
      //   //   {
      //   //     path: 'create',
      //   //     name: 'routes.create',
      //   //     component: Create
      //   //   },
      //   // ]
      // },
      {
        path: 'create',
        name: 'routes.create',
        component: Create
      },
    ],
  },
  {
    path: '/register',
    name: 'routes.register',
    component: Register
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
