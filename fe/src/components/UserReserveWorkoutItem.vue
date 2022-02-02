<template>
    <div class="blogpost-item">
        <!-- <h2>{{blogpost.title}}</h2>
        <p>{{blogpost.content}}</p>
        <button @click="$emit('del-blogpost', blogpost.id)" class="del">x</button> -->
    </div>
</template>

<script>
export default {
    name:"UserReserveWorkoutItem",
    // props:["blogpost"]
}
</script>

<style scoped>
    .blogpost-item {
    background: #f4f4f4;
    padding: 10px;
    border-bottom: 1px #ccc dotted;
  }

  /* .del {
    background: #ff0000;
    color: #fff;
    border: none;
    padding: 5px 9px;
    border-radius: 50%;
    cursor: pointer;
    float: right;
  } */
</style>