<template>
  <div class="userhome">
    <h2>Forma za zakazivanje masaza</h2>
  </div>

 <div>
      <b>Ponedeljak</b> <br>
        <ul id="array-with-index">
          <li v-for="masaza in masaze_ponedeljak" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
        </ul> <br>
      <b>Utorak</b><br>
      <ul id="array-with-index">
          <li v-for="masaza in masaze_utorak" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
        </ul>
      <b>Sreda</b><br>
      <ul id="array-with-index">
          <li v-for="masaza in masaze_sreda" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
        </ul>
      <b>Cetvrtak</b><br>
      <ul id="array-with-index">
          <li v-for="masaza in masaze_cetvrtak" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
        </ul>
      <b>Petak</b><br>
      <ul id="array-with-index">
        <li v-for="masaza in masaze_petak" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
      </ul>
      <b>Subota</b><br>
      <ul id="array-with-index">
        <li v-for="masaza in masaze_subota" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
      </ul>
      <b>Nedelja</b><br>
      <ul id="array-with-index">
          <li v-for="masaza in masaze_nedelja" :key="masaza.id">
            {{ trening.tip }} - {{ trening.termini }}
            <div call="container">
              <button class = "btn-logOut">Reserve</button>
            </div>
          </li>
      </ul>
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
      masaze_ponedeljak: [
        
      ],
      masaze_utorak: [
        
      ],
      masaze_sreda: [
        
      ],
      masaze_cetvrtak: [
        
      ],masaze__petak: [
        
      ],masaze_subota: [
        
      ],masaze_nedelja: [
        
      ]
    }
  },

  created(){
    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '1' }})
    .then(res => this.masaze_ponedeljak = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '2' }})
    .then(res => this.masaze_utorak = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '3' }})
    .then(res => this.masaze_sreda = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '4' }})
    .then(res => this.masaze_cetvrtak = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '5' }})
    .then(res => this.masaze_petak = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '6' }})
    .then(res => this.masaze_subota = res.data)
    .catch(err => console.log(err))

    axios.get('http://localhost:5000/termin/sm/:dan',{ params: { dan: '7' }})
    .then(res => this.masaze_nedelja = res.data)
    .catch(err => console.log(err))
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
