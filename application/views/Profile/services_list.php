 
 
<br>
<?php if ($this->session->userType == "Administrator"): ?>
	<a href="<?= site_url('services/add_services') ?>" class="card btn btn-<?= $this->session->button ?> btn-sm">
		<i class="fa fa-plus-square"> </i> Add New Services
	</a>
<?php endif; ?>

<?= br(3) ?>
<table class="table table-bordered example">
	<thead>
		<th>Service Name</th>
		<th>Service Description</th>
		<th>Action</th>
	</thead>
	<tbody>
		<?php foreach ($services_list as $service): ?> 
			<?php if ($service['service_name'] != 'dummy' AND $service['service_description'] != 'dummy'): ?> 
				<tr>
					<td><?= $service['service_name'] ?> </td>
					<td><?= $service['service_description'] ?> </td>
					<td style="width: 20%"> 
						<a style="width: 69px;" href="<?= site_url('services/service_view/'.$service['service_id']) ?>"
							class="btn  btn-<?= $this->session->button ?> btn-sm">
							<i class="fa fa-eye"></i> View
						</a>
						<a href="#" data-toggle="modal" data-target="#service<?= $service['service_id'] ?>" 
							class="btn btn-sm btn-danger ">
							<i class="fa fa-trash"></i>
							Delete
						</a>
						 <!-- MODAL DELETE SINGLE CLIENT-->
						<div id="service<?= $service['service_id'] ?>" class="modal fade" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content paper">
									<div class="modal-header"> 
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h5>Delete</h5>
									</div>
									<div class="modal-body">
										<h6>Are you sure you want delete 
											<strong><?= $service['service_name'] ?></strong> 
										</h6> 
									</div>
									<div class="modal-footer"> 
										<a  href="<?= site_url('services/delete/'.$service['service_id']) ?>"  
											class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
											<i class="fa fa-check"></i> Yes
										</a>
									</div>    
								</div>
							</div>
						</div> 
					</td>
				</tr> 
			<?php endif; ?> 
		<?php endforeach; ?>  
	</tbody> 
</table>
	  
 