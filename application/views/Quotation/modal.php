 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="add_bill" class="modal fade" role="dialog">
       <div class="modal-dialog modal-lg">
              <div class="modal-content paper" id="add_bill_img"> 
	                     <div  class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
	                            <button type="button" class="close" data-dismiss="modal">
	                            	&times;
	                            </button>
	                            <h4>
	                            	<i class="fa fa-plus-square"></i>
	                            	Add Bill of Quantities
	                            </h4>
	                     </div>
	                     <div class="modal-body">  
	                            <table class="table">
	                            	<tbody> 
	                            			<tr>
		                            			<th>Description Title</th>
		                            			<td>
			                            			<select class="form-control" id="title">  
			                            				<option disabled selected>Select Description title Here</option>
			                            				<?php foreach ($bill_title as $title): ?>
			                            					<option><?= $title['title_name'] ?></option>
			                            				<?php endforeach; ?>
			                            			</select>
		                            			</td>
		                            			<td>
		                            				<input type="text" class="form-control" id="other" placeholder="Other? Pls specify">
		                            			</td>
		                            		</tr>

		                            		<tr id="tr_gas" style="display: none;">
		                            			<th>Estimated Gas Expenses</th>
		                            			<td colspan="2">
		                            				<input  oninput="total_bill('true')" type="number" id="gas" class="form-control">
		                            			</td>
		                            		</tr>
		                            		<tr id="tr_toll" style="display: none;"> 
		                            			<th>Estimated Toll Gates Payments </th>
		                            			<td colspan="2">
		                            				<input  oninput="total_bill('true')" type="number" id="toll" class="form-control">
		                            			</td>
		                            		</tr> 

	                            		
	                            		<tr id="tr_des">
	                            			<th>Description</th>
	                            			<td colspan="2">
		                            			<textarea class="form-control" id="description" style="height: 100px"></textarea>
	                     						
	                            			</td>
	                            		</tr>
	                            		<tr id="tr_qty">
	                            			<th>Quantity</th>
	                            			<td colspan="2"><input type="number" class="form-control" id="qty"></td>
	                            		</tr>
	                            		<tr id="tr_unit">
	                            			<th>Unit</th>
	                            			<td colspan="2">
	                            				<select class="form-control" id="unit">
							                  	<option>Lot</option>
							                  	<option>Sets</option>
							                  	<option>Pieces</option>
							                     <option>Box</option>
							                     <option>Meter</option>
							                     <option>Liter</option>
							                     <option>kilogram</option>
							                     <option>Pack</option>
							                     <option>Dozen</option>
							                     <option>Bundle</option>
									</select>
	                            			</td>
	                            		</tr>
	                            		<tr id="tr_mat">
	                            			<th>Materials(Php)</th>
	                            			<td colspan="2"><input oninput="total_bill()" type="number" id="mat" class="form-control"></td>
	                            		</tr>
	                            		<tr id="tr_labor">
	                            			<th>Labor(Php)</th>
	                            			<td colspan="2"><input oninput="total_bill()" type="number" id="labor" class="form-control"></td>
	                            		</tr> 
	                            		<input type="hidden" id="total_bill" name="" class="form-control" readonly> 
	                            		<tr>
	                            			<th>Grand Total</th>
	                            			<td colspan="2">
	                            				 <input type="number" id="g_total" name="" class="form-control" readonly>
	                            			</td>
	                            		</tr>
	                            	</tbody>
	                            </table>
	                     </div>
	                     <div class="modal-footer"> 
	                            <button id="save_bill"
	                            	class="btn btn-<?= $this->session->button ?> btn-sm btn-block" data-dismiss="modal">
	                                   <i class="fa fa-save"></i> 
	                                   Save
	                            </button>
	                     </div>     
              </div>
       </div>
</div>

 <!-- MODAL DELETE SINGLE CLIENT-->
<div id="update_bill" class="modal fade" role="dialog">
       <div class="modal-dialog modal-lg">
              <div class="modal-content paper"> 
	                     <div  class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
	                            <button type="button" class="close" data-dismiss="modal">
	                            	&times;
	                            </button>
	                            <h4>
	                            	<i class="fa fa-edit"></i>
	                            	Update Bill of Quantities
	                            </h4>
	                     </div>
	                     <div class="modal-body">  
	                            <table class="table">
	                            	<tbody> 
	                            			<tr>
		                            			<th>Description Title</th>
		                            			<td>
			                            			<select class="form-control" id="e_title">  
			                            				<option disabled selected id="title_value"></option> 
			                            				<?php foreach ($bill_title as $title): ?>
			                            					<option><?= $title['title_name'] ?></option>
			                            				<?php endforeach; ?>
			                            			</select>
		                            			</td>
		                            			<td>
		                            				<input type="text" class="form-control" id="e_other" placeholder="Other? Pls specify">
		                            			</td>
		                            		</tr>

		                            		<tr id="e_tr_gas">
		                            			<th>Estimated Gas Expenses</th>
		                            			<td colspan="2">
		                            				<input  oninput="total_bill('true')" type="number" id="e_gas" class="form-control">
		                            			</td>
		                            		</tr>
		                            		<tr id="e_tr_toll"> 
		                            			<th>Estimated Toll Gates Payments </th>
		                            			<td colspan="2">
		                            				<input  oninput="total_bill('true')" type="number" id="e_toll" class="form-control">
		                            			</td>
		                            		</tr> 

	                            		
	                            		<tr id="e_tr_des">
	                            			<th>Description</th>
	                            			<td colspan="2">
		                            			<textarea class="form-control" id="e_description" style="height: 100px"></textarea>
	                     						
	                            			</td>
	                            		</tr>
	                            		<tr id="e_tr_qty">
	                            			<th>Quantity</th>
	                            			<td colspan="2"><input type="number" class="form-control" id="e_qty"></td>
	                            		</tr>
	                            		<tr id="e_tr_unit">
	                            			<th>Unit</th>
	                            			<td colspan="2">
	                            				<select class="form-control" id="e_unit">
							                  	<option>Lot</option>
							                  	<option>Sets</option>
							                  	<option>Pieces</option>
							                     <option>Box</option>
							                     <option>Meter</option>
							                     <option>Liter</option>
							                     <option>kilogram</option>
							                     <option>Pack</option>
							                     <option>Dozen</option>
							                     <option>Bundle</option>
									</select>
	                            			</td>
	                            		</tr>
	                            		<tr id="e_tr_mat">
	                            			<th>Materials(Php)</th>
	                            			<td colspan="2"><input oninput="total_bill()" type="number" id="e_mat" class="form-control"></td>
	                            		</tr>
	                            		<tr id="e_tr_labor">
	                            			<th>Labor(Php)</th>
	                            			<td colspan="2"><input oninput="total_bill()" type="number" id="e_labor" class="form-control"></td>
	                            		</tr> 
	                            		<!-- for the total -->
	                            		<input type="hidden" id="e_total_bill" class="form-control" readonly> 

	                            		<!-- for the bill id  -->
	                            		<input type="hidden" id="e_bill_id" class="form-control" readonly> 

	                            		<tr>
	                            			<th>Grand Total</th>
	                            			<td colspan="2">
	                            				<input type="number" id="e_g_total" class="form-control" readonly>
	                            			</td>
	                            		</tr>
	                            	</tbody>
	                            </table>
	                     </div>
	                     <div class="modal-footer"> 
	                            <button id="update_bill"
	                            	class="btn btn-<?= $this->session->button ?> btn-sm btn-block" data-dismiss="modal">
	                                   <i class="fa fa-save"></i> 
	                                   Save
	                            </button>
	                     </div>     
              </div>
       </div>
</div>

 <!-- MODAL PARA SA DELETE CONFIRMATION -->
<div id="delete_quot" class="modal fade" role="dialog">
       <div class="modal-dialog modal-auto">
              <div class="modal-content paper">
                     <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>
                            	<i class="fa fa-trash"></i>
                            	Delete
                            </h4>
                     </div>
                     <div class="modal-body" id="delete_confirmation">
                             
                     </div>    
              </div>
       </div>
</div>


<!-- MODAL PARA SA DELETE CONFIRMATION -->
       <div id="delete_quotation" class="modal fade" role="dialog">
              <div class="modal-dialog modal-sm">
                     <div class="modal-content paper">
                            <div class="modal-header"> 
                                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   <h5>Delete</h5>
                            </div>
                            <div class="modal-body">
                                   <h6>Are you sure you want delete <?= $key ?> quotation ?</h6>
                                    
                            </div>
                            <div class="modal-footer">
                                   <button type="button" class=" btn btn-danger btn-sm"   data-dismiss="modal">
                                          <i class="fa fa-close"></i> No</button> 
                                   <a  href="<?= site_url('quotation/delete/'.$key) ?>"  class="btn btn-success btn-sm"  >
                                          <i class="fa fa-check"></i> Yes</a>
                            </div>    
                     </div>
              </div>
       </div>