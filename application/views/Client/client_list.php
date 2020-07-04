<?= $header ?>
<?= $sidenav ?>
<?= $alert ?>
<br><br> 

<!-- Content Header (Page header) -->
<section class="content-header"> 
	<h1><i class="fa fa-group"></i>Our<span class="hidden-xs text-muted">Clients</span></h1> 
	<ol class="breadcrumb">
		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
		<li><a href="<?= site_url('project/list/All') ?>"><i class="fa fa-tasks"></i> Client</a></li>
	</ol><hr>
</section>  
 
<?php if ($this->session->userType == "Administrator"): ?>
	<div class="pull-right"> 
	<!--      <button class=" btn btn-danger btn-sm " data-toggle="modal" data-target="#delete_client">
	<i class="fa fa-trash"></i> 
	DeleteAll
	</button>  --> 
	<a class="btn btn-<?= $this->session->button ?>" title="Add new client"  data-toggle="modal" href="#add_client"> 
		<i class="fa fa-plus-square"> </i> Add Client
	</a>
	</div><br><br>
<?php endif; ?>



<div class="panel panel-default container-fluid"><br>
	<table class="table table-bordered responsive-table example">
		<thead>
			<tr>
				<th>Full Name</th> 
				<th>Position</th> 
				<th>Mobile Number</th> 
				<th>Email Address</th>
				<th>House Address</th> 
				<th>Action</th>
			</tr>
		</thead> 
		<tbody>
			<?php foreach ($client_list as $list) : ?>
				<?php if ($list['client_name'] != 'dummy'): ?>
					<tr> 
						<td><?= $list['client_name'] ?></td> 
						<td><?= $list['client_position'] ?></td> 
						<td><?= $list['client_number'] ?></td>
						<td><?= $list['client_email'] ?></td>
						<td><?= $list['client_address'] ?></td> 
						<td> 
							<button title="Deactivate Account" class="btn btn-warning" data-toggle="modal"
							data-target="#del_client_<?= $list['client_no'] ?>">
							Deactivate
							</button>
						</td> 

						<!-- MODAL DELETE SINGLE CLIENT-->
						<div id="del_client_<?= $list['client_no'] ?>" class="modal fade" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content paper">
									<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4> <i class="fa fa-trash"></i> Deactivate </h4>
									</div>
									<div class="modal-body">
										<h6>Are you sure you want deactivate 
											<strong><?= $list['client_name'] ?></strong> client ?
										</h6> 
									</div>
									<div class="modal-footer"> 
										<a  href="<?= site_url('client/delete/'.$list['client_no']) ?>"  
											class="btn btn-<?= $this->session->button ?> btn-block">
											<i class="fa fa-check"></i> Yes
										</a>
									</div>    
								</div>
							</div>
						</div>
					</tr>
				<?php endif; ?>
			<?php endforeach; ?>

		</tbody>
	</table>
 
</div> 

<?= $footer ?>
<?= $modal ?>
