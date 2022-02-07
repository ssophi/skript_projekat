<template>
  <div class="userhome">
    <h2>Forma za zakazivanje treninga</h2>
  </div>

  <div>
      <!-- <b>Ponedeljak</b> <br>
        <ul id="array-with-index">
          <li v-for="trening in treninzi_ponedeljak" :key="trening.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
          </div>
          </li>
        </ul> <br>
      <b>Utorak</b><br>
      <ul id="array-with-index">
          <li v-for="trening in treninzi_utorak" :key="trening.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
          </div>
          </li>
        </ul>
      <b>Sreda</b><br>
      <ul id="array-with-index">
          <li v-for="trening in treninzi_sreda" :key="trening.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
          </div>
          </li>
        </ul>
      <b>Cetvrtak</b><br>
      <ul id="array-with-index">
          <li v-for="trening in treninzi_cetvrtak" :key="trening.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
          </div>
          </li>
        </ul>
      <b>Petak</b><br>
      <ul id="array-with-index">
        <li v-for="trening in treninzi_petak" :key="trening.id">
          {{ trening.tip }} - {{ trening.termini }}
          <div call="container">
            <button class = "btn-logOut">Reserve</button>
        </div>
        </li>
      </ul>
      <b>Subota</b><br>
      <ul id="array-with-index">
        <li v-for="trening in treninzi_subota" :key="trening.id">
          {{ trening.tip }} - {{ trening.termini }}
          <div call="container">
            <button class = "btn-logOut">Reserve</button>
        </div>
        </li>
      </ul>
      <b>Nedelja</b><br>
      <ul id="array-with-index">
          <li v-for="trening in treninzi_nedelja" :key="trening.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
          </div>
          </li>
        </ul> -->
  </div>
</template>

<script>

export default {
    name: "UserReserveWorkout",
    // components: {
    //     BlogPostItem
    // },
    // props: ["blogposts"]

data(){
    return {
      treninzi_ponedeljak: [
        
      ],
      treninzi_utorak: [
        
      ],
      treninzi_sreda: [
        
      ],
      treninzi_cetvrtak: [
        
      ],treninzi__petak: [
        
      ],treninzi_subota: [
        
      ],treninzi_nedelja: [
        
      ]
    }
  },

  created(){
    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '1' }})
    // .then(res => this.treninzi_ponedeljak = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '2' }})
    // .then(res => this.treninzi_utorak = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '3' }})
    // .then(res => this.treninzi_sreda = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '4' }})
    // .then(res => this.treninzi_cetvrtak = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '5' }})
    // .then(res => this.treninzi_petak = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '6' }})
    // .then(res => this.treninzi_subota = res.data)
    // .catch(err => console.log(err))

    // axios.get('http://localhost:5000/termin/st/:dan',{ params: { dan: '7' }})
    // .then(res => this.treninzi_nedelja = res.data)
    // .catch(err => console.log(err))
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
