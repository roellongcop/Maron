
	<br>
       <table class="table table-bordered responsive-table example">
	
		<thead>
			<tr>
		              <!-- para to sa heading!-->
		              <th>ID</th>
		              <th>Project</th> 
		              <th>Client</th> 
		              <th>EstimatedCost</th>
		              <th>Expense</th>
		              <th>Profit</th>   
		              <th>Action</th>
	              </tr>
		</thead>

		<tbody>
			<?php foreach ($pending_list as $list) : ?>
				<?php foreach ($quot_info as $quot) : ?>
					<?php if ($quot['quotation_id'] == $list['quotation_no']) : ?>
						<tr>
							<td><?= $list['id'] ?></td>
							<td><?= $quot['project_name'] ?></td>  
							<td><?= $list['client_name'] ?></td>
							<td><?= $quot['estimated_cost'] ?></td>
							<td><?= $list['expenses'] ?></td>
							<td><?= $list['profit'] ?></td>  
					 		<td> 
				 			 	<a class="btn btn-primary btn-sm btn-block" href="<?= site_url('project/project_view/'.$list['id']) ?>">
						 			<i class="fa fa-info"></i> 
						 			View Details
						 		</a> 
						    		
							 </td> 
						</tr>
					<?php endif; ?>
				<?php endforeach; ?>
			<?php endforeach; ?>
				
		</tbody>
		
	</table> 
