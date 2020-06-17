<template>
<div>
  <div class="text-center">
    <h1>Bạn không có quyền truy cập!</h1>
    <el-button @click="goHome()">Quay lại trang chủ</el-button>
    <div v-if="errorMessage">
      <div class="alert alert-danger">{{errorMessage}}</div>
    </div>
      <div v-if="error403" class="alert alert-danger">You are not authorized to access this page.</div>
      <div v-if="error404" class="alert alert-warning">The page you requested does not exist.</div>
    </div>
</div>
</template>

<script lang="ts">
import Component from 'vue-class-component';
import { Vue, Inject } from 'vue-property-decorator';
import { loginService } from '@/services/login.service';

@Component
export default class Error extends Vue {
  errorMessage: string = '';
  error403 = false;
  error404 = false;

  private created() {
    let errorMessage = '';
    let error403 = false;
    let error404 = false;

    if (this.errorMessage) {
      errorMessage = this.errorMessage;
    }

    if (this.error403) {
      error403 = this.error403;
    }

    if (this.error404) {
      error404 = this.error404;
    }
    this.init(errorMessage, error403, error404);
  }

  public init(errorMessage: string = '', error403 = false, error404 = false) {
    this.errorMessage = errorMessage;
    this.error403 = error403;
    this.error404 = error404;

  }

  private goHome() {
    this.$router.push('/about');
  }
}
</script>
