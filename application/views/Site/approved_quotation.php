<?= $header ?> 
<?= $navigation ?>  
<div id="padding" >  
	<div class="row">   
        <h4 class="grey-color">
        	<div class="btn btn-floating"><i class="fa fa-check"></i></div> Approval Success
        </h4><hr>
   	</div>
   	<div class="row">
   		<?php foreach ($about as $a): ?>
   			<?php if ($a['legend'] == 'Company_address'): ?> 
	   			<p>
	   				For <strong class="pink-color">Final Verification</strong> of your project,<br>
	   				You can personally go to our company  
	   				which is located at <?= $a['description'] ?> <br>
	   				or contact Us with our 
	   				<a href="#contacts_modal" class="modal-trigger"><ins>contact information</ins></a>
	   			</p>
	   			<button class="btn" id="btn-project-list">my project list</button>
   			<?php endif ?>
   		<?php endforeach ?> 
   	</div>
 
</div>   
<?= $footer ?> 
<?= $modal ?> 