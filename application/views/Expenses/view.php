<?= $admin_header ?>
<?= $admin_sidenav ?> 
 <br><br>
 <!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Expenses</h1>
       <ol class="breadcrumb">
             <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="<?= site_url('inventory/list/All') ?>"><i class="fa fa-tasks"></i> Expenses</a></li>
       </ol>
       <hr><br>
</section> 
 

<div id="graph">
	<div id="unimportant_for_graphical_report">
		<?= form_open('expenses');?>
			<div class="col-md-3">
				<?php if ($type == "monthly"): ?>
				<select class="form-control select2" name="year" >
					<option disabled selected>Select Year Here (<?= $year_selected ?>)</option>
					<?php for ($year = 2015; $year <= date('Y'); $year++): ?>
						 <option><?= $year ?></option>
					<?php endfor; ?>
				</select>
			<?php else: ?>
				<?php $year_selected = 2017 ; ?>
				<select class="form-control" name="year" style="width: 110%">
					<option disabled selected>From</option>
				</select>
				<select class="form-control" name="year" style="width: 110%">
					<option disabled selected>To</option>
				</select>

			<?php endif; ?>
			</div>
			<div class="col-md-1">
				<button class="btn btn-<?= $this->session->button ?>">
					<i class="fa fa-search"></i>
					Search
				</button>
			</div> 
		<?php form_close() ?>

		<div class="col-md-5"></div>

		<div class="col-md-3">
			<table class="table">
				<tr>
					<td>Material Expense</td>
					<td><div class="expense_label" id="label_material"></div></td>
			
				</tr>
				<tr>
					<td>Worker Expense</td>
					<td><div class="expense_label" id="label_worker"></div></td>

				</tr>
				<tr>
					<td>Transportation Expense</td>
					<td><div class="expense_label" id="label_transpo"></div></td>

				</tr>
				<tr><td></td><td></td></tr> 
			</table>
		</div>

		<!-- BUTTON FOR PRINT -->
		<a href="#" id="print-graph" class="btn btn-success" >
		 	<i class="fa fa-print"></i>
		 	Print
		 </a> 
	</div> 

		<!-- FOR GRAPHICAL REPORT --> 
	<?= $header ?>
	<center>
		<br>
		<h4>Graphical Expense Report <?= $year_selected ?></h4>
	</center>
	 <p style="color: grey">Php</p> 
 
	<div class="chart">
	        <canvas id="barChart" style="height:230px"></canvas>
	</div> 
	<div class="chart">
	       <canvas id="areaChart" style="height:1px;"></canvas>
	</div>  
   
</div>




<?php if ($type == "monthly") : ?>
	 
	<div id="table"> 
		<!-- FOR TABLE REPORT -->
		<div id="unimportant_for_table_report">
			<br><br><br>
			<br><hr><br><br>
			<br><br><br>
			<a href="#" id="print-table"  class="btn btn-success" >
			 	<i class="fa fa-print"></i>
			 	Print
			 </a> 	
		</div>

		<?= $header ?>
		<center>
			<br>
			<h4>Table Expense Report <?= $year_selected ?></h4>
			<br><br>
		</center>
		<?php $total = 0 ?>
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<th>Months</th>
					<th>Material</th>
					<th>Workers</th>
					<th>Transportation</th>
					<th>Total</th> 
				</thead>
				<tbody> 
					<tr>
						<td>January</td>  
						<td><?= $m1 ?></td>  
						<td><?= $w1 ?></td>  
						<td><?= $t1 ?></td>   
						<td><?= $m1 + $w1 + $t1 ?></td>
						<?php $total = $total + $m1 + $w1 + $t1 ?>
					</tr>

					<tr>
						<td>February</td>  
						<td><?= $m2 ?></td>  
						<td><?= $w2 ?></td>  
						<td><?= $t2 ?></td>   
						<td><?= $m2 + $w2 + $t2 ?></td>   
						<?php $total = $total + $m2 + $w2 + $t2 ?>
					</tr>

					<tr>
						<td>March</td>  
						<td><?= $m3 ?></td>  
						<td><?= $w3 ?></td>  
						<td><?= $t3 ?></td>   
						<td><?= $m3 + $w3 + $t3 ?></td>   
						<?php $total = $total + $m3 + $w3 + $t3 ?>
					</tr>

					<tr>
						<td>April</td>  
						<td><?= $m4 ?></td>  
						<td><?= $w4 ?></td>  
						<td><?= $t4 ?></td>   
						<td><?= $m4 + $w4 + $t4 ?></td>   
						<?php $total = $total + $m4 + $w4 + $t4 ?>
					</tr>

					<tr>
						<td>May</td>  
						<td><?= $m5 ?></td>  
						<td><?= $w5 ?></td>  
						<td><?= $t5 ?></td>   
						<td><?= $m5 + $w5 + $t5 ?></td>   
						<?php $total = $total + $m5 + $w5 + $t5 ?>
					</tr>

					<tr>
						<td>June</td>  
						<td><?= $m6 ?></td>  
						<td><?= $w6 ?></td>  
						<td><?= $t6 ?></td>   
						<td><?= $m6 + $w6 + $t6 ?></td>   
						<?php $total = $total +  $m6 + $w6 + $t6 ?>
					</tr>

					<tr>
						<td>July</td>  
						<td><?= $m7 ?></td>  
						<td><?= $w7 ?></td>  
						<td><?= $t7 ?></td>   
						<td><?= $m7 + $w7 + $t7 ?></td>   
						<?php $total = $total + $m7 + $w7 + $t7 ?>
					</tr>

					<tr>
						<td>August</td>  
						<td><?= $m8 ?></td>  
						<td><?= $w8 ?></td>  
						<td><?= $t8 ?></td>   
						<td><?= $m8 + $w8 + $t8 ?></td>   
						<?php $total = $total + $m8 + $w8 + $t8 ?>
					</tr>

					<tr>
						<td>September</td>  
						<td><?= $m9 ?></td>  
						<td><?= $w9 ?></td>  
						<td><?= $t9 ?></td>   
						<td><?= $m9 + $w9 + $t9 ?></td>   
						<?php $total = $total + $m9 + $w9 + $t9 ?>
					</tr>

					<tr>
						<td>October</td>  
						<td><?= $m10 ?></td>  
						<td><?= $w10 ?></td>  
						<td><?= $t10 ?></td>   
						<td><?= $m10 + $w10 + $t10 ?></td>   
						<?php $total = $total + $m10 + $w10 + $t10 ?>
					</tr>

					

					<tr>
						<td>November</td>  
						<td><?= $m11 ?></td>  
						<td><?= $w11 ?></td>  
						<td><?= $t11 ?></td>   
						<td><?= $m11 + $w11 + $t11 ?></td>   
						<?php $total = $total + $m11 + $w11 + $t11 ?>
					</tr>
					<tr>
						<td>December</td>  
						<td><?= $m12 ?></td>  
						<td><?= $w12 ?></td>  
						<td><?= $t12 ?></td>   
						<td><?= $m12 + $w12 + $t12 ?></td>   
						<?php $total = $total + $m12 + $w12 + $t12 ?>
					</tr>
					<tr>
						<td colspan="4">Grand Total</td>
						<td><?= $total ?></td>   
					</tr> 
				</tbody>
			</table>
		</div>
		<br><br> 
	</div>	 

<?php endif; ?>
<?= $admin_footer ?>
<?= $chart ?>
 