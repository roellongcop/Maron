<?= $header ?> 
<?= $sidenav ?> 

<?= br(3) ?>
<div id="alert"></div>
<script>   
 
       function previewImage() {
              var oFReader = new FileReader();
              oFReader.readAsDataURL(document.getElementById("image").files[0]);

              oFReader.onload = function(oFREvent) {
              document.getElementById("image-preview").src = oFREvent.target.result;
              };
       }; 
       function activate(id) {
       	document.getElementById(id).class = "active";
       }

</script>    
<?= $alert ?> 
<?php foreach ($project_info as $project) : ?>
	<?php foreach ($quot_info as $quot) : ?>
		<?php if ($quot['quotation_id'] == $project['quotation_no']) : ?>
 			<?php $quotation_id = $quot['quotation_id'] ?>
			<section class="content-header" id="go_to_top"> 
				<h1>Project View</h1>
			       <ol class="breadcrumb">
			              <li>
				       	<a href="<?= site_url('dashboard') ?>">
				       		<i class="fa fa-dashboard"></i> 
				       		Dashboard
				       	</a>
				       </li>
				       <li>
				       	<a href="<?= site_url('project/list/All') ?>">
					       	<i class="fa fa-tasks"></i>
					       	Projects
					       </a>
				       </li>
				       <li class="active">
				       	<a href=""><?= $quot['project_name'] ?></a>
				       </li> 
			       </ol> 
			      
			</section>   
			<?= br(3) ?>
		  	<div class="nav-tabs-custom">
		              <ul class="nav nav-tabs">
		                     <li class="active">
		                            <a  data-toggle="tab" href="#presentation">
		                                   <i class="fa fa-area-chart"></i>
		                                   Expense Presentation  
		                            </a>
		                     </li>
		                     <li>
		                            <a  data-toggle="tab" href="#information">
		                                   <i class="fa fa-info"></i>
		                                   Information  
		                            </a>
		                     </li> 
		                     <li>
		                            <a  data-toggle="tab" href="#accomplishment">
		                                   <i class="fa fa-paperclip"></i>
		                                   Accomplishments 
		                            </a>
		                     </li> 
		                     <li>
		                            <a  data-toggle="tab" href="#breakdown">
		                                   <i class="fa fa-money"></i>
		                                   Expense Breakdown  
		                            </a>
		                     </li>  
		                     <li>
		                            <a  data-toggle="tab" href="#nav_leader">
		                                   <i class="fa fa-user-circle"></i>
		                                   Project Leader 
		                            </a>
		                     </li>  
		              </ul>
		       </div>
		       <div class="tab-content">
		              <div id="presentation" class="tab-pane fade in active">
		              	<?= br(3) ?>
					<h3>Expenses Presentation
						<div class="dropdown pull-right">
						  	<button class="btn btn-<?= $this->session->button ?> dropdown-toggle" type="button" data-toggle="dropdown">
						  		<i id="plus" class="fa fa-print"> </i> Print Expenses
						  	</button>
					  		<ul class="dropdown-menu">
					    			<li>
					    				<a id="btn-print-expenses-today" href="#">
					    					Today's Entry
					    				</a>
					    			</li>
					    			<li>
					    				<a id="btn-print-expenses-all" href="#">
					    					All Entry
					    				</a>
					    			</li>
					  		</ul>
						</div>
					</h3>
					<br><br>
					<div class="col-md-6">
						<div id="chart" class="chart">
						       <canvas id="pieChart" style="height:230px"></canvas>
						</div>
						<br>
						<table class="table"> 
							<tr>
								<td class="pull-right">Material Expense</td>
								<td>
									<div class="expense_label" id="label_material_expense"></div>
								</td>
								<td class="pull-right">Worker Expense</td>
								<td>
									<div class="expense_label" id="label_worker_expense"></div>
								</td>
								<td class="pull-right">Transportation Expense</td>
								<td>
									<div class="expense_label" id="label_transpo_expense"></div>
								</td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<div class="chart">
						       <canvas id="pieChart2" style="height:230px"></canvas>
						</div>
						<br>
						<table class="table"> 
							<tr>
								<td class="pull-right">Total Expenses</td>
								<td>
									<div class="expense_label" id="label_expense"></div>
								</td> 
								<td class="pull-right">Total Profit</td>
								<td>
									<div class="expense_label" id="label_profit"></div>
								</td>
							</tr>
						</table>
					</div>

					<?= br(3) ?>
					
					<div class="chart">
					       <canvas id="areaChart" style="height:1px;"></canvas>
					</div> 

				</div>   

		              <div id="information" class="tab-pane fade in">
		              	<a class="btn btn-<?= $this->session->button ?>" href="#" data-toggle="modal" data-target="#start" title="Project Status">
						<i class="fa fa-pencil"></i>
						Update Status 
					</a>
		              	<div id="project_information">
						<tr>
							<br>
							
							<div class="pull-left">
								<h3><?=  $quot['project_name'] ?></h3> 
							</div> 
						</tr>

						<tr>
							<div class="col-md-12">
								<?php foreach ($project_leader as $lead): ?>
									<h4 style="color: dimgrey">Project Leader : <?= $lead['fullName'] ?> </h4> 
								<?php endforeach; ?>
								<hr>   
							</div>
							 
						</tr>

						<tr>
							<div class="col-md-5">
								<img class="img-responsive  w3-card-4" id="image-preview" src=" <?= base_url() . $project['imagePath'] ?>" 
									id="image-preview"> <br>  
								<?= form_open_multipart('project/update_image') ?>
									<input type="hidden" name="pro_id" value="<?= $project['id'] ?>">
									<input style="height: 35px;" type="file" name="image" id="image" 
										title ="Image" onchange="previewImage()"> 
								 
									<button id="btn-project-image" class="btn btn-primary btn-block">
										<i class="fa fa-check-circle"></i>
										Set project Image
									</button> 
								<?= form_close() ?>
							</div>
							<div class="col-md-7">

							 	<h4>Project</h4>
							 	<blockquote>
								 	<table class="table">
								 		<tr>
								 			<td>Project Name</td>
								 			<td><?= $quot['project_name'] ?></td>
								 		</tr>

								 		<tr>
								 			<td>Description </td>
								 			<td> <?= $quot['scope_of_work'] ?> </td>
								 		</tr>

								 		<tr>
								 			<td>Address</td>
								 			<td><?= $quot['project_address'] ?></td>
								 		</tr>

								 		<tr>
								 			<td>Status</td>
								 			<td id="p_stats"><?= $project['projectStatus'] ?></td>
								 		</tr>

								 		<tr>
								 			<td>Date Started </td>
								 			<td><?= $quot['date_started'] ?></td>
								 		</tr>

								 		<tr>
								 			<td>Expected Finished Date</td>
								 			<td><?= $quot['expected_finished'] ?></td>
								 		</tr>
								 	</table> 
								</blockquote>
							 	<br><h4>Client</h4>
							 	<blockquote>
								 	<table class="table">
								 		<tr>
								 			<td>Client Name</td>
								 			<td><?= $project['client_name'] ?></td>
								 		</tr>
								 		<tr>
								 			<td>Client Position</td>
								 			<td><?= $project['client_position'] ?></td>
								 		</tr> 
								 		<tr>
								 			<td>Client Address</td>
								 			<td><?= $project['client_address'] ?></td>
								 		</tr>
								 		<tr>
								 			<td>Contact Number</td>
								 			<td><?= $project['client_number'] ?></td>
								 		</tr>
								 		<tr>
								 			<td>Contact Email</td>
								 			<td><?= $project['client_email'] ?></td>
								 		</tr>
								 	</table> 
							 	</blockquote>
							 	<br>
							</div>
						</tr>

						<tr><div class="col-md-12"><hr></div></tr>

						<tr>
							<div class="col-md-5">
								<br><h4>Cost(Estimated)</h4>
								<blockquote>
									<table class="table">
										<thead>
								 			<th>Cost Category</th>
								 			<th>Php</th>
								 		</thead>
								 		<tbody>
								 			<tr>
									 			<td>Material Cost</td>
									 			<td><?= $quot['material_cost'] ?></td>
									 		</tr>
									 		<tr>
									 			<td>Worker Cost</td>
									 			<td><?= $quot['worker_cost'] ?></td>
									 		</tr>
									 		<tr>
									 			<td>Transportation Cost</td>
									 			<td><?= $quot['transpo_cost'] ?></td>
									 		</tr>
									 		<tr>
									 			<td>Total Estimated Cost</td>
									 			<td><?= $quot['estimated_cost'] ?></td>
									 		</tr> 
									 		<tr>
									 			<td></td>
									 			<td></td>
											</tr> 
								 		</tbody> 
								 	</table>
							 	</blockquote>
							</div>
							<div class="col-md-7">
								<br><h4>Expenses</h4>
								<blockquote>
								 	<table class="table">
								 		<thead>
								 			<th>Expense Category</th>
								 			<th>Php</th>
								 		</thead>
								 		<tbody>
								 			<tr>
									 			<td>Material Expense</td>
									 			<td><?= $t_mat ?></td>
									 		</tr>
									 		<tr>
									 			<td>Worker Expense</td>
									 			<td><?= $t_wor ?></td>
									 		</tr>
									 		<tr>
									 			<td>Transportation Expense</td>
									 			<td><?= $t_tra ?></td>
									 		</tr>
									 		<tr>
									 			<td>Total Expense</td>
									 			<td><?= $t_mat + $t_wor +  $t_tra ?></td>
									 		</tr>
									 		<tr>
									 			<td>Total Profit</td>
									 			<td><?= $project['profit']  ?></td>
									 		</tr>
								 		</tbody>
								 		
								 	</table> 
							 	</blockquote>
							</div>	 
						</tr>
					</div>
		              </div>


		              <div id="accomplishment" class="tab-pane fade in">
		               	<br><br>
					<h3>Project Accomplishments</h3>
					<div class="nav-tabs-custom">
						<ul class="nav nav-tabs"> 
				  			<li class="active">
				  				<a data-toggle="tab" href="#browse"><i class="fa fa-wrench"></i> View Accomplishments</a>
				  			</li>
				  			<li><a data-toggle="tab" href="#upload"><i class="fa fa-group"></i> Upload Accomplishments </a></li>
							
						</ul>  
					</div>
					<div class="tab-content" > 
						<div id="browse" class="tab-pane fade in active"> 
							<?php $round = 1 ?>
							<?php foreach ($accomplishments_list as $acc) : ?>
									 
								<?php if ($round == 1) : ?>
							 		<div class="col-md-12">
										 <br> 
										 <img class="incharge_img" src="<?= base_url() . $acc['imagePath'] ?>">
										 <?= $acc['fullName'] ?>
										 <h5><?= $acc['date_accomplished'] ?></h5> 
										<h5><?= $acc['caption'] ?></h5><br>
										<!-- <br><button class="btn btn-primary btn-sm">Read More</button> -->
										<?php $round += 1 ;
										$fn = $acc['fullName'];
										$ca = $acc['caption'];
										$dc = $acc['date_accomplished']; ?>
								 	</div>
								<?php else :  ?> 
									<?php if ($fn != $acc['fullName'] OR $ca != $acc['caption'] 
										OR $dc != $acc['date_accomplished']) : ?>
										<div class="col-md-12">
											<br><hr><br>
											<img class="incharge_img" src="<?= base_url() . $acc['imagePath'] ?>">
											 <?= $acc['fullName'] ?> 
											 <h5><?= $acc['date_accomplished'] ?></h5>
											<?= $acc['caption'] ?> 
										</div>
										<?php $fn = $acc['fullName'];
										$ca = $acc['caption'];
										$dc = $acc['date_accomplished']; ?> 	 
									<?php endif ?>
										
								<?php endif; ?>
								<div class="col-md-2 col-sm-4 col-xs-6">
									<!-- <a   href="<?= base_url(). $acc['image_path'] ?>" target="_blank"> -->
										<img class="thumbnail accomplishment w3-card-2"  src="<?= base_url(). $acc['image_path'] ?>">
									<!-- </a>  -->
								</div>
							<?php endforeach; ?> 
				  		</div>
				  		<div id="upload" class="tab-pane fade" >
				  			<div class="col-md-6">
				  				<?= form_open('accomplishment/save') ?>
					  				<br><br>
					  				<p><i>Accomplishment Description</i></p>
					  				<textarea style="height: 300px;" class="form-control compose" placeholder="Accomplishment Caption" 
					  				name="caption"></textarea>
					  				<br>
								    	<button type="submit" class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
								    		<i class="fa fa-save"></i>
								    		Save
								    	</button>
							    	<?= form_close()  ?>
				  			</div>
				  			<div class="col-md-6"> 
				  				<br><br>
				  				<p><i>Uploads Images</i></p>
								<div class="image_upload_div">
									<form  action="<?= site_url('accomplishments/upload') ?>" class="dropzone"> 
								    	</form> 
			  					</div> 
					  		</div>
				  			 
				  		</div>
					</div>

		              </div>

		              <div id="breakdown" class="tab-pane fade in">
		          		<h3> <br><br>Expenses Breakdown</h3> 
					<div class="nav-tabs-custom">
						<ul class="nav nav-tabs"> 
				  			<li class="active"><a data-toggle="tab" href="#mat"><i class="fa fa-wrench"></i> Materials</a></li>
				  			<li><a data-toggle="tab" href="#wor"><i class="fa fa-group"></i> Workers </a></li>
				  			<li><a data-toggle="tab" href="#tra"><i class="fa fa-road"></i> Trasportation </a></li>
				  			<li class="pull-right"> 
				  				<div class="dropdown pull-right">
								  	<button class="btn btn-<?= $this->session->button ?> dropdown-toggle" type="button" data-toggle="dropdown">
								  		<i id="plus" class="fa fa-plus-square"> </i> Add Expenses
								  	</button>
							  		<ul class="dropdown-menu">
							    			<li>
							    				<a href="#" data-toggle="modal" 
								    				data-target="#addMaterialExpense">
								    				<i class="fa fa-wrench btn btn-warning btn-xs"></i>
								    				Materials
							    				</a>
							    			</li>
							    			<li>
							    				<a href="#" data-toggle="modal" 
							    					data-target="#addWorkerExpense">
								    				<i class="fa fa-group btn btn-primary btn-xs"></i>
							    					Worker
							    				</a>
							    			</li>
							    			<li>
							    				<a href="#" data-toggle="modal" 
							    					data-target="#addTransportationExpense">
								    				<i class="fa fa-road btn btn-success btn-xs"></i>
							    					Transportation
							    				</a>
							    			</li>
							  		</ul>
								</div>
							</li>
						</ul>
					</div>


					<div class="tab-content" >
				  		<div id="mat" class="tab-pane fade in active" >
							<?= $material ?>
				  		</div>
				  		<div id="wor" class="tab-pane fade"  >
				    			<?= $worker ?>
				  		</div>
				  		<div id="tra" class="tab-pane fade" >
					    		<?= $transpo ?>
				  		</div>
					</div>
		              </div> 

		              <div id="nav_leader" class="tab-pane fade in">
		              	<?= form_open('project/leader') ?>
	                                   <?php foreach ($project_leader as $lead) : ?>
	                                          <div class="col-md-8"></div>
	                                          <div class="col-md-4">
	                                          	<br><select class="form-control select2" style="width: 300px;" id="find_leader" name="leader">
		                                                 <option disabled selected>Select New Project Leader Here</option>
		                                                 <?php foreach ($users_list as $user) : ?>
		                                                        <option value="<?= $user['id'] ?>">
		                                                               <?= $user['fullName'] ?>
		                                                        </option> 
		                                                 <?php endforeach; ?>
		                                          </select><br>
	                                          </div> 
	                                           
	                                          
	                                          <div id="project_leader">
	                                                 <div class="col-md-5"> 
	                                                        <center> 
	                                                               <img class="image-preview" src="<?= base_url() . $lead['imagePath'] ?>"    
	                                                               " id="image-preview"> 
	                                                               <p><br><i>Current Leader</i></p> 
	                                                        </center> 
	                                                 </div>
	                                                 <div class="col-md-7">

	                                                         <br><br><h4>User Information<br></h4> 
	                                                        <table class="table">
	                                                               <tbody>
	                                                                      <tr>
	                                                                             <th>FullName</th>
	                                                                             <td><?= $lead['fullName'] ?></td>
	                                                                      </tr>
	                                                                      <tr>
	                                                                             <th>Email Address</th>
	                                                                             <td><?= $lead['email'] ?></td>
	                                                                      </tr>
	                                                                      <tr>
	                                                                             <th>Gender</th>
	                                                                             <td><?= $lead['Gender'] ?></td>
	                                                                      </tr>
	                                                                      <tr>
	                                                                             <th>Home Address</th>
	                                                                             <td><?= $lead['Address'] ?></td>
	                                                                      </tr>
	                                                                      <tr>
	                                                                             <th>User Type</th>
	                                                                             <td><?= $lead['userType'] ?></td>
	                                                                      </tr>
	                                                               </tbody>
	                                                        </table>
	                                                 </div>

	                                          </div>                       
	                                          
	                                   <?php endforeach; ?>
	                                  
	                           
	                                   <div class="col-md-12"> </div>
	                                   <div class="col-md-5"> 
	                                          <center><button type="submit" class="btn btn-<?= $this->session->button ?> ">
	                                                 <i class="fa fa-check-circle"></i>
	                                                 Set as Project Leader
	                                          </button>  </center>
	                                   </div>
	                                   <div class="col-md-7"> </div>

	                            <?= form_close() ?>
		              </div>
		       </div>  
			
			<div class="col-md-12">
				<br><br><br><br><br><br>
				<a href="#go_to_top" class="btn btn-<?= $this->session->button ?> btn-block">
					<i class="fa fa-arrow-up"></i>
					Go to Top
				</a>
			</div>

		<?php endif; ?>
	<?php endforeach; ?>
<?php endforeach; ?>
<?= $footer ?>
<?= $chart ?>
<?= $modal ?>