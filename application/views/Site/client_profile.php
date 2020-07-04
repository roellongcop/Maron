<?= $header ?>
<?= $navigation ?> 

 
  
<div id="padding">    
	<h4 class="form_header"><div class="btn btn-floating"><i class="fa fa-user"></i></div> Your Profile</h4> <hr> 
	<div class="row">
		<div class="col s12 m4"> 
			<div id="client_info">
				<ul class="collection with-header" id="client_data">
				</ul>
			</div>
		</div>

		<div class="col s12 m8">   
			<div id="update_info">
				<br><h5><i class="fa fa-edit"></i> Update your Information</h5><hr><br>
				<div class="input-field col s12 m6">
					<input id="name" name="name" type="text" class="validate"  required>
					<label for="name" id="lblname"></label>
				</div>

				<div class="input-field col s12 m6">
					<input id="position" name="position" type="text" class="validate" >
					<label for="position" id="lblposition"></label>
				</div>

				<div class="input-field col s12 m6">
					<input id="number" name="number" type="text" class="validate" >
					<label for="number" id="lblnumber"></label>
				</div>

				<div class="input-field col s12 m6">
					<input id="email" name="email" type="text" class="validate" required>
					<label for="email" id="lblemail"></label>
				</div>

				<div class="input-field col s12 mm12">
					<input id="address" name="address" type="text" class="validate" required>
					<label for="address" id="lbladdress"></label>
				</div> 

				<div class="input-field col s12 m6">
					<input id="client-username" name="username" type="text" class="validate" required>
					<label for="username" id="lblusername"></label>
				</div> 

				<div class="input-field col s12 m6">
					<br><button  
					type="submit" id="btn_update_profile" 
					class="waves-effect waves-light btn right">
					Update Changes 
					<i class="fa fa-pencil"></i>
					</button>
				</div>
			</div> 

			<div id="manage_password">
				<br><h5><i class="fa fa-lock"></i> Password</h5><hr><br>
				<div class="input-field col s12 m6">
					<input id="old_pass" name="old_pass" type="password" class="validate">
					<label for="old_pass">Old Password</label>
				</div>

				<div class="input-field col s12 m6">
					<input id="new_pass" name="new_pass" type="password" class="validate">
					<label for="new_pass">New Password</label>
				</div>

				<div class="input-field col s12 m12">
					<input id="re_pass" name="re_pass" type="password" class="validate">
					<label for="re_pass">Re-enter Password</label>
				</div>

				<div class="input-field col s12 m12">
					<br><button id="btn_change_pass" class="waves-effect waves-light btn right">
					Update Changes 
					<i class="fa fa-pencil"></i>
					</button> 
				</div>
			</div>
		</div>
	</div> 
</div> 
 
<?= $footer ?> 
  