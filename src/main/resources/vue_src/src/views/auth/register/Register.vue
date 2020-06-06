<template>
  <!-- page -->
	<div id="page" class="page">
		<section class="w3l-form-36">
			<div class="form-36-mian section-gap bg bg2" style="background-color: rgba(0, 0, 0, 0); outline: none; cursor: inherit; outline-offset: -2px;">
				<div class="wrapper">
					<div class="form-inner-cont editContent" style="color: rgb(106, 168, 79); font-size: 17px; background-color: rgb(243, 243, 243); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;">
						<h3 class=" editContent">Đăng ký</h3>
						<el-form :model="registerModel" class="signin-form">
							<div class="form-input editContent">
								<i class="fa fa-user-o" aria-hidden="true" style="outline: none; cursor: inherit;"></i> 
								<el-input type="text" name="username" placeholder="Username" v-model="registerModel.username" required></el-input>
							</div>
							<div class="form-input editContent">
								<i class="fa fa-envelope-o" aria-hidden="true"></i> 
								<el-input type="email" name="email" placeholder="Email" v-model="registerModel.email" required></el-input>
							</div>
							<div class="form-input editContent">
								<i class="el-icon-lock" aria-hidden="true" style="outline: none; cursor: inherit;"></i>
								<el-input type="password" name="password" placeholder="Password" v-model="registerModel.password" required></el-input>
							</div>
							<div class="form-input editContent">
								<i class="el-icon-lock" aria-hidden="true" style="outline: none; cursor: inherit;"></i> 
								<el-input type="password" name="password" placeholder="Confirm Password" v-model="registerModel.passwordConfirm" required></el-input>
							</div>

							<div class="login-remember d-grid editContent">
								<label class="check-remaind">
									<input type="checkbox">
									<span class="checkmark"></span>
									<p class="remember editContent">Ghi nhớ tài khoản</p>
								</label>
								<el-button @click="submit()" class="btn theme-button">Đăng ký</el-button>
							</div>
						</el-form>
						<div class="social-icons">
							<p class="continue editContent"><span class=" editContent" style="outline: none; cursor: inherit;">Hoặc</span></p>
							<div class="social-login">
								<a href="#facebook" class="propClone">
									<div class="facebook editContent">
										<i class="fa fa-facebook" aria-hidden="true"></i>

									</div>
								</a>
								<a href="#google" class="propClone">
									<div class="google editContent">
										<i class="fa fa-google-plus" aria-hidden="true"></i>
									</div>
								</a>
							</div>
						</div>
						<p class="signup editContent">Đã có tài khoản?
							<a @click="goToLoginPage()" class="signuplink editContent" :to="{name: 'routes.auth.login'}" style="outline: none; cursor: inherit;">
								Đăng nhập
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
export default class Register extends Vue{
  private registerModel: any = {};

	private created() {

	}

	private submit() {
		console.log(this.registerModel);
		
	}

  private goToLoginPage() {
		this.$router.push({ name: "routes.auth.login" });
	}
}
</script>