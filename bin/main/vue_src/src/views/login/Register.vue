<template>
  <!-- page -->
	<div id="page" class="page">
		<section class="w3l-form-36">
			<div class="form-36-mian section-gap bg bg2" style="background-color: rgba(0, 0, 0, 0); outline: none; cursor: inherit; outline-offset: -2px;">
				<div class="wrapper">
					<div class="form-inner-cont editContent" style="color: rgb(106, 168, 79); font-size: 17px; background-color: rgb(243, 243, 243); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;">
						<h3 class=" editContent">Create your account</h3>
						<form action="#" method="post" class="signin-form">
							<div class="form-input editContent">
								<span class="fa fa-user-o" aria-hidden="true" style="outline: none; cursor: inherit;"></span> <input type="text" name="email" placeholder="Username" required="">
							</div>
							<div class="form-input editContent">
								<span class="fa fa-envelope-o" aria-hidden="true"></span> <input type="email" name="email" placeholder="Email" required="">
							</div>
							<div class="form-input editContent">
								<span class="fa fa-key" aria-hidden="true" style="outline: none; cursor: inherit;"></span><input type="password" name="password" placeholder="Password" required="">
							</div>
							<div class="form-input editContent">
								<span class="fa fa-key" aria-hidden="true" style="outline: none; cursor: inherit;"></span> <input type="password" name="password" placeholder="Confirm Password" required="">
							</div>

							<div class="login-remember d-grid editContent">
								<label class="check-remaind">
									<input type="checkbox">
									<span class="checkmark"></span>
									<p class="remember editContent">Remember me</p>
								</label>
								<el-button class="btn theme-button">Signup</el-button>
							</div>
						</form>
						<div class="social-icons">
							<p class="continue editContent"><span class=" editContent" style="outline: none; cursor: inherit;">Or</span></p>
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
						<p class="signup editContent">Already a member? <a href="login.html" class="signuplink editContent" style="outline: none; cursor: inherit;">Login</a></p>
					</div>
          <!-- copyright -->
          <div class="copy-right">
            <p>© 2020 Stock Signup Form. All rights reserved | Design by <a href="/" target="_blank">NgaTT</a></p>
          </div>
          <!-- //copyright -->
				</div>
			</div>
		</section>
	</div><!-- /#page -->
</template>
<style lang="scss" scoped>
  @import url('./bundles/css/style.scss');
</style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
export default class Register extends Vue{
  
}
</script>