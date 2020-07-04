
<input type="hidden" name="pic" value="<?= $this->session->inCharge ?>">
<br><br>
<button class="btn btn-<?= $this->session->button ?> w3-card-4">Total : <?= number_format($t_tra) ?></button>
<br><br>
<!-- <div class="table-responsive"> -->
       <table class="table table-bordered responsive-table" id="transpo_expense">
              <thead>
                     <br>
                     <tr >
                     <!-- para to sa heading!-->
                     <th>PersonInCharge</th>
                     <th>Destination From</th>
                     <th>Destination To</th>
                     <th>Cost</th>
                     <th>Receit No</th>
                     <th>Date Added</th> 
                     <th>Action</th>  
              </tr>
       </thead>
       <tbody>  
              <?php foreach ($transpo_expenses as $transpo) : ?> 
                     <tr>
                            <td><?= $transpo['PersonInCharge'] ?></td>
                            <td><?= $transpo['transportFrom'] ?></td>
                            <td><?= $transpo['transportTo'] ?></td>
                            <td><?= $transpo['cost'] ?></td>
                            <td><?= $transpo['receit_no'] ?></td>
                            <td><?= $transpo['dateAdded'] ?></td>
                           <td>      
                           <?php if ($this->session->userType == "Administrator" OR 
                                   $this->session->inCharge == $transpo['PersonInCharge']) : ?>
                                   <a href="#" onclick="update_transpo(<?= $transpo['id'] ?> ,
                                                                      '<?= $transpo['PersonInCharge'] ?>' , 
                                                                      '<?= $transpo['transportFrom'] ?>' , 
                                                                      '<?= $transpo['transportTo'] ?>' ,
                                                                      <?= $transpo['cost'] ?> , 
                                                                      '<?= $transpo['receit_no'] ?>' ,
                                                                      '<?= $transpo['dateAdded'] ?>' );" 

                                                                      data-toggle="modal" data-target="#e_addTransportationExpense"
                                                                      class="btn btn-warning btn-sm">
                                                                      <i class="fa fa-edit"></i>
                                   </a>
                                   <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" 
                                          data-target="#t_del<?= $transpo['id'] ?>">
                                          <i class="fa fa-trash"></i>
                                   </a>
                            <?php  endif; ?>

                            </td> 
                            <!-- PARA SA MODAL NG DELETE CONFIRMATION -->
                            <div id="t_del<?= $transpo['id'] ?>" class="modal fade" role="dialog">
                                   <div class="modal-dialog modal-sm">
                                          <div class="modal-content paper">
                                                 <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"> 
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h5>Delete</h5>
                                                 </div>
                                                 <div class="modal-body">
                                                        <h6>Delete <?= $transpo['transportFrom']." to ". $transpo['transportTo'];?> Entry ?</h6>
                                                 </div>
                                                 <div class="modal-footer">
                                                        <a href="<?= site_url('expense/delete_transpo/all') ?>" 
                                                               class="btn btn-danger  btn-sm">
                                                               Delete All
                                                        </a>
                                                        <button type="button" class=" btn btn-default btn-sm" data-dismiss="modal">
                                                               No
                                                        </button>
                                                        <a href="<?= site_url('expense/delete_transpo/'. $transpo['id']) ?>" 
                                                               class="btn btn-warning btn-sm">
                                                               Yes
                                                        </a>
                                                 </div>    
                                          </div>
                                   </div>
                            </div>
                     </tr>
              <?php endforeach; ?>
       </tbody>
</table>
<script type="text/javascript">
       function update_transpo(id , pic , from , to , cost , receit , dateAdded ) {
              document.getElementById('transpo_id').value =  id;
              document.getElementById('e_pic_t').value =  pic;
              document.getElementById('e_from').value =  from; 
              document.getElementById('e_to').value =  to ; 
              document.getElementById('e_cost').value = cost ; 
              document.getElementById('e_receit').value = receit ; 
              document.getElementById('e_dateAdded_t').value = dateAdded; 
       }
</script>

