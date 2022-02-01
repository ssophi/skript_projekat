<template>
  <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> |
    <router-link to="/contact">Contact</router-link>
  </div>
  <router-view/>
  <!-- <h2>Nav Bar Not Logged In </h2> -->
</template>

<script>
// import NavBarNotLoggedIn from './views/NavBarNotLoggedIn.vue'

export default {
  name: 'NavBarNotLoggedIn',
  components: {
    //Header
  }
}
</script>