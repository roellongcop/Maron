<?= $header ?>
<?= $navigation ?>
 

<div id="padding">   
	<div class="row">
		<div class="col s12 m12">
			<div class="hide-on-small-only"> 
				<ul class="tabs">
			        	<li class="tab col s4 m4">
			        		<a class="active" href="#info"><b>
			        			<i class="fa fa-info"></i> PROJECT INFORMATION</b>
			        		</a>
			        	</li>
			        	<li class="tab col s4 m4">
			        		<a href="#expenses"><b><i class="fa fa-paypal"></i> EXPENSES</b></a>
			        	</li> 
			        	<li class="tab col s4 m4">
			        		<a href="#acc"><b><i class="fa fa-comments"></i> ACCOMPLISHMENTS</b></a>
			        	</li> 
			      	</ul> 
		      	</div>
		      	<div class="hide-on-large-only">
			      	<ul class="tabs">
			        	<li class="tab col s4 m4">
			        		<a class="active tooltipped" data-position="bottom" 
							data-delay="50" data-tooltip="View Project Information" href="#info">
							<i class="fa fa-info tab-icon"></i>
						</a>
					</li> 
					<li class="tab col s4 m4">
			        		<a class="tooltipped" data-position="bottom" 
							data-delay="50" data-tooltip="View Project Expenses" href="#expenses">
							<i class="fa fa-paypal tab-icon"></i>
						</a>
					</li> 
					<li class="tab col s4 m4">
			        		<a class="tooltipped" data-position="bottom" 
							data-delay="50" data-tooltip="View Project Accomplishments" href="#acc">
							<i class="fa fa-comments tab-icon"></i>
						</a>
					</li> 
			      	</ul>
		      	</div>
		</div>
	</div>

	<div class="row" id="info">
		<?php foreach ($project_info as $pi) : ?>
			<div class="row"> 
				<div class="col s12 m6"> 
					<h4><?= $pi['project_name'] ?></h4> 
					<div class="chip grey">
				    		<img src="<?= base_url() . $pi['image'] ?>" alt="Contact Person">
				    		<?= $pi['fullName'] ?>
				  	</div>    
				</div> 
				<div class="col s12 m6 right-align"> 
					<br><br> 
					<input type="hidden" id="quotation-id-view" value="<?= $pi['quotation_id'] ?>">
					<button id="btn-quotation-view" class="waves-effect waves-light btn tooltipped" 
						data-position="bottom" data-delay="50" data-tooltip="View Quotation">
						<i class="fa fa-pencil"></i> View quotation
					</button>
					 
				</div>
				<div class="col s12 m12"><hr></div> 
			</div>
		<?php endforeach; ?>
		<div class="col s12 m5"> 
		 	<div class="card hoverable">
		            <div class="card-image">
		              	<img src="<?= base_url() . $pi['imagePath'] ?>" class="materialboxed project_img"> 
		            </div>  
	         	</div>
		</div>
		<div class="col s12 m7"> 
		 	<h5 class="left-align"><i class="fa fa-info"></i> <b>INFORMATION</b></h5><br>
		 	<table class="bordered">
		 		<tbody>
		 			<?php foreach ($project_info as $pi) : ?>
		 				<blockquote>
		 					<strong><i class="fa fa-wrench"></i> Project Name : </strong><?= $pi['project_name'] ?><br>
		 					<br><strong><i class="fa fa-book"></i> Description : </strong><?= $pi['scope_of_work'] ?><br>
		 					<br><strong><i class="fa fa-map-marker"></i> Address : </strong><?= $pi['project_address'] ?><br>
		 					<br><strong><i class="fa fa-refresh"></i> Status : </strong><?= $pi['projectStatus'] ?><br>
		 					<br><strong><i class="fa fa-calendar"></i> Date Started : </strong><?= $pi['date_started'] ?><br>
		 					<br><strong><i class="fa fa-calendar"></i> Expected Finished Date : </strong><?= $pi['expected_finished'] ?><br>
		 				</blockquote> 
		 			<?php endforeach; ?>
		 		</tbody>
		 	</table> 
		</div>
	</div>
 
	<div class="row" id="expenses">
		<div class="fixed-action-btn"> 
			<a class="btn-floating btn-large teal tooltipped" data-position="left" data-delay="50" 
		    		data-tooltip="Filter Expenses">
				<i class="fa fa-filter"></i> 
			</a>
			<ul> 
				<li>
					<a id="btn_materials" class="btn-floating blue tooltipped" data-position="left" data-delay="50" 
				    		data-tooltip="Materials Expenses"><i class="fa fa-wrench"></i>
				    	</a>
		    		</li>
		    		<li>
					<a id="btn_workers" class="btn-floating green tooltipped" data-position="left" data-delay="50" 
				    		data-tooltip="Workers Expenses"><i class="fa fa-group"></i>
				    	</a>
		    		</li>
		    		<li>
					<a id="btn_transportations" class="btn-floating red tooltipped" data-position="left" data-delay="50" 
				    		data-tooltip="Transportation Expenses"><i class="fa fa-road"></i>
				    	</a>
		    		</li>
 
			</ul>
		</div>
		     
		<div class="col s12 m12">
			<div id="materials">
			 	<h5 class="left btn"><i class="fa fa-wrench"></i> Materials Expenses</h5>  
				<table class="bordered responsive-table example">
					<thead>
						<tr>
							<th>Incharge</th>
							<th>Name</th>
							<th>Description</th>
							<th>Unit</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Cost</th>
							<th>Date Added</th>
						</tr>
					</thead>

					<tbody> 
						<?php foreach($materials as $m) : ?>
							<tr>
								<td>
									<div class="chip grey">
								    		<img src="<?= base_url() . $m['imagePath'] ?>" alt="Contact Person">
								    		<?= $m['fullName'] ?>
								  	</div>
								</td>
								<td><?= $m['materialName'] ?></td> 
								<td><?= $m['materialDescription'] ?></td> 
								<td><?= $m['unit'] ?></td> 
								<td><?= $m['price'] ?></td> 
								<td><?= $m['quantity'] ?></td> 
								<td><?= $m['cost'] ?></td> 
								<td><?= $m['dateAdded'] ?></td> 
							</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			</div>

			<div id="workers">
			 	<h5 class="left btn"><i class="fa fa-group"></i> Workers Expenses</h5>  
				<table class="bordered responsive-table example">
					<thead>
						<tr>
							<th>Incharge</th>
							<th>Position</th>
							<th>Salary</th>
							<th>Quantity</th>
							<th>DaysWorked</th>
							<th>Cost</th>
							<th>Date Added</th>
						</tr>
					</thead>

					<tbody> 
						<?php foreach($workers as $w) : ?>
							<tr>
								<td>
									<div class="chip">
								    		<img src="<?= base_url() . $w['imagePath'] ?>">
								    		<span style="color: #000"><?= $w['fullName'] ?></span>
								  	</div>
								</td>
								<td><?= $w['workerPosition'] ?></td> 
								<td><?= $w['salary'] ?></td> 
								<td><?= $w['quantity'] ?></td> 
								<td><?= $w['daysWorked'] ?></td> 
								<td><?= $w['cost'] ?></td> 
								<td><?= $w['dateAdded'] ?></td> 
							</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			</div>

			<div id="transportations">
			 	<h5 class="left btn"><i class="fa fa-road"></i> Transportation Expenses</h5>  
				<table class="bordered responsive-table example">
					<thead>
						<tr>
							<th>Incharge</th>
							<th>From</th>
							<th>To</th>
							<th>Cost</th>
							<th>Receit no.</th> 
							<th>Date Added</th>
						</tr>
					</thead>

					<tbody> 
						<?php foreach($transportations as $t) : ?>
							<tr>
								<td>
									<div class="chip">
								    		<img src="<?= base_url() . $t['imagePath'] ?>" alt="Contact Person">
								    		<span style="color: #000"><?= $t['fullName'] ?></span>
								  	</div>
								</td>
								<td><?= $t['transportFrom'] ?></td>  
								<td><?= $t['transportTo'] ?></td>  
								<td><?= $t['cost'] ?></td>  
								<td><?= $t['receit_no'] ?></td>  
								<td><?= $t['dateAdded'] ?></td>  
							</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="row" id="acc">
 		<div class="col s12 m12">
			<input type="hidden" name="" id="project_id" value="<?= $pi['id'] ?>">
			 
		 	<h5 class="btn"><i class="fa fa-comments"></i> ACCOMPLISHMENTS</h5><br>
		 	<div class="input-field col s12 m4">
	                     <i class="fa fa-filter prefix"></i>
			 	<input placeholder="Date Filter" type="text" class="datepicker" id="filter_accomplishments">
			 </div>
		 	<div id="accomplishments_filtered">
			 	<?php foreach ($accomplishments as $a) : ?>  
				 	<div class="col s12 m12">  
				 		<div class="chip">
					    		<img src="<?= base_url() . $a['imagePath'] ?>" alt="Contact Person">
					    		<span style="color: #000"><?= $a['fullName'] ?></span>
					  	</div>  
				        	<p><?= $a['date_accomplished'] ?></p> 
				          	<?= $a['caption'] ?> 
				   		<center> 
							<?php foreach ($images as $i) : ?> 
								<?php if($a['accomplishment_id'] == $i['accomplishment_no'] ): ?>
									<div class="col s6 m2">
								    		<img data-caption=""  class="a_img materialboxed card" src="<?= base_url() . $i['image_path'] ?>"> 
								    	</div>
								<?php endif; ?>
						    	<?php endforeach ?> 
						</center>
						
					</div>
					<div class="col s12 m12"><br><br><hr></div>
				<?php endforeach ?>
			</div>
		</div>

	</div> 
</div> 
<?= $footer ?>