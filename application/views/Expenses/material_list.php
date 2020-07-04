<br><br>
<button class="btn btn-<?= $this->session->button ?> w3-card-4">Total : <?= number_format($t_mat) ?></button>
<br><br>
<div class="table-responsive">
       <table class="table table-bordered responsive-table" id="material_expense">
              <thead>
                     <br>
                     <tr >
                     <!-- para to sa heading!-->
                     <th>PersonInCharge</th>
                     <th>Item_Name</th>
                     <th>Description</th>
                     <th>Unit</th>
                     <th>Size</th>
                     <th>Color</th>
                     <th>Price</th>
                     <th>Quantity</th>
                     <th>Total Cost</th>
                     <th>Source/Receit No</th> 
                     <th>DateAdded</th> 
                     <th>Action</th> 

              </tr>
       </thead>
       <tbody>  
              <?php foreach ($material_expenses as $material): ?>
                     <tr>
                            <td><?= $material['PersonInCharge'] ?></td>
                            <td><?= $material['materialName'] ?></td>
                            <td><?= $material['materialDescription'] ?></td>
                            <td><?= $material['unit'] ?></td>
                            <td><?= $material['size'] ?></td>
                            <td><?= $material['color'] ?></td>
                            <td><?= $material['price'] ?></td>
                            <td><?= $material['quantity'] ?></td>
                            <td><?= $material['cost'] ?></td>
                            <td><?= $material['source'] ?></td>
                            <td><?= $material['dateAdded'] ?></td> 
                           <td>      
                              <?php if ($this->session->userType == "Administrator" OR 
                                   $this->session->inCharge == $material['PersonInCharge']) : ?>
                                   <a href="#" onclick="update_material( <?= $material['id'] ?> ,
                                                                      '<?= $material['PersonInCharge'] ?>' , 
                                                                      '<?= $material['materialName'] ?>' ,
                                                                      '<?= $material['materialDescription'] ?>' ,
                                                                      '<?= $material['unit'] ?>' ,
                                                                      '<?= $material['size'] ?>' ,
                                                                      '<?= $material['color'] ?>' ,
                                                                      <?= $material['price'] ?> ,
                                                                      <?= $material['quantity'] ?> ,
                                                                      <?= $material['cost'] ?> ,
                                                                      '<?= $material['source'] ?>' , 
                                                                      '<?= $material['dateAdded'] ?>' );" 
                                          data-toggle="modal" data-target="#e_addMaterialExpense"
                                          class="btn btn-warning btn-sm">
                                          <i class="fa fa-edit"></i>
                                   </a>
                                   <a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#d_del<?= $material['id'] ?>">
                                          <i class="fa fa-trash"></i>
                                   </a>
                            <?php  endif; ?>

                            </td> 
                            <!-- PARA SA MODAL NG DELETE CONFIRMATION -->
                            <div id="d_del<?= $material['id'] ?>" class="modal fade" role="dialog">
                                   <div class="modal-dialog modal-sm">
                                          <div class="modal-content paper">
                                                 <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4>
                                                               <i class="fa fa-trash"></i>
                                                               Delete
                                                        </h4>
                                                 </div>
                                                 <div class="modal-body">
                                                        <h6>Are you Sure you want Delete <?= $material['materialName'] ?> ?</h6>
                                                 </div>
                                                 <div class="modal-footer">
                                                        <a href="<?= site_url('expense/delete_material/all') ?>" 
                                                               class="btn btn-danger btn-sm">
                                                               Delete All
                                                        </a>
                                                        <button type="button" class=" btn btn-default btn-sm" data-dismiss="modal">No</button>
                                                        <a href="<?= site_url('expense/delete_material/'. $material['id']) ?>" 
                                                               class="btn btn-warning btn-sm">
                                                               Yes
                                                        </a>
                                                 </div>    
                                          </div>
                                   </div>
                            </div>
                           
                     </tr>
              <?php endforeach;; ?>
       </tbody>
</table>
 </div>

 <script type="text/javascript">
       function update_material(id , pic , name , des ,unit , size , color , price , qty , cost , source , dateAdded ) {
              document.getElementById('material_id').value =  id;
              document.getElementById('e_pic_m').value =  pic;
              document.getElementById('e_name').value =  name; 
              document.getElementById('e_description').value =  des ; 
              document.getElementById('e_unit').value = unit ;  
              document.getElementById('e_size').value = size; 
              document.getElementById('e_color').value = color; 
              document.getElementById('e_mprice').value = price; 
              document.getElementById('e_mquantity').value = qty; 
              document.getElementById('e_tm_cost').value = cost; 
              document.getElementById('e_source').value = source; 
              document.getElementById('e_dateAdded_m').value = dateAdded; 
       }
</script>