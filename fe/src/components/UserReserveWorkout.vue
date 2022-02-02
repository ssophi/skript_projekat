<template>
  <div class="userhome">
    <h2>Forma za zakazivanje treninga</h2>
  </div>

  <div>
      <b>Ponedeljak</b> <br>
        <!-- <div v-bind:key="blogpost.id" v-for="blogpost in blogposts">
            <BlogPostItem v-bind:blogpost="blogpost" v-on:del-blogpost="$emit('del-blogpost', blogpost.id)" />
        </div> -->
      <b>Utorak</b><br>
      <b>Sreda</b><br>
      <b>Cetvrtak</b><br>
      <b>Petak</b><br>
      <b>Subota</b><br>
  </div>
</template>

<script>

export default {
    name: "UserReserveWorkout",
    // components: {
    //     BlogPostItem
    // },
    // props: ["blogposts"]
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
