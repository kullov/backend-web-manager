<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<style lang="scss">
  @import url("//unpkg.com/element-ui@2.12.0/lib/theme-chalk/index.css");
  @import "assets/scss/variables";
  @import "assets/scss/style";
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
