<?= $header ?>
<?= $sidenav ?>
<?= $alert ?>
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header"> 
	<h1><i class="fa fa-group"></i>Account <small>All Account List</small></h1>
	<ol class="breadcrumb">
		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
		<li><a href=""><i class="fa fa-tasks"></i> UserAccounts</a></li>
		<li class="active"><a href=""><?= $this->session->inCharge ?></a></li>
	</ol><hr>
</section>  
 

<!-- ADD AT DELETE BUTTONS -->
<?php if ($this->session->userType == "Administrator"): ?>
	<div class="pull-right"> 
		<!--  <button class=" btn btn-danger btn-sm " data-toggle="modal" data-target="#delete_all_account">
		<i class="fa fa-trash"></i>  DeleteAll
		</button>  -->

		<a class="btn btn-<?= $this->session->button ?> btn-sm" href="<?= site_url('account/add_form') ?>">
			<i class="fa fa-user-plus"> </i> Add Useraccount
		</a>
		<br>
	</div>
<?php endif; ?>



<br><br><br><br> 
<?php foreach ($users as $user): ?>
		        		
	<div class="col-md-3">
		<div class="container-fluid text-center bg-grey">   
	      		<div class="thumbnail  w3-card-2	">
	      			<a href="<?= site_url('account/update_form/'.$user['id']) ?>">
		        		<img src="<?= base_url() . $user['imagePath'] ?>" style="width: 100%;height: 200px;">
		        	</a>
		        	<p><strong><?= $user['fullName'] ?></strong></p>
	        		<p><?= $user['userType'] ?></p>
	      		</div>  
		</div> 
	</div>

	<!-- MODAL PARA SA DELETE CONFIRMATION -->
	<div id="deleteUserAccount<?= $user['id']; ?>" class="modal fade" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content paper">
				<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h5>Delete</h5>
				</div>
				<div class="modal-body">
					<h6>Are you sure you want delete <?= $user['fullName'] ?> user accounts ?</h6>
				</div>
				<div class="modal-footer">
					<a href="<?= site_url('account/delete/'.$user['id']) ?>" class="btn btn-<?= $this->session->button ?> btn-block btn-sm " > <i class="fa fa-check"></i> Yes
					</a>  
				</div>    
			</div>
		</div>
	</div> 
<?php endforeach; ?>
 
<?= $footer ?>
