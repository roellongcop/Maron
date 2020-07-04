<?= $admin_header ?> 

<body onload="self.print()">
	<div style="background-color: #fff">
		<?= $header ?> 
		<?php foreach ($quotation_info as $quotation): ?>
			<div class="pull-right">
				<table class="table" style="width: 150%"> 
					<tbody>
						<tr>
							<th>Quotation No :</th>
							<td>MBC <?= $quotation['quotation_id'] ?></td>
						</tr>
						<tr>
							<th>Date</th>
							<td><?= date('Y / m / d') ?></td>
						</tr>
						<tr>
							<th>Terms</th>
							<td><?= $quotation['terms'] ?></td>
						</tr>
						<tr>
							<th>Completion</th>
							<td><?= $quotation['completion'] ?> Working Days</td>
						</tr>
						<tr><td></td><td></td></tr>
					</tbody>
				</table>
			</div>
			<div class="pull-left">
			
				<p>To : <?= $quotation['client_name'] ?> <br><?= $quotation['client_position'] ?></p>
			</div>

			<br><br><br>
			<p><b>Project:</b> <?= $quotation['project_name'] ?></p>

			<br>
			<table class="table">
				<tr>
					<td><h5>1. DEFINITION</h5></td>
				</tr>
				<tr>
					<td><pre><?= $quotation['scope_of_work'] ?></pre></td>
				</tr>

				<tr>
					<td><h5>2. BILL OF QUANTITIES</h5></td>
				</tr>
				<tr>
					<td><pre><?= $quotation['bill_of_quantities'] ?></pre></td>
				</tr>

			<!-- 	<tr>
					<td><h5>3. TERMS AND CONDITION</h5></td>
				</tr>
				<tr>
					<td><pre><?= $quotation['terms_and_condition'] ?></pre></td>
				</tr> -->
			</table>
			  
			<h5>Total Contract Amount: <?= number_format($quotation['estimated_cost'] , 2) ?> Pesos</h5>
			<br><br> 
			<p class="left7">
				Should all the above conditions merit your approval, please sign your notice of acceptance on the space provided hereunder and <p>return to us one (1) copy which will serve as our contract.
				<p class="left7">
					Thank you for giving us a chance to quote and we assure you that our price can compete in high quality in service.
				</p>
			<p>Make all Checks Payable to Maron Builders Co.</p>
			<div class="pull-left"><br><br><br><br> 
				<p>Prepared and Checked by:</p><br><br>
				<p class="t3f"> 
					<b class="overline"><?= strtoupper($quotation['created_by']) ?></b></p> 
					<p class="t3"><i>ENGINEER</i></p>
				<br><br><br>

				<p class="t3f"><b class="overline">MARIA LYN T. BUEBOS</b></p>
				<p class="t3"><i>FINANCE MANAGER</i></p>
			</div>
			<div class="pull-right"><br><br><br><br>
				<p>Approved by:</p><br><br><br><br><br> 
				<p class="t3f"><b class="overline">RONE S. MANRIQUE</b></p>
				<p class="t3"><i>GENERAL MANAGER</i></p>
				<p class="t3">Mobile: 09335121261</p>
			</div>
			<center> <?= br(17) ?> 
				<p>If you have any questions about this price quote, please contact us using the contact information above.</p>
			</center>
		<?php endforeach; ?>
	</div>
</body>
<?= $footer ?>