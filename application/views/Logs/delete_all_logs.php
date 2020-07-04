 

<div id="delete_all_logs" class="modal fade" role="dialog">
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
                            <h6>This will delete entire logs </h6>
                     </div>
                     <div class="modal-footer">  
                            <?php if ($who == "All"): ?>
                                   <a href="<?= site_url('logs/delete_all/all') ?>" 
                                          class="btn btn-<?= $this->session->button ?> btn-block btn-sm ">
                                          <i class="fa fa-check"></i> 
                                          Continue
                                   </a>
                            <?php else: ?>
                                   <a href="<?= site_url('logs/delete_all/'. $who ) ?>" 
                                          class="btn btn-<?= $this->session->button ?> btn-block btn-sm">
                                          <i class="fa fa-check"></i> 
                                          Continue
                                   </a>  
                            <?php endif; ?>
                            
                     </div>    
              </div>
       </div>
</div>