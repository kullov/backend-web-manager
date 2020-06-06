<template>
  <!-- page -->
	<div id="page" class="page">
		<section class="w3l-form-36">
			<div class="form-36-mian section-gap bg bg2" style="background-color: rgba(0, 0, 0, 0); outline: none; cursor: inherit; outline-offset: -2px;">
				<div class="wrapper">
					<div class="form-inner-cont editContent" style="color: rgb(106, 168, 79); font-size: 17px; background-color: rgb(243, 243, 243); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;">
						<h3 class=" editContent">Đăng nhập</h3>
						<ValidationObserver ref="observer">
							<el-form slot-scope="{ validate }" :model="loginModel" class="signin-form">
								<ValidationProvider name="username" rules="required">
									<div slot-scope="{ errors }" :error="errors[0]" class="form-input editContent">
										<i class="el-icon-user" aria-hidden="true" style="outline: none; cursor: inherit;"></i> 
										<el-input type="text" name="email" placeholder="Username" v-model="loginModel.username" required></el-input>
									</div>
								</ValidationProvider>
								<!-- <div class="form-input editContent">
									<i class="fas fa-envelope" aria-hidden="true"></i> <input type="email" name="email" placeholder="Email" required="">
								</div> -->
								<ValidationProvider name="password" rules="required">
									<div slot-scope="{ errors }" :error="errors[0]" class="form-input editContent">
										<!-- <i class="el-icon-user" aria-hidden="true" style="outline: none; cursor: inherit;"></i>  -->
										<i class="el-icon-lock" aria-hidden="true" style="outline: none; cursor: inherit;"></i>
										<el-input type="password" name="password" placeholder="Password" required v-model="loginModel.password"></el-input>
									</div>
								</ValidationProvider>

								<div class="login-remember d-grid editContent">
									<label class="check-remaind">
										<input type="checkbox">
										<span class="checkmark"></span>
										<p class="remember editContent">Ghi nhớ tài khoản</p>
									</label>
									<el-button @click="validate().then(submit)" class="btn theme-button">Đăng nhập</el-button>
								</div>
							</el-form>
						</ValidationObserver>
						<div class="social-icons">
							<p class="continue editContent"><span class=" editContent" style="outline: none; cursor: inherit;">Hoặc</span></p>
							<div class="social-login">
								<a href="#facebook" class="propClone">
									<div class="facebook editContent">
										<span class="fa fa-facebook" aria-hidden="true"></span>

									</div>
								</a>
								<a href="#google" class="propClone">
									<div class="google editContent">
										<span class="fa fa-google-plus" aria-hidden="true"></span>
									</div>
								</a>
							</div>
						</div>
						<p class="signup editContent">Chưa có tài khoản? 
							<a class="signuplink editContent" @click="goToRegisterPage()" style="outline: none; cursor: inherit;">
								Đăng ký
							</a>
						</p>
					</div>
				</div>
			</div>
		</section>
	</div><!-- /#page -->
</template>
<style lang="scss" scoped>
@import url('../bundles/css/style.scss');
</style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Login extends Vue {
	private loginModel: any = {};

	private created() {

	}

	private submit() {
		console.log(this.loginModel);
		
	}

  private goToRegisterPage() {
		const path = '/register';
		if (this.$route.path !== path) {
			this.$router.push({ name: "routes.auth.register" }).catch(err => {
				alert('Error!');
			});
		}
	}
}
</script>