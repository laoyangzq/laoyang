<template>
  <div id="app">
    <router-view>
    </router-view>
  </div>
</template>

<script>
import Index from './views/Index.vue';
export default {
  components:{Index},
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
</style>
