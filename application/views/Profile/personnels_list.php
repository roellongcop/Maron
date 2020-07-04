 
<br><br>
<?php if ($this->session->userType == "Administrator"): ?>
	<a data-toggle="modal" data-target="#add_person" class="card btn btn-<?= $this->session->button ?> btn-sm" >
		<i class="fa fa-plus-square"> </i> Add New Personnel
	</a>
<?php endif; ?>

<?= br(3) ?>
<table class="table table-bordered example">
	<thead>
		<th>Full Name</th>
		<th>Email</th>
		<th>Position</th>
		<th>team</th>
		<th>Action</th>
	</thead>
	<tbody>
		<?php foreach ($personnels_list as $person): ?> 
			<tr>
				<td>
					<img class="personnel" src="<?= base_url() . $person['image_path'] ?>" >
					<?= $person['first_name'].' '.$person['middle_name'].'. '.$person['last_name'] ?> 
				</td>
				<td><?= $person['email'] ?> </td>
				<td><?= $person['position'] ?> </td>
				<td><?= $person['team'] ?> </td>
				<td style="width: 20%"> 
					<a  style="width: 69px;" onclick="show_update_form(<?= $person['personnel_id'] ?>,'<?= $person['first_name'] ?>', '<?= $person['middle_name'] ?>', '<?= $person['last_name'] ?>', '<?= $person['email'] ?>', '<?= $person['position'] ?>', '<?= $person['team'] ?>','<?= base_url().$person['image_path'] ?>')" class="btn btn-sm btn-<?= $this->session->button ?>" 
						data-toggle="modal" data-target="#update_person"> <i class="fa fa-edit"></i> Edit
					</a>
			 
					<a href="#" data-toggle="modal" data-target="#d_person<?= $person['personnel_id'] ?>" 
						class="btn btn-sm btn-danger"> <i class="fa fa-trash"></i> Delete
					</a>

					 
					 <!-- MODAL DELETE SINGLE CLIENT-->
					<div id="d_person<?= $person['personnel_id'] ?>" class="modal fade" role="dialog">
						<div class="modal-dialog modal-sm">
							<div class="modal-content paper">
								<div class="modal-header"> 
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h5>Delete</h5>
								</div>
								<div class="modal-body">
									<h6>Are you sure you want delete 
										<strong><?= $person['first_name'].' '.$person['last_name'] ?></strong> 
									</h6> 
								</div>
								<div class="modal-footer"> 
									<a  href="<?= site_url('personnels/person_delete/'.$person['personnel_id']) ?>"  
										class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
										<i class="fa fa-check"></i> Yes
									</a>
								</div>    
							</div>
						</div>
					</div>

				</td>
			</tr>  
		<?php endforeach; ?>  
	</tbody> 
</table> 
<script type="text/javascript">
	function show_update_form(id, fn, mn, ln, email, position, team, path) {
		$('#personnel_id').val(id);
		$('#fn').val(fn);
		$('#mn').val(mn);
		$('#ln').val(ln);
		$('#email').val(email);
		$('#position').val(position);
		$('#team').val(team);
		$('#image-preview1').src(path); 
	}
</script>
 
