<template>
  <div class="home">
    <h2>Svi treninzi u ponudi</h2>

    <ul id="array-with-index">
      <li v-for="trening in treninzi" :key="trening.id">
        {{ trening.tip }} - {{ trening.termini }}
      </li>
    </ul>

    <ul id="array-with-index">
      <li v-for="masaza in masaze" :key="masaza.id">
        {{ masaza.tip }} - {{ masaza.termini }}
      </li>
    </ul>
    
    <!-- <table>
      <tr>
        <th>Tip treninga</th>
        <th>Termini</th>
        <th>Trener</th>
      </tr>
      <tr>
        <td>Alfreds Futterkiste</td>
        <td>Maria Anders</td>
        <td>Germany</td>
      </tr>
      <tr>
        <td>Centro comercial Moctezuma</td>
        <td>Francisco Chang</td>
        <td>Mexico</td>
      </tr>
    </table>

    <h2>Sve masaze u ponudi</h2>
    <table>
      <tr>
        <th>Tip masaze</th>
        <th>Termini</th>
        <th>Masazer</th>
      </tr>
      <tr>
        <td>Alfreds Futterkiste</td>
        <td>Maria Anders</td>
        <td>Germany</td>
      </tr>
      <tr>
        <td>Centro comercial Moctezuma</td>
        <td>Francisco Chang</td>
        <td>Mexico</td>
      </tr>
    </table> -->
  </div>
</template>

<script>

import WorkoutItem from './WorkoutItem.vue'

export default {
  name: 'Home',
  components: {
     WorkoutItem
  },
  props: ["treninzi", "masaze"]
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
