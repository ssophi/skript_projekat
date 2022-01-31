<template>
  <div id="nav">
    <Header />
  </div>
  <div id="nav">
    <NavBarNotLoggedin />
  </div>
</template>

<script>
import Header from './components/Header'
import NavBarNotLoggedin from './components/notLoggedIn/NavBarNotLoggedin.vue'
// import ShowBlogPosts from './components/ShowBlogPosts'
// import AddBlogPost from './components/AddBlogPost'
// import axios from 'axios'

export default {
  name: 'App',
  components: {
    Header,
    NavBarNotLoggedin,
    // ShowBlogPosts,
    // AddBlogPost
  }
  // data(){
  //   return {
  //     blogposts: [
        
  //     ]
  //   }
  // },
  // methods:{
  //   deleteBlogPost(id){
  //     axios.delete(`http://localhost:5000/blog`)
  //     this.blogposts = this.blogposts.filter(blogpost => blogpost.id !== id)
  //   },
  //   addBlogPost(newBlogPost){
  //     const {title, content, userId} = newBlogPost

  //     axios.post('http://localhost:5000/blog', {
  //       title,
  //       content,
  //       userId
  //     })
  //     .then(res => this.blogposts = [...this.blogposts, res.data])
  //     .catch(err => console.log(err))

  //   }
  // },
  // created(){
  //   axios.get('http://localhost:5000/blog')
  //   .then(res => this.blogposts = res.data)
  //   .catch(err => console.log(err))
  // }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap');
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
header{
  padding: 15px;
  border: 1px solid steelblue;
  border-radius: 5px;
}
body {
  font-family: 'Poppins', sans-serif;
}
.container {
  max-width: 500px;
  margin: 30px auto;
  overflow: auto;
  min-height: 300px;
  border: 1px solid steelblue;
  padding: 30px;
  border-radius: 5px;
}
.btn {
  display: inline-block;
  background: #000;
  color: #fff;
  border: none;
  padding: 10px 20px;
  margin: 5px;
  border-radius: 5px;
  cursor: pointer;
  text-decoration: none;
  font-size: 15px;
  font-family: inherit;
}
.btn:focus {
  outline: none;
}
.btn:active {
  transform: scale(0.98);
}
.btn-block {
  display: block;
  width: 100%;
}
</style>
