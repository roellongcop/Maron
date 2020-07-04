
<br><br>
<button class="btn btn-<?= $this->session->button ?> w3-card-4">Total : <?= number_format($t_wor, 2) ?></button>
<br><br> 
<!-- <div class="table-responsive"> -->
       <table class="table table-bordered responsive-table" id="worker_expense">
              <thead>
                     <br>
                     <tr >
                     <!-- para to sa heading!-->
                     <th>PersonInCharge</th>
                     <th>Position</th>
                     <th>Salary</th>
                     <th>Quantity</th>
                     <th>DaysWorked</th>
                     <th>Cost</th>
                     <th>DateAdded</th>
                     <th>Action</th> 

              </tr>
       </thead>
       <tbody>  
              <?php foreach ($worker_expenses as $worker) : ?>
                     <tr>
                            <td><?= $worker['PersonInCharge'] ?></td>
                            <td><?= $worker['workerPosition'] ?></td>
                            <td><?= $worker['salary'] ?></td>
                            <td><?= $worker['quantity'] ?></td>
                            <td><?= $worker['daysWorked'] ?></td>
                            <td><?= $worker['cost'] ?></td>
                            <td><?= $worker['dateAdded'] ?></td>
                           <td>      
                                   <?php if ($this->session->userType == "Administrator" OR 
                                          $this->session->inCharge == $worker['PersonInCharge']) : ?>
                                          <a href="#" onclick="update_worker(<?= $worker['id'] ?> , 
                                                                             '<?= $worker['PersonInCharge'] ?>' , 
                                                                             '<?= $worker['workerPosition'] ?>' , 
                                                                             <?= $worker['salary'] ?> , 
                                                                             <?= $worker['quantity'] ?> , 
                                                                             <?= $worker['daysWorked'] ?> ,
                                                                             <?= $worker['cost'] ?> ,
                                                                             '<?= $worker['dateAdded'] ?>');" 

                                                                      data-toggle="modal" data-target="#e_addWorkerExpense"
                                                                      class="btn btn-warning btn-sm">
                                                                      <i class="fa fa-edit"></i>
                                   </a>

                                          <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#w_del<?= $worker['id'] ?>">
                                                 <i class="fa fa-trash"></i> 
                                          </a>
                                  <?php  endif; ?>
                                  
                            </td> 
                            <!-- PARA SA MODAL NG DELETE CONFIRMATION -->
                            <div id="w_del<?= $worker['id'] ?>" class="modal fade" role="dialog">
                                   <div class="modal-dialog modal-sm">
                                          <div class="modal-content paper">
                                                 <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"> 
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h5>Delete</h5>
                                                 </div>
                                                 <div class="modal-body">
                                                        <h6>Delete <?= $worker['quantity']." ". $worker['workerPosition'] ?> ?</h6>
                                                 </div>
                                                 <div class="modal-footer">
                                                        <a href="<?= site_url('expense/delete_worker/all') ?>" class="btn btn-danger btn-sm">
                                                               Delete All
                                                        </a>
                                                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">
                                                               No
                                                        </button>
                                                        <a href="<?= site_url('expense/delete_worker/'. $worker['id']) ?>" class="btn btn-warning btn-sm">
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
       function update_worker(id , pic , position , sal , qty , dw , cost , dateAdded ) {
              document.getElementById('worker_id').value =  id;
              document.getElementById('e_pic_w').value =  pic;
              document.getElementById('e_position').value =  position; 
              document.getElementById('e_sal').value =  sal ; 
              document.getElementById('e_quan').value = qty ; 
              document.getElementById('e_worked').value = dw ; 
              document.getElementById('e_tw_cost').value = cost ;  
              document.getElementById('e_dateAdded_w').value = dateAdded; 
       }
</script>
 


