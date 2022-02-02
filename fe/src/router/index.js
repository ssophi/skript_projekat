import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import Contact from '../views/Contact.vue'

import UserReserveWorkout from '../components/UserReserveWorkout.vue'
import UserReserveMasage from '../components/UserReserveMasage.vue'
import UserMyPage from '../components/UserMyPage.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    //component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
    component: About
  },
  {
    path: '/contact',
    name: 'Contact',
    component: Contact
  },
  {
    path: '/user',
    name: 'UserReserveWorkout',
    component: UserReserveWorkout
  },
  {
    path: '/user/masage',
    name: 'UserReserveMasage',
    component: UserReserveMasage
  },
  {
    path: '/user/myPage',
    name: 'UserMyPage',
    component: UserMyPage
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
