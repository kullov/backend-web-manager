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
        path: 'main-layout',
        name: 'Main',
        component: MainLayout,
        children: [
          {
            path: 'create',
            name: 'Create',
            component: Create
          },
          {
            path: 'posts',
            name: 'Posts',
            component: Create
          },
          {
            path: 'favorites',
            name: 'Favorites',
            component: Create
          },
        ],
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
