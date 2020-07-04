<!-- MODAL PARA SA DELETE CONFIRMATION -->
	<div id="delete_all_account" class="modal fade" role="dialog">
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
	                            <h6>Are you sure you want delete all user accounts ?</h6>
	                     </div>
	                     <div class="modal-footer">
	                     	<a href="<?= site_url('account/delete/All') ?>" 
	                     		class="btn btn-<?= $this->session->button ?> btn-sm btn-block" style="font-size: 12px;">
	                     		<i class="fa fa-check"></i> Yes
	                     	</a> 
	                        
	                     </div>    
	              </div>
	       </div>
	</div> 