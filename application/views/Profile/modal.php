 <script>
	function previewImage() {
		var oFReader = new FileReader();
		oFReader.readAsDataURL(document.getElementById("image").files[0]);
		oFReader.onload = function(oFREvent) {
			document.getElementById("image-preview").src = oFREvent.target.result;
		};
	};

	function previewImage1() {
		var oFReader = new FileReader();
		oFReader.readAsDataURL(document.getElementById("image1").files[0]);
		oFReader.onload = function(oFREvent) {
			document.getElementById("image-preview1").src = oFREvent.target.result;
		};
	};
</script>


 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="add_person" class="modal fade" role="dialog">
	<div class="modal-dialog modal-auto">
		<div class="modal-content paper">
			<?= form_open_multipart('personnels/add') ?>
				<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4><i class="fa fa-user-plus"></i> Add Personnel</h4>
				</div>
				<div class="modal-body"> 
			        <table class="table">
			        	<tbody>
			        		<tr>
			        			<th>Personnel Image<br><br>
			        				<input type="file" name="image" id="image" title ="Image" onchange="previewImage()">
			    				</th>
			        			<td style="text-align: center;">
			            			<img src="<?= base_url(). 'uploads/templates/male.png' ?>" id="image-preview"  class="w3-circle image-responsive"> 
			        			</td>
			        		</tr>
			        		<tr>
			        			<th>First Name</th>
			        			<td><input type="text" class="form-control" name="add_fn"></td>
			        		</tr>
			        		<tr>
			        			<th>Middle Name</th>
			        			<td><input type="text" class="form-control" name="add_mn"></td>
			        		</tr>
			        		<tr>
			        			<th>Last Name</th>
			        			<td><input type="text" class="form-control" name="add_ln"></td>
			        		</tr>
			        		<tr>
			        			<th>Email</th>
			        			<td><input type="text" class="form-control" name="add_email"></td>
			        		</tr>
			        		<tr>
			        			<th>Position</th>
			        			<td>
			        				<select style="width: 100%;" class="form-control select2" 
			        					name="add_position">
			        					<option>Manager</option>
			        					<option>Designer</option>
				             			<option>Architect</option>
				             			<option>Engineer</option>
				             			<option>Accountant</option>
				             			<option>Secretary</option>
				             			<option>Hr Personnel</option>
				             			<option>Welder</option>
				             			<option>Electrician</option>
				             			<option>Carpenter</option>
				             			<option>Mason</option>
				             			<option>Painter</option>
				             			<option>Driver</option>  
				             			<option>Plumber</option>
				             			<option>Steelman</option>
				             			<option>Time Keeper</option>
				             			<option>Cashier</option>
				             			<option>Helper</option>
			        				</select>
			        			</td>
			        		</tr>
			        		<tr>
			        			<th>Team</th>
			        			<td>
			        				<select style="width: 100%;" class="form-control select2" name="add_team"> 
			        					<option>Designing</option>
			        					<option>Construction</option>
			        					<option>Fabrication</option>
			        				</select>
			        			</td>
			        		</tr>
			        	</tbody>
			        </table>
				</div>
				<div class="modal-footer"> 
			        <button class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
						<i class="fa fa-save"></i>  Save Personnel
			        </button>
				</div>    
			<?= form_close() ?>
		</div>
	</div>
</div>


 
 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="update_person" class="modal fade" role="dialog">
	<div class="modal-dialog modal-auto">
		<div class="modal-content paper">
			<?= form_open_multipart('personnels/update') ?>
				<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><i class="fa fa-edit"></i> Update Personnel Information</h4>
				</div>
				<div class="modal-body">
                    <input type="hidden" name="personnel_id" id="personnel_id">
                    <table class="table">
                    	<tbody>
                    		<tr>
                    			<th>Personnel Image<br><br>
                    				<input type="file" name="image1" id="image1" title ="Image" onchange="previewImage1()">
                				</th>
                    			<td style="text-align: center;">
                        			<img src="" id="image-preview1"  class="w3-circle image-responsive">
                    			</td>
                    		</tr>
                    		<tr>
                    			<th>First Name</th>
                    			<td><input type="text" class="form-control" name="fn" id="fn"></td>
                    		</tr>
                    		<tr>
                    			<th>Middle Name</th>
                    			<td><input type="text" class="form-control" name="mn" id="mn"></td>
                    		</tr>
                    		<tr>
                    			<th>Last Name</th>
                    			<td><input type="text" class="form-control" name="ln" id="ln"></td>
                    		</tr>
                    		<tr>
                    			<th>Email</th>
                    			<td><input type="text" class="form-control" name="email" id="email"></td>
                    		</tr>
                    		<tr>
                    			<th>Position</th>
                    			<td>
                    				<select style="width: 100%;" class="form-control " 
                    					name="position" id="position">
                    					<option>Manager</option>
                    					<option>Designer</option>
				             			<option>Architect</option>
				             			<option>Engineer</option>
				             			<option>Accountant</option>
				             			<option>Secretary</option>
				             			<option>Hr Personnel</option>
				             			<option>Welder</option>
				             			<option>Electrician</option>
				             			<option>Carpenter</option>
				             			<option>Mason</option>
				             			<option>Painter</option>
				             			<option>Driver</option>  
				             			<option>Plumber</option>
				             			<option>Steelman</option>
				             			<option>Time Keeper</option>
				             			<option>Cashier</option>
				             			<option>Helper</option>
                    				</select>
                    			</td>
                    		</tr>
                    		<tr>
                    			<th>Team</th>
                    			<td>
                    				<select style="width: 100%;" class="form-control " name="team" id="team" > 
                    					<option>Designing</option>
                    					<option>Construction</option>
                    					<option>Fabrication</option>
                    				</select>
                    			</td>
                    		</tr>
                    	</tbody>
                    </table>
				</div>
				<div class="modal-footer"> 
					<button class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
						<i class="fa fa-check"></i> Save Changes
					</button>
				</div>    
			<?= form_close() ?>
		</div>
	</div>
</div>



 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="add_profile" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content paper">
			<?= form_open_multipart('profile/add') ?>
				<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><i class="fa fa-plus-square"></i> Add Company Information</h4>
				</div>
				<div class="modal-body">
					<table class="table">
						<tbody>
							<tr>
								<th>Title</th>
								<td>
									<input type="text" name="profile_title" id="profile_title" class="form-control">
								</td>
							</tr>

							<tr>
								<th>Description</th>
								<td>
									<textarea name="profile_description" id="profile_description" class="form-control compose"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer"> 
					<button class="btn btn-<?= $this->session->button ?> btn-block">
						<i class="fa fa-check-circle"></i> Save
					</button>
				</div>    
			<?= form_close() ?>
		</div>
	</div>
</div>




 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="delete_profile" class="modal fade" role="dialog">
	<div class="modal-dialog modal-auto">
		<div class="modal-content paper"> 
			<div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4><i class="fa fa-edit"></i> Add Company Information</h4>
			</div>
			<div class="modal-body" id="confirm_delete_profile"></div>     
		</div>
	</div>
</div>