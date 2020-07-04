<?= $header ?>
<?= $sidenav ?> 

<br><br>
<section class="content-header"> 
	<h1> <i class="fa fa-send"></i>Request <small>All Request List</small> </h1>
	<ol class="breadcrumb">
		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
		<li class="active"><a href=""> Request</a></li>
	</ol><hr>
</section>
<div class="panel panel-default container-fluid">
	<div class="nav-tabs-custom">
		<ul class="nav nav-tabs">
			<li class="active">
				<a  data-toggle="tab" href="#all">
					<i class="fa fa-address-book"></i> All Records 
					<span>(<?= $this->session->request ?>)</span>
				</a>
			</li>
			<li>
				<a  data-toggle="tab" href="#pending">
					<i class="fa fa-spinner"></i> Pending 
					<span>(<?= $this->session->pending_request ?>)</span>
				</a>
			</li> 
			<li>
				<a  data-toggle="tab" href="#approved">
					<i class="fa fa-check"></i> Approved 
					<span>(<?= $this->session->approved_request ?>)</span>
				</a>
			</li>   
		</ul>
	</div>

	<div class="tab-content">
		<div id="all" class="tab-pane fade in active">
			<table class="table table-bordered responsive-table example">
				<thead>
					<tr>
						<th>ID</th>
						<th>Client</th> 
						<th>Project Name</th> 
						<th>Description</th>
						<th>Address</th> 
						<th>Status</th> 
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($all as $list) : ?>  
						<tr>
							<td><?= $list['request_id'] ?></td>
							<td><?= $list['client_name'] ?></td>  
							<td><?= $list['project_name'] ?></td>
							<td><?= $list['description'] ?></td>
							<td><?= $list['address'] ?></td>
							<?php if ($list['status'] == 0): ?>
								<td><span class="label label-warning">Pending</span> </td>
							<?php elseif ($list['status'] == 2): ?>
								<td><span class="label label-success">Approved</span> </td>
							<?php endif ?>
							<td> 
								<a class="btn btn-primary btn-sm btn-block" 
									href="<?= site_url('request/request_view/'.$list['request_id']) ?>">
									<i class="fa fa-info"></i> View Details
								</a> 
							</td> 
						</tr> 
					<?php endforeach; ?>
				</tbody>
			</table> 
		</div>
		<div id="pending" class="tab-pane fade in">
			<table class="table table-bordered responsive-table example">
				<thead>
					<tr>
						<th>ID</th>
						<th>Client</th> 
						<th>Project Name</th> 
						<th>Description</th>
						<th>Address</th> 
						<th>Status</th> 
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($pending as $list) : ?>  
						<tr>
							<td><?= $list['request_id'] ?></td>
							<td><?= $list['client_name'] ?></td>  
							<td><?= $list['project_name'] ?></td>
							<td><?= $list['description'] ?></td>
							<td><?= $list['address'] ?></td>
							<?php if ($list['status'] == 0): ?>
								<td><span class="label label-warning">Pending</span> </td>
							<?php elseif ($list['status'] == 2): ?>
								<td><span class="label label-success">Approved</span> </td>
							<?php endif ?>
							<td> 
								<a class="btn btn-primary btn-sm btn-block" 
									href="<?= site_url('request/request_view/'.$list['request_id']) ?>">
									<i class="fa fa-info"></i> View Details
								</a> 
							</td> 
						</tr> 
					<?php endforeach; ?>
				</tbody>
			</table> 
		</div>
		<div id="approved" class="tab-pane fade in">
			<table class="table table-bordered responsive-table example">
				<thead>
					<tr>
						<th>ID</th>
						<th>Client</th> 
						<th>Project Name</th> 
						<th>Description</th>
						<th>Address</th> 
						<th>Status</th> 
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($approved as $list) : ?>  
						<tr>
							<td><?= $list['request_id'] ?></td>
							<td><?= $list['client_name'] ?></td>  
							<td><?= $list['project_name'] ?></td>
							<td><?= $list['description'] ?></td>
							<td><?= $list['address'] ?></td>
							<?php if ($list['status'] == 0): ?>
								<td><span class="label label-warning">Pending</span> </td>
							<?php elseif ($list['status'] == 2): ?>
								<td><span class="label label-success">Approved</span> </td>
							<?php endif ?>
							<td> 
								<a class="btn btn-primary btn-sm btn-block" 
									href="<?= site_url('request/request_view/'.$list['request_id']) ?>">
									<i class="fa fa-info"></i> View Details
								</a> 
							</td> 
						</tr> 
					<?php endforeach; ?>
				</tbody>
			</table>  
		</div> 
	</div>

	
</div>
<?= $footer ?>
