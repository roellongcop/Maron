<script type="text/javascript">
	function e_compute_cost() {
		var price, qty , total;
		price = parseFloat(document.getElementById('e_mprice').value);
		qty = parseFloat(document.getElementById('e_mquantity').value);
		total = price * qty;
		document.getElementById('e_tm_cost').value = total;
	}

	function e_getCostWorker() {
		var price, qty , days , total;
		price = parseFloat(document.getElementById('e_sal').value);
		qty = parseFloat(document.getElementById('e_quan').value);
		days = parseFloat(document.getElementById('e_worked').value);
		total = price * qty * days;
		document.getElementById('e_tw_cost').value = total;
	}
</script>

<!-- ADD MATERIALS EXPENSES -->
<div id="e_addMaterialExpense" class="modal fade" role="dialog">
       <div class="modal-dialog modal-lg" >
              <!-- Modal content-->
              <div class="modal-content paper" style="height: 550px">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">
                            	<i class="fa fa-edit"></i>
                            	Update Material Expense
                            </h4>
                     </div>
                     <div class="modal-body">
				<?php echo form_open('expense/update_material');?> 
					<input type="hidden" name="pro_id" value="<?= $key ?>">
					<input type="hidden" name="material_id" id="material_id">
					<tr>
						<div class="col-md-4"> 
							<br><p>Material Name</p>
							<input type="text" name="e_name" id="e_name" class="form-control" required>
						</div>
						<div class="col-md-4"> 
							<br><p>Unit</p>
							<select class="form-control select2" name="e_unit" id="e_unit">
			                                	<option>Pieces</option>
				                            <option>Box</option>
				                            <option>Meter</option>
				                            <option>Liter</option>
				                            <option>kilogram</option>
				                            <option>Pack</option>
				                            <option>Dozen</option>
				                            <option>Bundle</option>
							</select> 
						</div>
						<div class="col-md-4"> 
							<br><p>Size</p>
							<input type="text" name="e_size" id="e_size" class="form-control" required>
						</div>
					</tr>
					<tr>
						<div class="col-md-8"> 
							<br><p>Item Description</p>
							<textarea type="text" name="e_description" id="e_description" 
								class="form-control" required></textarea><br>
						</div>
						<div class="col-md-4">
							<br> <p>Color</p>
							<input type="text" name="e_color" id="e_color" class="form-control"> 
						</div>
						

					</tr>
					 
					<tr>
						 <div class="col-md-12"> </div>
						<div class="col-md-4"> 
							<br><p>Price</p>
							<input oninput="e_compute_cost()" id="e_mprice" type="number" name="e_price" 
								class="form-control" required><br>
						</div> 
						<br><div class="col-md-4"> 
							<br><p>Quantity</p>
							<input oninput="e_compute_cost()" id="e_mquantity" type="number" name="e_quantity" class="form-control">
						</div>
						<div class="col-md-4"> 
							<br><p>Total Cost</p>
							<input id="e_tm_cost" name="e_tm_cost" class="form-control" value="0.00 Pesos" readonly>
						</div> 
					</tr>
					<tr>
						<div class="col-sm-12"></div>
						<div class="col-sm-4">
							<p>Source</p>
								<input type="text" name="e_source" id="e_source" class="form-control"> 
							</div>
						<div class="col-sm-4"> 
							<p>Date Added</p>
							<input type="date" name="e_dateAdded_m"  id="e_dateAdded_m" class="form-control" readonly> 
							  
						</div>
						<div class="col-sm-4">  
							<p>Person Incharge</p>
	                                          <input type="text" name="e_pic" id="e_pic_m" class="form-control" readonly>
	                                          <br>
	                                   </div>
					</tr>

					
					<div class="col-sm-12"> 
							<br><button name="e_saveAddMaterialExpense" class="btn btn-<?= $this->session->button ?> btn-sm btn-block" style="font-size: 8px;"> 
								<i class="fa fa-save"></i> 
								Save
							</button>  
					</div>
				</form>
			</div> 
		</div>
	</div>
</div>

<!-- ADD WORKER EXPENSES -->
<div id="e_addWorkerExpense" class="modal fade" role="dialog">
       <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content paper">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">
                            	<i class="fa fa-edit"></i>
                            	Edit Worker Expense
                            </h4>
                     </div>
                     <div class="modal-body">
				<?php echo form_open('expense/update_worker');?>
					<input type="hidden" name="pro_id" value="<?= $key ?>">
					<input type="hidden" name="worker_id" id="worker_id">
					<table class="table">
						<tbody>
							<tr>
								<th>Worker Position</th>
								<td>
									<input type="text" name="e_position" id="e_position" class="form-control" required>
								</td>
							</tr>

							<tr>
								<th>Salary</th>
								<td>
									<input oninput="e_getCostWorker()" id="e_sal" type="number" name="e_salary" 
										class="form-control" required>
								</td>
							</tr>
							<tr>
								<th>Quantity</th>
								<td>
									<input oninput="e_getCostWorker()" id="e_quan" type="number" name="e_quantity" 
										class="form-control" required>
								</td>
							</tr>
							<tr>
								<th>Days Worked</th>
								<td>
									<input oninput="e_getCostWorker()" id="e_worked" type="number" name="e_daysWorked" 
										class="form-control" required>
								</td>
							</tr>
							<tr>
								<th>Cost</th>
								<td>
									<input id="e_tw_cost" type="number" name="e_tw_cost" class="form-control" value="0.00" readonly>
								</td>
							</tr>
							
							<tr>
								<th>Date Added</th>
								<td>
									<input type="date" name="e_dateAdded" id="e_dateAdded_w" 
										class="form-control" readonly>
								</td>
							</tr>
							<tr>
								<th>Person Incharge</th>
								<td>
									<input type="text" name="e_pic" id="e_pic_w" class="form-control" readonly>
								</td>
							</tr>
						</tbody>
					</table>
					 
					<div class="col-sm-12">
						<center>
							<br><br><button name="e_saveAddWorkerExpense" class="btn btn-<?= $this->session->button ?> btn-sm  btn-block" 
									style="font-size: 8px;">
									<i class='fa fa-save'></i> 
									SaveThis 
							</button> 
						</center>
						<br>
					</div>
				</form>
			</div>
			 <div class="modal-footer"> </div>

		</div>
	</div>
</div>

<!-- ADD TRANSPORTATION EXPENSES -->
<div id="e_addTransportationExpense" class="modal fade" role="dialog">
       <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content paper">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">
                            	<i class="fa fa-edit"></i>
                            	Update Transportation Expense
                            </h4>
                     </div>
                     <div class="modal-body">
                     	
                            <?php echo form_open('expense/update_transpo');?>
                            <input type="hidden" name="pro_id" value="<?= $key ?>">
				<input type="hidden" name="transpo_id" id="transpo_id">
                            	<table class="table">
                            		<tbody>
	                            		<tr>
	                            			<th>Destination From</th>
	                            			<td>
	                            				<input type="text" name="e_from" id="e_from" class="form-control" required>
	                            			</td>
	                            		</tr>
	                            		 <hr> 
	                            		<tr>
	                            			<th>Destination To</th>
	                            			<td>
	                            				<input type="text" name="e_to" id="e_to" class="form-control" required>
	                            			</td>
	                            		</tr>
	                            		<tr>
	                            			<th>Cost</th>
	                            			<td>
	                            				<input type="number" name="e_cost" id="e_cost" class="form-control" required>
	                            			</td>
	                            		</tr>
	                            		<tr>
								<th>Receit No</th>
								<td>
									<input id="e_receit" type="text" name="e_receit" class="form-control" readonly>
								</td>
							</tr>
	                            		<tr>
	                            			<th>Date Added</th>
	                            			<td>
	                            				<input type="date" name="e_dateAdded_t" id="e_dateAdded_t" 
	                            				class="form-control"  readonly>
	                            			</td>
	                            		</tr>
	                            		<tr>
	                            			<th>Person Incharge</th>
	                            			<td>
	                            				<input type="text" name="e_pic" id="e_pic_t" class="form-control" readonly>
	                            			</td>
	                            		</tr>
						</tbody>
                            	</table>
                        
                                   <div class="col-sm-12">
                                          <center>
                                                 <br><button name="e_saveAddTranportationExpense" class="btn btn-<?= $this->session->button ?> btn-sm btn-block" 
                                                        style="font-size: 8px;">
                                                        <i class='fa fa-save'></i> 
                                                        SaveThis 
                                                 </button> 
                                          </center>
                                          <br>
                                   </div>
                            </form>
                     </div>
                     <div class="modal-footer"> </div>
              </div>
       </div>
</div>