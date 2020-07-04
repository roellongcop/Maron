<!-- MODAL PARA SA DELETE CONFIRMATION -->
<div id="deleteAllInventoryItem" class="modal fade" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4>  <i class="fa fa-trash"></i> Delete </h4>
            </div>
            <div class="modal-body"> 
                <h6>Are you sure you want delete <?php echo $status ?> Stock ?</h6> 
            </div>
            <div class="modal-footer"> 
                <a href="<?= site_url('inventory/delete/'.$status) ?>"  
                    class="btn btn-<?= $this->session->button ?> btn-sm-block btn-sm">
                    <i class="fa fa-check"></i> Yes
                </a>
            </div>    
        </div>
    </div>
</div>

<!-- PARA SA MODAL NG DELETE CONFIRMATION -->
<div id="del_item" class="modal fade" role="dialog">
    <div class="modal-dialog modal-auto">
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><i class="fa fa-trash"></i> Delete</h4>
            </div>
            <div class="modal-body" id="confirm_del_item"> </div>    
            <div class="modal-footer">
                <button id="btn-delete-item" class="btn btn-primary">
                    Continue <i class="fa fa-check-circle"></i>
                </button>
            </div>
        </div>
    </div>
</div>



<!-- PARA SA MODAL NG DELETE CONFIRMATION -->
<div id="edit_item" class="modal fade " role="dialog">
    <div class="modal-dialog modal-lg">
        <?= form_open('inventory/update') ?>
            <div class="modal-content col-md-12"><br>
                <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><i class="fa fa-edit"></i> Update</h4>
                </div>
                <div class="modal-body" id="item-update-form"> </div>    
                <div class="modal-footer col-md-12">
                    <button id="" class="btn btn-primary">
                        Continue <i class="fa fa-check-circle"></i>
                    </button>
                </div>
            </div>
        <?= form_close() ?>
    </div>
</div>


<!-- PARA SA MODAL NG DELETE CONFIRMATION -->
<div id="export-item" class="modal fade " role="dialog">
    <div class="modal-dialog modal-lg">
        <?= form_open('inventory/export') ?>
            <div class="modal-content col-md-12"><br>
                <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><i class="fa fa-edit"></i> Export This item</h4>
                </div>
                <div class="modal-body">  
                    <div class="col-md-6">
                        <select id="search-project" name="project_id" style="width: 100%" class="form-control select2">
                            <option disabled selected>Select project Here</option>
                            <?php foreach ($project_list as $p): ?>
                                <option value="<?= $p['id'] ?>"><?= $p['project_name'] ?></option>
                            <?php endforeach ?>
                        </select> <br><br>
                        <div id="project-info"> </div>
                    </div>  
                    <div class="col-md-6" id="item-export-form"></div>  
                </div>
                <div class="modal-footer col-md-12">
                    <button id="" class="btn btn-primary">
                        Continue <i class="fa fa-check-circle"></i>
                    </button>
                </div>
            </div>
        <?= form_close() ?>
    </div>
</div>


<!-- 
<div id="export_item" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content paper">
            <?= form_open_multipart('item/export');?> 
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; > 
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><i class="fa fa-share"></i> Export to Project</h4>
            </div>
            <div class="modal-body">  
                <div class="col-md-5"><h2>Project Information</h2> </div>
                <div class="col-md-7">
                    <input type="hidden" id="item_id" name="item_id" >
                    <select id="project_select" name="pro" class="form-control select2" required style="width: 100%">
                        <option disabled selected>Select Project Here</option>
                        <?php foreach ($project_list as $project): ?>
                            <option value="<?= $project['id'] ?>"><?= $project['project_name'] ?></option>
                        <?php endforeach; ?>
                    </select> 
                </div>   
                <div class="col-md-12"><br></div>
                <div class="col-md-5"> 
                    <br><b>Project Name:</b><p id="p_name"> Dummy</p>
                    <br><b>Project Description:</b><p id="p_des"> Dummy</p>
                    <br><b>Client:</b> <p id="c_name">Dummy</p>
                    <br><b>Status:</b> 
                    <p id="p_status" class="label label-success">Dummy</p> 
                    <br><br><br><br>
                    <input oninput="check_qty()" id="qty" type="number" name="qty" class="form-control" placeholder="Enter Item Quantity Here" required>
                </div>  
                <div class="col-md-7">   
                    <div id="img"><img id="img_project" src="<?= base_url().'uploads/templates/project.png' ?>"></div>
                </div>
            </div> 
            <div class="container-fluid">
                <button id="export" class="btn btn-<?= $this->session->button ?> btn-block ">
                    <i class="fa fa-export"></i> Export This
                </button><br>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div> -->