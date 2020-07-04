<script>
	function previewImage() {
		var oFReader = new FileReader();
		oFReader.readAsDataURL(document.getElementById("image").files[0]);

		oFReader.onload = function(oFREvent) {
			document.getElementById("image-preview").src = oFREvent.target.result;
		};
	};
	function showValue(s1) {  document.getElementById(s1).type="text" ; }
	function hideValue(s1) {  document.getElementById(s1).type="password" ; }
</script>

<?php foreach ($user_info as $user):?>
	<?= $header ?>
	<?= $sidenav ?>
	<?= $alert ?>
	<br><br>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1> User Profile  </h1>
		<ol class="breadcrumb">
			<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
			<li><a href=""><i class="fa fa-tasks"></i> UserAccounts</a></li>
			<li class="active"><a href=""><?= $user['fullName'] ?></a></li> 
		</ol><hr> 
	</section> <br>
	 
 
	
	<div class="col-md-4 panel panel-default">
		<center>
			<br><br>
			<img src="<?= base_url() . $user['imagePath'] ?>" style="width: 300px;height: 300px;" id="image-preview"> 
			<p><br> <?= $user['fullName'] ?></p>
			<p> <?= $user['email'] ?></p>  
			<h3><button class="btn btn-<?= $this->session->button ?> btn-block update_profile" id="update_profile_account"> Update Profile</button></h3>
		</center>
	</div>

	<div class="col-md-8">
		<div id="update_account" class="panel panel-default container-fluid">
			<?= form_open_multipart('account/save_update/'.$user['id']);?>
				<h3>Update Information</h3><br>
				<div class="col-md-6">
					<p>FullName</p>
					<input class="form-control" type="text" name="fullName" value="<?= $user['fullName'] ?>">
					
				</div>

				<div class="col-md-3">
					<input type="hidden" name="userAccountID" value="<?= $user['id'] ?>">
					<p>UserType</p>
					<?php if ($this->session->userType == "Administrator") : ?>
						 <select class="form-control" name="userType">
						 	<option><?= $user['userType'] ?></option>
						 	 <?php if ($user['userType'] == "Administrator") : ?>
						 	 	<option>Engineer</option>
						 	<?php else : ?>
						 		<option>Administrator</option>
						 	<?php endif; ?>
						 </select>
					<?php  else : ?>
						<input class="form-control" type="text" name="userType" value="<?= $user['userType'] ?>" readonly>
					<?php endif; ?>
				</div>
				
				<div class="col-md-3">
					<p>Gender</p>
					<select class="form-control" name="gender">
						<option><?= $user['Gender'] ?></option>
						<?php if ($user['Gender'] == "Female") : ?>
							<option>Male</option>
						<?php  else  : ?>
							<option>Female</option>
						<?php endif; ?>
					</select>
				</div>

				<hr>
				<div class="col-md-6"> 
					<br><br><p>Username</p>
					<input class="form-control" type="text" name="username" value="<?= $user['username'] ?>">


					<br><br><p>Password</p>
					<input id="passwd1" onclick="showValue('passwd1')" oninput="hideValue('passwd1')" 
						onmouseleave="hideValue('passwd1')"  class="form-control" type="password" 
						name="password1" value="<?= $user['password'] ?>">

					  <br><br><p>Re-type Password</p> 

					<input id="passwd2" onclick="showValue('passwd2')" oninput="hideValue('passwd2')" 
						onmouseleave="hideValue('passwd2')" class="form-control" type="password" 
						name="password2" value="<?= $user['password'] ?>"> 
					<br>

					
				</div>
				<div class="col-md-6">
					<br><br><p>EmailAddress</p>
					<input class="form-control" type="text" name="email" value="<?= $user['email'] ?>">
					 

					<br><p><br>Address</p>
					<input class="form-control" type="text" name="address" value="<?= $user['Address'] ?>">

					<br><br><p>UpdateImage</p> 
					<input class="form-control" type="file" name="image" id="image" title ="Image" onchange="previewImage()">
				</div>


				<div class="col-md-6"> 
					<center>
						<br><br> 
						 
						<button   type="submit" class="btn btn-success btn-block">
							<i class="fa fa-check-circle"></i> 
							Save Changes
						</button>
						<br><br> 
					</center>
				</div>
			<?= form_close(); ?>

		</div> 
		<div id="user_details" class="panel panel-default container-fluid">
			<h3>User Information</h3>
			<table class="table">
				<tr>
					<td>FullName</td>
					<td><?= $user['fullName'] ?></td>
				</tr>

				<tr>
					<td>UserType</td>
					<td><?= $user['userType'] ?></td>
				</tr>

				<tr>
					<td>Gender</td>
					<td><?= $user['Gender'] ?></td>
				</tr>

				<tr>
					<td>Username</td>
					<td><?= $user['username'] ?></td>
				</tr>

				<tr>
					<td>Password</td>
					<td>xxxxxxxxx</td>
				</tr>
				<tr>
					<td>email</td>
					<td><?= $user['email'] ?></td>
				</tr>

				<tr>
					<td>Address</td>
					<td><?= $user['Address'] ?></td>
				</tr>
			</table>   
			<hr>  
  
		</div>

	</div>
	<hr><br><br>
	<div class="col-md-12 panel panel-default container-fluid">
		<br>
		<h3>Assigned Projects</h3><br>
		<table class="table" id="example">
			<thead>
				<th>Project name</th>
				<th>Client</th>
				<th>Project Status</th>
				<th>Action</th>
			</thead>
			<tbody>
				<?php foreach ($assigned_project as $ap) : ?>
					<tr>
						<td><?= $ap['project_name'] ?></td>
						<td><?= $ap['client_name'] ?></td>
						<td><?= $ap['projectStatus'] ?></td>
						<td>
							<a href="<?= site_url('project/project_view/'.$ap['id']) ?>" 
							class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
							<i class="fa fa-eye"></i>
							Visit Project
							</a>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
		
	</div>
	
<?php endforeach; ?>
<?= $footer ?>
