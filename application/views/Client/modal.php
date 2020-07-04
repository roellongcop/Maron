<!-- Add TRANSPORTATION EXPENSES -->
<div id="add_client" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"> <i class="fa fa-user-plus"></i> Add Client </h3>
            </div>
            <div class="modal-body">
                <?= form_open('client/add');?> 
                    <table class="table">
                        <tr>
                            <th>Full Name</th>
                            <td> <input type="text" name="c_name" class="form-control" required> </td>
                        </tr>
                        <tr>
                            <th>Position <p style="color: gray">if Working</p></th>
                            <td><input type="text" name="c_position" class="form-control" required
                            placeholder="Position or Department"></td>
                        </tr> 
                        <tr>
                            <th>Mobile Number</th>
                            <td><input type="text" name="c_num"   class="form-control" required></td>
                        </tr>
                        <tr>
                            <th>Email Address</th>
                            <td><input type="email" name="c_email"   class="form-control" required></td>
                        </tr> 
                        <tr>
                            <th>Full House Address</th>
                            <td><input type="text" class="form-control" name="c_add"></td>
                        </tr> 
                        <tr>
                            <th>Username</th>
                            <td><input type="text" class="form-control" name="c_user"></td>
                        </tr> 
                        <tr>
                            <th>Password</th>
                            <td><input type="text" class="form-control" name="c_pass"></td>
                        </tr> 
                    </table>

                    <div class="col-sm-12">
                        <center><br>
                            <button class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
                            <i class='fa fa-save'></i> SaveThis 
                            </button> 
                        </center> <br>
                    </div>
                <?= form_close(); ?>
            </div>
            <div class="modal-footer"> </div>
        </div>
    </div>
</div>





<!-- MODAL PARA SA DELETE CONFIRMATION -->
<div id="delete_client" class="modal fade" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><i class="fa fa-trash"></i> Delete</h4>
            </div>
            <div class="modal-body">
                <h6>Are you sure you want delete all client ?</h6> 
            </div>
            <div class="modal-footer"> 
                <a  href="<?= site_url('client/delete/All') ?>"  class="btn btn-<?= $this->session->button ?>">
                    <i class="fa fa-check-circle"></i> Yes
                </a>
            </div>    
        </div>
    </div>
</div>