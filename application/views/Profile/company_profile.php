<br>
<?php if ($this->session->userType == "Administrator"): ?>
	<a data-toggle="modal" data-target="#add_profile" class="card btn btn-<?= $this->session->button ?> btn-sm" >
	       <i class="fa fa-plus-square"> </i>
	       Add New Company Information
	</a>

<?php endif; ?>
<?= br(3) ?>
<table class="table table-bordered example">
	<thead>
		<th>Title</th>
		<th>Description</th>
		<th>Action</th>
	</thead>
	<tbody>
		<?php foreach ($company_profile as $prof) : ?>
			<tr>
				<td><?= $prof['legend'] ?></td>
				<td><?= $prof['description'] ?></td>
				<td style="width: 100px;">
					<a title="Edit this information" href="<?= site_url('profile/update_form/' . $prof['profile_id']) ?>" class="btn btn-warning btn-sm"  >
						<i class="fa fa-edit"></i>
					</a>
					<button title="Delete this information" onclick="show_profile(<?= $prof['profile_id'] ?>)" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete_profile">
						<i class="fa fa-trash"></i>
					</button>
				</td>
			</tr>
			 
		<?php endforeach; ?>
	</tbody>
</table>
   
 