<?= $admin_header ?>  
<body onload="self.print()">
	<div style="background-color: white" >
		<?= $header ?>
		<center> <br> <h4>Table Expense Report <?= $year_selected ?></h4></center>
		<br><br><?= date('F d, Y') ?><br><br>
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
	</div>
</body>
<?= $admin_footer ?>
