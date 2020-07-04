<script type="text/javascript">
	function compute_cost() {
		var price, qty , total;
		price = parseFloat(document.getElementById('mprice').value);
		qty = parseFloat(document.getElementById('mquantity').value);
		total = price * qty;
		document.getElementById('tm_cost').value = total;
	}

	function getCostWorker() {
		var price, qty , days , total;
		price = parseFloat(document.getElementById('sal').value);
		qty = parseFloat(document.getElementById('quan').value);
		days = parseFloat(document.getElementById('worked').value);
		total = price * qty * days;
		document.getElementById('tw_cost').value = total;
	}
</script>

<!-- Add MATERIALS EXPENSES -->
<div id="addMaterialExpense" class="modal fade" role="dialog">
       <div class="modal-dialog modal-lg" >
              <!-- Modal content-->
              <div class="modal-content paper" style="height: 480px;">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3>
                            	<i class="fa fa-wrench"></i>
                            	Add Material Expense
                            </h3>
                     </div>
                     <div class="modal-body">
				<?php echo form_open('expense/add_material');?> 
				<input type="hidden" name="pro_id" value="<?= $key ?>">
					<div class="col-sm-4"> <p>Material Name</p>
						<input type="text" name="name" class="form-control" required>
					</div>
					<div class="col-sm-4"> <p>Unit</p>
						<select class="form-control select2" name="unit">
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
					<div class="col-sm-4"> <p>Size</p>
						<input type="text" name="size" class="form-control" required>
					</div>
					<div class="col-sm-12"> <p>Item Description</p>
						<textarea type="text" name="description" class="form-control" required></textarea><br>
					</div>
					<div class="col-sm-4"> <p>Price</p>
						<input oninput="compute_cost()" id="mprice" type="number" name="price" class="form-control" required>
					</div>
					<div class="col-sm-4"> <p>Quantity</p>
						<input oninput="compute_cost()" id="mquantity" type="number" name="quantity" class="form-control">
					</div>
					<div class="col-sm-4"> <p>Total Cost</p>
						<input id="tm_cost" name="tm_cost" class="form-control" value="0.00 Pesos" readonly>
					</div>
					<div class="col-sm-4"> <p>Color</p>
						<input type="text" name="color" class="form-control"> 
					</div>
					<div class="col-sm-4"> <p>Receit No</p>
						<input type="text" name="source" class="form-control"> 
					</div>
					<!-- <div class="col-sm-4"> <p>Date Added</p>
						<div class="input-group date">
			                            <div class="input-group-addon">
			                                   <i class="fa fa-calendar"></i>
			                            </div>
			                            <input type="date" class="form-control pull-right" name="dateAdded">
			                     </div>
					</div> -->
					<div class="col-sm-12 modal-footer">
						<div class="col-md-6">
								<br><button name="saveAddMaterialExpense" class="btn btn-<?= $this->session->button ?> btn-sm btn-block pull-right"> 
								<i class="fa fa-save"></i> 
								Save
							</button> 
						</div>
						<div class="col-md-6">
							<br>
								<a href="<?= site_url('inventory') ?>" class="btn btn-<?= $this->session->button ?> btn-sm btn-block" style="font-size: 8px;">
								InventoryPick 
								<i class="fa fa-chevron-right"></i>
							</a> 
						</div>

							 
					</div>
				</form>
			</div>         
		</div>
	</div>
</div>

<!-- Add WORKER EXPENSES -->
<div id="addWorkerExpense" class="modal fade" role="dialog">
       <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content paper">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 >
                            	<i class="fa fa-group"></i>
                            	Add Worker Expense
                            </h3>
                     </div>
                     <div class="modal-body">
				<?php echo form_open('expense/add_worker');?>
					<input type="hidden" name="pro_id" value="<?= $key ?>">
					<table class="table"> 
						<tr>
							<th>Worker Position</th>
							<td>
								<input type="text" name="position" class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Salary</th>
							<td>
								<input oninput="getCostWorker()" id="sal" type="number" name="salary" 
									class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Quantity</th>
							<td>
								<input oninput="getCostWorker()" id="quan" type="number" name="quantity" 
									class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Days Worked</th>
							<td>
								<input oninput="getCostWorker()" id="worked" type="number" name="daysWorked" 
									class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Cost</th>
							<td>
								<input id="tw_cost" type="number" name="tw_cost" class="form-control" value="0.00" readonly> 
							</td>
						</tr>

						<!-- <tr>
							<th>Date Added</th>
							<td>
								<div class="input-group date">
					                            <div class="input-group-addon">
					                                   <i class="fa fa-calendar"></i>
					                            </div>
					                            <input type="date" class="form-control pull-right" name="dateAdded">
					                     </div>
							</td>
						</tr> -->
					</table>
				    
					<div class="col-sm-12">
						<center>
							<br><br><button name="saveAddWorkerExpense" class="btn btn-<?= $this->session->button ?> btn-sm btn-block" style="font-size: 8px;">
								<i class='fa fa-save'></i> SaveThis 
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

<!-- Add TRANSPORTATION EXPENSES -->
<div id="addTransportationExpense" class="modal fade" role="dialog">
       <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content paper">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 >
                            	<i class="fa fa-road"></i>
                            	Add Transportation Expense</h3>
                     </div>
                     <div class="modal-body">
				<?php echo form_open('expense/add_transpo');?>
				<input type="hidden" name="pro_id" value="<?= $key ?>">
					<table class="table">
						<tr>
							<th>Destination From</th>
							<td>
								<input type="text" name="from" class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Destination To</th>
							<td>
								<input type="text" name="to"   class="form-control" required>
							</td>
						</tr>

						<tr>
							<th>Cost</th>
							<td>
								<input type="number" name="cost"   class="form-control" required>
							</td>
						</tr>
						<tr>
							<th>Receit</th>
							<td>
								<input type="text" name="receit"   class="form-control" required>
							</td>
						</tr>

						<!-- <tr>
							<th>Date Added</th>
							<td>
								<div class="input-group date">
					                            <div class="input-group-addon">
					                                   <i class="fa fa-calendar"></i>
					                            </div>
					                            <input type="date" class="form-control pull-right" name="dateAdded">
					                     </div>

							</td>
						</tr> -->

					 
					</table>
				  
					<div class="col-sm-12">
						<center>
							<br><button name="saveAddTranportationExpense" class="btn btn-<?= $this->session->button ?> btn-sm btn-block" style="font-size: 8px;">
								<i class='fa fa-save'></i> SaveThis 
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