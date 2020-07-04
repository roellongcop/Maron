<?= $admin_header ?> 
<body onload="window.print()">
	<div style="background-color: #fff">
		<?= $header ?>
		<center>
			<br>
			<h4><b>EXPENSES REPORT</b></h4>
			<p><?= strtoupper($entry)?> EXPENSES ENTRY</p>
		</center>
		<br> 
		<p style="float: left;">Person In Charge : <?= $this->session->inCharge ?></p>   
		<p style="float: right;">Date : <?= date('F d, Y') ?></p>   
		 
		 <?php foreach ($project_info as $project): ?>
			<?php foreach ($quot_info as $quot): ?>
				<?php if ($quot['quotation_id'] == $project['quotation_no']) : ?>

			 	 <br>
			 	 <p style="clear: right;float: left;">
		 	 		Project Name : 
		 	 		<?= $quot['project_name'] ?>
		 	 		
		 	 	</p> 
				<p style="clear: right;float: right;">
					Client : 
					<?= $project['client_name'] ?>
				</p> 
				<p style="clear: right;float: left;">
					Project Description : 
					<?= $quot['scope_of_work'] ?>
				</p> 
				<p style="clear: right;float: right;">
					Status : 
					<?= $project['projectStatus'] ?>
				</p> 
			 <?php endif; ?>
			 <?php endforeach; ?>
		 <?php endforeach; ?>
			
		

		<div class="table-responsive" style="clear: right;">
			<h6>MATERIALS ENTRY</h6>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Date</th>
						<th>InCharge</th>
						<th>MaterialName</th>
						<th>Unit</th>
						<th>Size</th>
						<th>Color</th>
						<th>Cost</th> 
					</tr>
				</thead> 
				<tbody>    
					<?php $totalCostMaterial = 0; ?>
					<?php foreach ($material_info as $material): ?>
						<tr>
							<td><?= $material['dateAdded'] ?></td>
							<td><?= $material['PersonInCharge'] ?></td>
							<td><?= $material['materialName'] ?></td>
							<td><?= $material['unit'] ?></td>
							<td><?= $material['size'] ?></td>
							<td><?= $material['color'] ?></td>
							<td><?= $material['cost'] ?></td>
							<?php $totalCostMaterial = $totalCostMaterial + $material['cost'] ?>
						</tr>  
					<?php endforeach; ?>
						<tr>
							<td colspan="6"> Total </td>
							<td >
								<?= $totalCostMaterial ?>
							</td>
						</tr>
					 
				</tbody>
			</table>
		</div>  
		<div class="table-responsive">
			<h6>WORKERS ENTRY</h6>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Date</th>
						<th>InCharge</th>
						<th>Position</th>
						<th>Salary</th>
						<th>Quantity</th>
						<th>DaysWorked</th>
						<th>Cost</th> 
					</tr>
				</thead> 
				<tbody>    
					 
						
						<?php $totalCostWorker=0; ?>
						 <?php foreach ($worker_info as $worker): ?>
						 	<tr>
								<td><?= $worker['dateAdded'] ?></td>
								<td><?= $worker['PersonInCharge'] ?></td>
								<td><?= $worker['workerPosition'] ?></td>
								<td><?= $worker['salary'] ?></td>
								<td><?= $worker['quantity'] ?></td>
								<td><?= $worker['daysWorked'] ?></td>
								<td><?= $worker['cost'] ?></td>
								<?php $totalCostWorker = $totalCostWorker + $worker['cost'] ?>
							</tr> 
						<?php endforeach; ?>
							
						<tr>
							<td colspan="6"> Total </td>
							<td >
								<?= $totalCostWorker ?>
							</td>
						</tr>
					 
				</tbody>
			</table>
		</div> 
		<div class="table-responsive">
			<h6>TRANSPORTATIONS ENTRY</h6>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Date</th>
						<th>InCharge</th>
						<th>From</th>
						<th>To</th> 
						<th colspan="2">Cost</th> 
					</tr>
				</thead> 
				<tbody>    
					 
						<?php $totalCostTrans=0; ?>
						 <?php foreach ($transpo_info as $transpo): ?>
							<tr>
								<td><?= $transpo['dateAdded'] ?></td>
								<td><?= $transpo['PersonInCharge'] ?></td>
								<td><?= $transpo['transportFrom'] ?></td>
								<td><?= $transpo['transportTo'] ?></td> 
								<td><?= $transpo['cost'] ?></td>
								<?php $totalCostTrans = $totalCostTrans + $transpo['cost'] ?>
							</tr> 
						<?php endforeach; ?>
						<tr>
							<td colspan="4"> Total </td>
							<td >
								<?php echo $totalCostTrans ?>
							</td>
						</tr>
					 
				</tbody>
			</table>
		</div> 
		<div class="table-responsive">
			<h6>TOTAL</h6>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Materials</th>
						<th>Worker</th>
						<th>Transportation</th> 
						<th colspan="2">Cost</th> 
					</tr>
				</thead> 
				<tbody>    
					<?php  $totalCost = $totalCostMaterial + $totalCostWorker + $totalCostTrans ; ?>
						
						<tr>
							<td><?= $totalCostMaterial ?></td>
							<td><?= $totalCostWorker ?></td>
							<td><?= $totalCostTrans ?></td> 
							<td > <?= $totalCost ?> </td>
						</tr>
					 
				</tbody>
			</table>
		</div> 
	</div> 
</body>
</html>

<?= $admin_footer ?> 
