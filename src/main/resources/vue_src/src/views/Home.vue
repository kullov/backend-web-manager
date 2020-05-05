<template>
  <div class="home">
    <el-header>
      <el-menu router :default-active="$route.path" class="el-menu-demo" mode="horizontal">
        <el-menu-item index="/about">Home</el-menu-item>
        <el-menu-item index="/main-layout">Main</el-menu-item>
        <el-menu-item index="/create">Create</el-menu-item>
        <el-menu-item index="/abilities">Abilities</el-menu-item>
        <el-menu-item index="/requests">Requests</el-menu-item>
        <el-menu-item index="/login">Login</el-menu-item>
        <el-submenu index="/login" style="position:absolute;right:0px">
          <template slot="title">Login</template>
          <el-menu-item index="/login">Student</el-menu-item>
          <el-menu-item index="/login">Company</el-menu-item>
          <el-menu-item index="/login">Teacher</el-menu-item>
        </el-submenu>
      </el-menu>
    </el-header>
    <el-main class="main">
      <router-view></router-view>
    </el-main>
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
