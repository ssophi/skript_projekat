<template>
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/contact">Contact</router-link>
  </div>
  <div call="container">
       <button class = "btn-logIn">Log In</button>
      <button class = "btn-signUp">Sign Up</button>
  </div>
</template>

<script>
    // import Button from './Button'
    export default {
        name: 'NavBarNotLoggedin'
    }
</script>

<style scoped>
    #nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

.btn-signUp {
    position: absolute;
    top: 120px;
    right: 16px;
    display: inline-block;
    border: none;
    background: #555;
    color: #fff;
    padding: 7px 20px;
    cursor: pointer;
    border-radius: 10px;
  }
  .btn-logIn {
    position: absolute;
    top: 120px;
    right: 120px;
    display: inline-block;
    border: none;
    background: #555;
    color: #fff;
    padding: 7px 20px;
    cursor: pointer;
    border-radius: 10px;
  }
  .container {
    position: relative;
  }
</style>