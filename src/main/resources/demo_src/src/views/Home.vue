<template>
  <div class="home">
    <!-- <v-tabs
      background-color="transparent"
      color="basil"
      grow
    > -->
      <!-- <v-tabs-bar>
        <v-tabs-items href="/about" router>Home</v-tabs-items>
        <v-tabs-items href="/main" router>Main</v-tabs-items>
        <v-tabs-items href="/create" router>Create</v-tabs-items>
        <v-tabs-items href="/register" router>Login</v-tabs-items>
      </v-tabs-bar>
    </v-tabs> -->
    <v-tabs fixed-tabs>
      <v-tab to="/about">Home</v-tab>
      <v-tab to="/main">Main</v-tab>
      <v-tab to="/create">Create</v-tab>
      <v-tab to="/register">Register</v-tab>
    </v-tabs>
    <router-view></router-view>
  </div>
</template>
<style scoped lang="scss">
.el-header {
  background-color: black;
  
}
.el-menu.el-menu--horizontal {
  background-color: black;
  text-transform: uppercase;
  .el-menu-item {
    color: white;
  }
  .el-menu-item:hover {
    color: teal;
  }
}
.el-menu--horizontal>.el-menu-item.is-active {
  color: teal;
  font-weight: bold;
  background-color: white;
  border-bottom: 1px solid teal;
}
.el-main {
  padding: 0 !important;
}
</style>
<script lang="ts">
// @ is an alias to /src
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'

@Component
export default class Home extends Vue {
  private activeIndex: string = '1';
}
</script>
