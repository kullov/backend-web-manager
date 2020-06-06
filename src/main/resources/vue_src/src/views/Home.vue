<template>
  <el-container style="height: 500px">
    <el-header style="text-align: right; font-size: 12px">
      <el-menu router :default-active="$route.path" class="el-menu-demo" mode="horizontal">
        <el-menu-item index="/about">Home</el-menu-item>
        <el-menu-item index="/main-layout-organization">Organization</el-menu-item>
        <el-menu-item index="/main-layout-teacher">Teacher</el-menu-item>
        <el-menu-item index="/main-layout-intern">Intern</el-menu-item>
        <el-menu-item index="/requests">Requests</el-menu-item>
        <el-submenu index="/login" style="position:absolute;right:0px">
          <template slot="title">Login</template>
          <el-menu-item index="/login">Student</el-menu-item>
          <el-menu-item index="/login">Company</el-menu-item>
          <el-menu-item index="/login">Teacher</el-menu-item>
        </el-submenu>
      </el-menu>
    </el-header>
    <el-container>
      <el-aside style="width: 250px;" class="left-content" v-if="$route.path !== '/about'">
        <div class="header-block">
          <img src="https://www.w3schools.com/w3images/avatar_g2.jpg" style="width:100px;" class="w3-round"><br><br>
          <h3><b>HUS</b></h3>
          <p class="w3-text-grey"><i>Intern</i></p>
        </div>
        <el-menu router :default-active="$route.path">
          <el-menu-item class="w3-bar-item w-100 text-left" index="/organization/view/1"><i class="fa fa-th-large fa-fw w3-margin-right"></i>PROFILE</el-menu-item>
          <!-- <el-menu-item class="w3-bar-item w-100 text-left" index="/intern/view/1"><i class="fa fa-th-large fa-fw w3-margin-right"></i>PROFILE</el-menu-item> -->
          <el-menu-item class="w3-bar-item w-100 text-left" index="/organization/list"><i class="fa fa-star fa-fw w3-margin-right"></i>DANH SÁCH DOANH NGHIỆP</el-menu-item>
          <el-menu-item class="w3-bar-item w-100 text-left" index="/interns/list"><i class="fa fa-star fa-fw w3-margin-right"></i>DANH SÁCH SINH VIÊN</el-menu-item>
          <el-menu-item class="w3-bar-item w-100 text-left" index="/register/list"><i class="fa fa-star fa-fw w3-margin-right"></i>DANH SÁCH PHIẾU ĐĂNG KÝ</el-menu-item>
          <el-menu-item class="w3-bar-item w-100 text-left" index="/request-assignment/list"><i class="fa fa-star fa-fw w3-margin-right"></i>PHÂN CÔNG</el-menu-item>
          <el-menu-item index="/request/create" class="w3-bar-item w3-text-teal w-100 text-left"><i class="fa fa-th-large fa-fw w3-margin-right"></i>TẠO PHIẾU TUYỂN DỤNG</el-menu-item>
          <el-menu-item index="/request/create" class="w3-bar-item w-100 text-left"><i class="fa fa-star fa-fw w3-margin-right"></i>SỬA THÔNG TIN</el-menu-item>
          <el-menu-item class="w3-bar-item w-100 text-left" index="/request"><i class="fa fa-envelope fa-fw w3-margin-right"></i>LIÊN HỆ</el-menu-item>
        </el-menu>
      </el-aside>
      <el-main class="main right-content">
        <router-view></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>
<style scoped lang="scss">
.header-block {
  padding-top: 10px;
  text-align: center !important;
  z-index:3
}
.el-header {
  background-color: black;
  position: sticky;
  top: 0;
  z-index: 5;
  width: 100%;
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
