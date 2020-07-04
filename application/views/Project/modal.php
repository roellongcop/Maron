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
        <div class="modal-content paper" style="height: 480px;">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3><i class="fa fa-wrench"></i>  Add Material Expense</h3>
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
                    <div class="col-sm-12 modal-footer">
                        <div class="col-md-6"><br>
                            <button name="saveAddMaterialExpense" class="btn btn-<?= $this->session->button ?> btn-block pull-right"> <i class="fa fa-check-circle"></i> Save
                            </button> 
                        </div>
                        <div class="col-md-6"><br>
                            <a href="<?= site_url('inventory') ?>" class="btn btn-<?= $this->session->button ?> btn-block"> InventoryPick  <i class="fa fa-share"></i>
                            </a> 
                        </div>
                    </div>
                <?= form_close(); ?>
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


<!-- Modal -->
<div id="start" class="modal fade" role="dialog">
       <div class="modal-dialog modal-sm">
              <!-- Modal content-->              
              <div class="modal-content paper">
                     <!-- <?= form_open('project/start') ?> -->
                            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;">
                                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   <h4 class="modal-title">
                                          <i class="fa fa-edit"></i>
                                          Project Status Update
                                   </h4>
                            </div>
                            <div class="modal-body">
                                   <select class="form-control select2" id="p_status" style="width: 100%">
                                          <option disabled selected>Select Status Here</option>
                                          <option>Pending</option>
                                          <option>Ongoing</option>
                                          <option>Finished</option>
                                   </select>
                            </div>
                            <div class="modal-footer">
                                <button id="btn-change-status" data-dismiss="modal" class="btn btn-<?= $this->session->button ?> btn-block">     Continue 
                                </button> 
                            </div>
                     <!-- <?= form_close() ?> -->
              </div>
       </div>
</div>

 