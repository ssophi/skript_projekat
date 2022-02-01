<template>
  <div class="userhome">
    <h2>Forma za zakazivanje treninga</h2>
  </div>

  <div>
    <form @submit.prevent="addBlogPost">
      <input type="text" v-model="title" name="title" placeholder="Add blog post title..."> <br>
      <input type="text" v-model="content" name="content" placeholder="Add blog post content..."> <br>
      <input type="text" v-model="userId" name="userID" placeholder="Add user id..."> <br>
      <input type="submit" value="Submit" class="btn">
    </form>
    </div>
</template>

<script>

export default {
  name: 'UserHome',
  components: {
    
  }
}
</script>

<style scoped>
th, td {
  border-bottom: 1px solid #ddd;
}
table {
  width: 100%;
}
</style>
