<?= $header ?>
<?= $navigation ?>
 
                     
              
<div id="padding" >  
	<div class="row">   
        <h4 class="grey-color">
        	<div class="btn btn-floating"><i class="fa fa-pencil"></i></div> Quotation View
        </h4><hr>
   	</div>
   	<div class="row">
   		<div class="col s12 m12">
	   		<blockquote>
		   		<?php foreach ($quotation as $q): ?>
		   			<input type="hidden" id="quotation_id" value="<?= $q['quotation_id'] ?>">
		   			<div class="row">
			   			<div class="col s12 m9">
				   			<h4><?= $q['project_name'] ?></h4>
				   			<p><?= $q['scope_of_work'] ?></p>
				   		</div>
			   			<div class="col s12 m3">
			   				<blockquote>
				   				<p><strong>Terms of Payment : </strong> <?= $q['terms'] ?> </p>
				   				<p><strong>Completion : </strong> <?= $q['completion'] ?> Working Days</p>
			   				</blockquote>
			   			</div>
			   		</div>
		   			

		   			<?= br(3) ?>

		   			<h5>BILL OF QUANTITIES</h5>
		   			<?= $q['bill_of_quantities'] ?> 

		   			<?= br(3) ?>

		   			<a href="#tac" class="btn tooltipped modal-trigger" data-position="bottom" data-delay="50" 
		    		data-tooltip="View our Terms and Conditions" >OUR TERMS AND CONDITION</a>
		    		<!-- <h5>OUR TERMS AND CONDITION</h5> -->

		   			<?= $q['terms_and_condition'] ?> 

		   			<?= br(3) ?>
		   			<h5><strong>Total Contract Amount : <?= number_format($q['estimated_cost'] , 2) ?> Pesos</strong></h5>

		   			<?= br(3) ?>
		   			<p>Thank you for giving us a chance to quote and we assure you that our price can compete in high quality in service.</p>
		   			<p>By clicking the <strong>"Approved"</strong> button below, We assume that all the above conditions merit your approval.</p>
		   			<br>

		   			

		   			<p> Prepared and Checked by: <br><br>
		   				<strong><?= strtoupper($q['created_by']) ?></strong><br> 
						<i>ENGINEER</i><br><br>
						<strong>MARIA LYN T. BUEBOS</strong><br>
						<i>FINANCE MANAGER</i>
					</p><br>

					<p>Approved by:<br>
					<strong>RONE S. MANRIQUE</strong><br>
					<i>GENERAL MANAGER</i></p>

					<?php if ($q['status'] == 'Approved'): ?><br>
						<button class="btn-large active">Already Approved
							<i class="fa fa-check-circle"></i>
						</button>
					<?php else: ?>	
						<br><button id="btn-approved" class="btn-large">approved this quotation <i class="fa fa-thumbs-up"></i></button>
					<?php endif ?>
					

		   			<br><br><p>If you have any questions about this price quote, please contact us using the 
		   				<a href="#contacts_modal" class="modal-trigger"> <ins>contact information here</ins></a>.</p><br>
		   		<?php endforeach ?> 
	   		</blockquote>
   		</div>
   	</div> 

</div>



<?= $footer ?>
<?= $modal ?>