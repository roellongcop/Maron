
<table class="table table-bordered responsive-table example" >
	<thead>
		<tr>
			<!-- para to sa heading!-->
			<th>Project No</th>
			<th>Created By</th>
			<th>Project</th> 
			<th>Client</th> 
			<th>EstimatedCost</th>
			<th>Date Created</th> 
			<th>Status</th> 
			<th>Action</th>
		</tr>
	</thead>

	<tbody>
		<?php foreach ($all_list as $quotation) : ?> 
			<tr>
				<td><?= $quotation['quotation_id'] ?></td>
				<td><?= $quotation['created_by'] ?></td>
				<td><?= $quotation['project_name'] ?></td> 
				<td><?= $quotation['client_name'] ?></td>
				<td><?= $quotation['estimated_cost'] ?></td>
				<td><?= $quotation['date_created'] ?></td>
				 
				<td>
					<?php if ($quotation['status'] == 'Approved'): ?>
						<span class="label label-success"><?= $quotation['status'] ?></span>
					<?php else: ?>
						<span class="label label-warning"><?= $quotation['status'] ?></span>
					<?php endif; ?>
				</td>  
		              
				 <td>    
				 		<a title="View Quotation" class="btn btn-<?= $this->session->button ?> btn-sm" 
					 		href="<?= site_url('quotation/view/'.$quotation['quotation_id']) ?>">
					 		<i class="fa fa-eye"></i>  
					 	</a> 
					 	<a title="Delete Quotation" onclick="confirm_quot_delete(<?= $quotation['quotation_id'] ?>)" class="btn btn-danger btn-sm" 
					 		href="#" data-toggle="modal" data-target="#delete_quot">
					 		<i class="fa fa-trash"></i>  
					 	</a>  
				 </td>  
			</tr>
		<?php endforeach; ?> 
	</tbody> 
</table>  
