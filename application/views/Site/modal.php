 
 
<!-- Modal Structure -->
<div id="request" class="modal modal-fixed-footer" >
       <div class="modal-content" id="reg_form">
              <h5><i class="fa fa-book"></i> Preferences Information</h5> <br>   
              <div class="row"> 
                     <div class="input-field col s12 m6" id="work_des_option"> 
                     </div>
                     <div class="input-field col s12 m6" id="wd"> 
                            <input id="work_des" type="text" class="validate"></textarea>
                            <label for="work_des">New Work Category <em> (Flooring, Walling, Sealing etc.)</em></label>
                     </div>
                     
              </div>  
              <div class="row">  
                     <div class="input-field col s12 m6">
                            <textarea id="mat" type="text" class="materialize-textarea"></textarea>
                            <label for="mat">Material Name / Description</label>
                     </div>
                     <div class="input-field col s12 m6">
                            <textarea id="mat_des" class="materialize-textarea"></textarea>
                            <label for="mat_des">Work Description / Assumption</label> 
                      </div> 
              </div>    
       </div> 
       <div class="modal-footer"> 
              <a  class="data-action modal-close right waves-effect waves-light btn" 
                     id="btn_preferences"> 
                     Save 
                     <i class="fa fa-check"></i>
              </a> 
       </div>
</div>



<div id="delete_material_modal" class="modal">
       <div class="modal-content">
              <h5><i style="color:#337ab7" class="fa fa-warning"></i> Delete Confirmation</h5> 
              <div id="del_mat_confirm"> </div>
       </div>
       <div class="modal-footer" id="btn_del_mat">
              
       </div>
</div>


<div id="delete_work_des_modal" class="modal">
       <div class="modal-content">
              <h5><i style="color:#337ab7" class="fa fa-warning"></i> Delete Confirmation</h5>
              <div id="del_work_des_confirm"> </div>
       </div>
       <div class="modal-footer" id="btn_del_work_des">
              
       </div>
</div>



<div id="contacts_modal" class="modal">
       <div class="modal-content">
              <h5><div class="btn btn-floating"><i class="fa fa-phone"></i></div> Our Contact Information</h5><hr>
              <?php foreach ($about as $c) : ?>
                     <?php if ($c['is_contact'] == 1) : ?>
                            <p><strong><?= $c['legend'] ?></strong><br>
                            <?= $c['description'] ?></p> 
                     <?php endif; ?> 
              <?php endforeach; ?> 
       </div>
       <div class="modal-footer" id="btn_del_work_des">
              
       </div>
</div>


<div id="tac" class="modal">
       <div class="modal-content">
              <h5><div class="btn btn-floating"><i class="fa fa-pencil"></i></div> Our Terms and Conditions</h5><hr> 
              <div id="tac">
                     <p class="i5"><b>A.     AGREEMENT.</b>  The Purchase Order, these Terms and Conditions, any special conditions, Owner’s Policies, Design Standards and Insurance Requirements (together, the “Agreement”) along with Drawings, Specifications, addenda issued before issuance of the Agreement and any subsequently executed Change Order (together with the Agreement, the “Agreement Documents”) shall govern the relationship between the parties for the construction project described in the Agreement.<p>
                     <p class="i5"><b>B.     EXECUTION OF THE WORK.</b> Contractor shall furnish all labor, material, services, tools, equipment, and fixtures necessary to perform and complete in a good and workmanlike manner the Work described in the Agreement. All Work shall be done in accordance with, all laws, ordinances, building codes, rules and regulations applying to the Work, including, but not limited to, the Americans with Disabilities Act, environmental regulations and the Occupational Safety and Health Act of 1970, as amended. Contractor shall have control over, and be solely responsible for, all means, methods and sequences for performing the Work.<br>
                     <p class="i5"><b>C.     SCHEDULE.</b> Work shall be commenced and completed within the time frames set forth in the Agreement. Time is of the essence.<p>
                     <p class="i5"><b>D.     SUPERVISION.</b> Contractor shall provide a competent manager and a competent superintendent for the Project, approved by Owner, who shall be at the Site and working on the Project for layout, direction, coordination, sequencing and all other required activities, for the entire duration of and until final acceptance of the Work. The approved manager or superintendent shall not be discontinued (except upon Final Completion of the Project or in the event of his or her termination of employment or disability or if Owner requests a replacement to resolve incompatible working relationships) and no new individual shall be designated without prior approval of Owner.<p>
                     <p class="i5"><b>E.     SAFETY.</b> Contractor is entirely responsible for security and safety at the Site until it is turned over to Owner.Contractor shall comply with Owner’s Safety Guidelines for Contractors and all laws of any governmental authorities for the safety of persons or property. Hazardous Materials may not be used without prior notice to and coordination with Owner. Contractor shall be responsible for any Hazardous Materials brought to the Site by Contractor, Subcontractors, suppliers or anyone else for whom Contractor is responsible. Contractors shall dispose of all Hazardous Materials in accordance with all applicable laws and Owner’s Safety Guidelines for Contractors relating to disposal of Hazardous Materials. Notwithstanding anything herein to the contrary, asbestos, asbestos containing products or polychlorinated biphenyl (PCB) shall not be allowed on the Site nor be used in the Work.<p>
                     <p class="i5"><b>F.     CHANGES IN THE WORK.</b> The Agreement may only be modified by written change order signed by both Owner and Contractor, and Contractor shall have no claim for any extra or additional work unless such work is clearly authorized in writing by Owner before such extra or additional work is performed. Contractor acknowledges that it waives all claims for extra charges for extra or additional work Contractor performs without prior written authorization from Owner<p>
                     <p class="i5"><b>G.     COMPLETION.</b> The Work shall be deemed complete after it complies in all respects with the Agreement Documents, Contractor has completed all punchlist items, properly cleaned up its worksite, provided Owner with all required warranties, manuals, and record documents, and otherwise has completed all acts necessary to allow Owner to obtain occupancy or use permits as a result of the Work. 
              </div>
       </div> 
</div>



<div id="resend_request" class="modal">
       <div class="modal-content">
              <h5><i style="color:#337ab7" class="fa fa-send"></i> Resend Request</h5>
              <div id="resend_confirm"> </div>
       </div>
       <div class="modal-footer" id="btn_resend">
              
       </div>
</div>

<div id="delete_request_modal" class="modal">
       <?= form_open('site/delete_request'); ?>
              <div class="modal-content">
                     <h5><i style="color:#337ab7" class="fa fa-warning"></i> Confirmation</h5> 
                     <div id="del_request_confirm"> </div>
                     <input type="hidden" name="request_id" id="request_id">
              </div>
              <div class="modal-footer">
                     <button type="submit" class="btn btn-blue">Continue</button>
              </div>
       <?= form_close(); ?>
</div>


<div class="modal" id="login_modal"> 
       <?= form_open('site/login_modal') ?>
              <div class="modal-content">  
                     <h5><i class="fa fa-pencil"></i> Login | <a  href="<?= site_url('site/signup') ?>" >Signup</a></h5>
                     <div class="row"> 
                            <div class="input-field col s12"> 
                                   <input id="modal-username" name="modal_username" type="text" class="validate">
                                   <label for="modal-username">Username</label>
                            </div>
                     </div> 
                     <div class="row"> 
                            <div class="input-field col s12"> 
                                   <input id="modal-password" name="modal_password" type="password" class="validate" >
                                   <label for="modal-password">Password</label>
                            </div>
                     </div>  
                     <div class="row">
                             <a href="<?= site_url('site/forgot_password') ?>">Forgot Password?</a>
                     </div> 
              </div>
              <div class="modal-footer"> 
                     <button type="submit" class="right waves-effect waves-light btn ">
                            Login <i class="fa fa-angle-right"></i>
                     </button> 
              </div>
       <?= form_close() ?>
</div>