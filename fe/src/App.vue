<template>
  <Header />
  <!-- <NavBarNotLoggedIn /> -->
  <NavBarLoggedIn />
  <!-- <Home v-bind:treninzi="treninzi" v-bind:masaze="masaze"/> -->
</template>

<script>
import Header from './views/Header.vue'
import NavBarNotLoggedIn from './views/NavBarNotLoggedIn.vue'
import NavBarLoggedIn from './components/NavBarLoggedIn.vue'
import Home from './views/Home.vue'

import axios from 'axios'

export default {
  name: 'App',
  components: {
    Header,
    NavBarNotLoggedIn,
    NavBarLoggedIn,
    Home
  },

  data(){
    return {
      treninzi: [
        
      ],
      masaze: [
        
      ]
    }
  },

  created(){
    axios.get('http://localhost:5000/admin/trening')
    .then(res => this.treninzi = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/admin/masaza')
    .then(res => this.masaze = res.data)
    .catch(err => console.log(err))
  }

  // mounted () {
  //   axios
  //     .get('http://localhost:5000/admin/trening')
  //     .then(response => (this.treninzi = response.data))
  // }
}
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
/* 
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
} */

</style>
