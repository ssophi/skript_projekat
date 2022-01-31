import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../components/notLoggedIn/Home.vue'
import About from '../components/notLoggedIn/About.vue'
import Contact from '../components/notLoggedIn/Contact.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/contact',
    name: 'Contact',
    component: Contact
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
