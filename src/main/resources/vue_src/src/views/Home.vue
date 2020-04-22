<template>
  <div class="home">
    <el-header>
      <el-menu router :default-active="$route.path" class="el-menu-demo" mode="horizontal">
        <el-menu-item index="/about">Home</el-menu-item>
        <el-submenu index="/about">
          <template slot="title">Workspace</template>
          <el-menu-item index="2-1">item one</el-menu-item>
          <el-menu-item index="2-2">item two</el-menu-item>
          <el-menu-item index="2-3">item three</el-menu-item>
          <el-submenu index="2-4">
            <template slot="title">item four</template>
            <el-menu-item index="2-4-1">item one</el-menu-item>
            <el-menu-item index="2-4-2">item two</el-menu-item>
            <el-menu-item index="2-4-3">item three</el-menu-item>
          </el-submenu>
        </el-submenu>
        <el-menu-item index="/main">Create</el-menu-item>
        <el-menu-item index="/about"><a href="https://www.ele.me" target="_blank">Orders</a></el-menu-item>
        <el-menu-item index="/register" style="position:absolute;right:0px">Login</el-menu-item>
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
