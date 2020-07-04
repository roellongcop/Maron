<?= $header ?>
	<div id="forgot" style="background-image: url('../uploads/site/c2.jpg');background-size: 100%">
		<div class="row">
			<div class="col s12 m4 offset-m4"><?= br(4) ?>
				<div class="card hoverable">
					<div class="padding">
						<br><h4><i class="fa fa-lock"></i> Forgot Password</h4>
						Visit Your Email Account and try to input 
						your <strong>"password code"</strong>  here ! <br><br>
						<input type="text" id="code" placeholder="type the code">
						<button id="btn_forgot" class="btn">OK <i class="fa fa-check-circle"></i></button>

						<div id="forgot_password"></div>
						<?= br(2) ?>
					</div>
				</div>
				<?= br(6) ?>
			</div>
		</div>
	</div>
<?= $footer ?>