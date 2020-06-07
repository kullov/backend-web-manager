<template>
  <el-container style="height: 500px">
    <el-header style="text-align: right; font-size: 12px; z-index: 555; position:fixed;">
      <el-menu router :default-active="$route.path" class="el-menu-demo" mode="horizontal">
        <el-menu-item index="/about">Home</el-menu-item>
        <el-menu-item index="/organization/view/1">Organization</el-menu-item>
        <el-menu-item index="/organization/view/1">Teacher</el-menu-item>
        <el-menu-item index="/intern/view/1">Intern</el-menu-item>
        <el-menu-item index="/requests">Requests</el-menu-item>
        <el-menu-item style="position:absolute;right:124px" v-if="!isLogger" index="/register">Đăng ký</el-menu-item>
        <el-menu-item style="position:absolute;right:0px" v-if="!isLogger" index="/login">Đăng nhập</el-menu-item>
        <!-- <el-submenu v-if="!isLogger" style="position:absolute;right:0px" index="/login">
          <template slot="title">Đăng nhập</template>
          <el-menu-item index="/login">Student</el-menu-item>
          <el-menu-item index="/login">Company</el-menu-item>
          <el-menu-item index="/login">Teacher</el-menu-item>
        </el-submenu> -->
        <el-menu-item style="position:absolute;right:0px" v-else index="/" @click="logout()">Đăng xuất</el-menu-item>
      </el-menu>
    </el-header>
    <el-container style="margin-top:62px;">
      <el-aside style="width:252px;" class="left-content" v-if="$route.path !== '/about'">
        <div class="header-block">
          <img src="https://www.w3schools.com/w3images/avatar_g2.jpg" style="width:100px;" class="w3-round"><br><br>
          <h3><b>HUS</b></h3>
          <p class="w3-text-grey"><i>Intern</i></p>
        </div>
        <perfect-scrollbar>
          <el-menu style="background-color:#f1f1f1;" router :default-active="$route.path">
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
        </perfect-scrollbar>
      </el-aside>
      <el-main class="main right-content" :class="$route.path === '/about' ? 'none-margin' : ''">
        <router-view></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>
<style scoped lang="scss">
.none-margin {
  margin-left: 0;
}
::v-deep .left-content {
  background-color: #f1f1f1;
  position: fixed;
  z-index: 555;
  width: 20%;
}
.ps {
  max-height:342px;
}
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
li.el-menu-item.w3-bar-item.w-100.text-left.is-active {
  border-top: 1px solid teal;
  border-bottom: 1px solid teal;
  color: teal;
  font-weight: bold;
}
.el-menu {
  border-right: none;
}
.el-main {
  padding: 0 !important;
}
</style>
<script lang="ts">
// @ is an alias to /src
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'
import { loginService } from '@/services/login.service';
@Component
export default class Home extends Vue {
  private activeIndex: string = '1';
  private isLogger: boolean = false;
  private isLogin: boolean = false;
  private isSignUp: boolean = false;

  private mounted() {
    this.checkLogger();
  }

  private checkLogger() {
    this.isLogger = JSON.parse(localStorage.getItem('isLogger') || '');
  }

  private loginFun() {
    this.isLogin = true;
    this.isSignUp = false;
  }

  private signUpFun() {
    this.isLogin = false;
    this.isSignUp = true;
  }

  private logout() {
    // loginService.logout().then((response: any) => {

    // })
    localStorage.removeItem('user');
    if (localStorage.getItem('user')) {
      localStorage.setItem('isLogger', 'true');
    } else {
      localStorage.setItem('isLogger', 'false');
    }
    this.$router.go(0);
      // remove the axios default header
      // delete Home.axios.defaults.headers.common['Authorization'];
  }

}
</script>
