<?= $header ?>
<body id="log_in">    
	<div id="forgot" style="background-image: url('uploads/site/p4.jpg');background-size: 100%">
		<?= $alert ?>
		<div class="row" id="login-panel">
			<div class="col s12 m4 offset-m4"><?= br(4) ?>
				<?= form_open('login/login')?>  
					<div class="card hoverable">
						<div class="padding"><br>
							<h4><i class="fa fa-lock"></i> Login</h4> <br>
							<div class="input-field">
								<input id="admin-username" type="text" 
								name="username" class="validate">
								<label for="admin-username">Username</label>
							</div>

							<div class="input-field">
								<input id="admin-password" type="password" name="password" class="validate">
								<label for="admin-password">Password</label>
							</div> 
							<button class="btn">OK <i class="fa fa-check-circle"></i></button><?= nbs(20) ?> 
							<a href="#" id="btn-forgot-password">Forgot your Password?</a><br><br>
						</div>
					</div>
				<?= form_close(); ?>  
				<?= br(6) ?>
			</div>
		</div> 
		<div class="row" id="forgot-panel">
			<div class="col s12 m4 offset-m4"><?= br(4) ?>
				<div class="card hoverable">
					<div class="padding">
						<br><h4><i class="fa fa-lock"></i> Forgot Password</h4>
						Visit Your Email Account and try to input 
						your <strong>"password code"</strong>  here ! <br><br>
						<input type="text" id="password_code" placeholder="type the code">
						<button id="admin-forgot-password" class="btn">OK <i class="fa fa-check-circle"></i></button>

						<div id="forgot_password"></div>
						<br><ins><a href="#" id="show-login-panel"> Click Here to Login</a></ins>
						<?= br(2) ?>
					</div>
				</div>
				<?= br(6) ?>
			</div>
		</div>
	</div> 
</body>  
<?= $footer ?>


 