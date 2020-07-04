<?= $header ?> 
<?= $sidenav ?> 
<?= $alert ?> 
 <br><br>
<!-- Content Header (Page header) -->
<section class="content-header">
      <h1> Update Project Quotation </h1> 
       <ol class="breadcrumb">
              <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="<?= site_url('quotation') ?>"><i class="fa fa-tasks"></i> Quotation</a></li>
              <li class="active"><a href="">Update Quotation</a></li> 
       </ol>
       <hr>
</section> 


<?php foreach ($quotation_info as $quotation): ?> 
       <?= form_open_multipart('quotation/save_update');?> 
               <div class="col-md-12">
                     <h4><br>Client Information</h4> 
              </div>
              
                     <div class="col-md-4">
                            <select class="form-control select2" style="width: 110%" name="search_client" id="search_client">
                                   <option disabled selected>Select Client Here</option>
                                   <?php foreach ($client_list as $list): ?>
                                          <?php if ($list['client_name'] != 'dummy'): ?>
                                                 <option value="<?= $list['client_no'] ?>"><?= $list['client_name'] ?></option>
                                          <?php endif; ?>
                                   <?php endforeach; ?>
                            </select>
                            <br>
                     </div> 

                     <div class="col-md-8"><br><br><br></div>
              <div id="client_info">
                     <div class="col-sm-4">
                            <br> <p>Client Name</p>
                            <input type="text" class="form-control" readonly value="<?= $quotation['client_name'] ?>">
                     </div> 
                     <div class="col-sm-4">
                            <br> <p>Client Type</p>
                            <input type="text" class="form-control" readonly value="<?= $quotation['client_type'] ?>">

                     </div>
                     <div class="col-sm-4"><br> 
                            <p>Contact Number</p>
                            <input type="text" class="form-control" readonly value="<?= $quotation['client_number'] ?>">
                     </div>  
                     <div class="col-sm-4"> <br>
                            <p>Client Address</p>
                            <input type="text" name="clientAddress" class="form-control" readonly value="<?= $quotation['client_address'] ?>">
                     </div>  
                     <div class="col-sm-4"> <br>
                            <p>Client Position</p>
                            <input type="text" class="form-control" readonly value="<?= $quotation['client_position'] ?>">
                     </div>  
                     <div class="col-sm-4"><br> 
                            <p>Email Address</p>
                            <input type="email" class="form-control" readonly value="<?= $quotation['client_email'] ?>"><br><br><br>
                     </div>
                     
                      <input type="hidden" name="client_no" value="<?= $quotation['client_no'] ?>">
              </div>
      
              
              <br><h4><hr>Project Information</h4><br> 
              <div class="col-md-6">
                     <p><br>Project Name</p>
                     <input type="text" name="projectName" class="form-control" required value="<?= $quotation['project_name'] ?>"> 
              </div>
              <div class="col-md-6">
                      <p> <br>Project Address</p>
                     <input type="text" name="projectAddress" class="form-control" required value="<?= $quotation['project_address'] ?>"> 
              </div>
             
              <div class="col-sm-4">
                     <p><br>Terms</p>
                    <input type="number" name="terms" placeholder="Days of Payment" 
                    class="form-control" required value="<?= $quotation['terms'] ?>">

                     <p><br>Project Description(Scope of Work)</p>
                     <textarea type="text" name="projectDescription" class="form-control"  required style="height: 200px;"><?= $quotation['scope_of_work'] ?></textarea> 

              </div>
              <div class="col-sm-4">  
                     <p><br>Completion</p>
                    <input type="number" name="completion" placeholder="Days of Completion" 
                    class="form-control" required value="<?= $quotation['completion'] ?>">
                    

                     <p> <br>Materials</p>
                     <textarea type="text" name="materials" class="form-control" required style="height: 200px;"><?= $quotation['materials'] ?></textarea> 
                     <input type="hidden" class="form-control pull-right" name="dateFinished" placeholder="Enter Finished Date" id="fin">
              </div>
              <div class="col-sm-4"> 
                     
                     <p><br>Time Frame</p>
                     <div class="input-group date">
                            <div class="input-group-addon">
                                   <i class="fa fa-calendar"></i>
                            </div>
                            <input onchange="split()" type="text" class="form-control pull-right" name="dateStarted" 
                                   placeholder="Enter Started Date" id="reservation"  
                                   value="<?= $quotation['date_started'] .' - '. $quotation['expected_finished'] ?>">
                     </div>

                     <p> <br>Terms and Condition</p>
                     <textarea type="text" name="condition" class="form-control" style="height: 200px;"><?= $quotation['terms_and_condition'] ?></textarea> 

              </div>  
              
              <div class="col-md-12">
                     <h4><br><br><hr>Cost Information</h4> 
              </div>
              <div class="col-sm-4"> <br><p>Estimated Material Cost</p>
                     <input  oninput="getTotalCost()"  id="mc" type="number" name="materialCost"
                     placeholder="Pesos" class="form-control" required value="<?= $quotation['material_cost'] ?>">
              </div>
              <div class="col-sm-4"> <br><p>Estimated Worker Cost</p>
                     <input oninput="getTotalCost()" id="wc" type="number" name="workerCost" 
                     placeholder="Pesos" class="form-control" required value="<?= $quotation['worker_cost'] ?>">
              </div>
              <div class="col-sm-4"> <br><p>Estimated Transportation Cost</p>
                     <input oninput="getTotalCost()" id="tc" type="number" name="transportationCost" 
                     placeholder="Pesos" class="form-control" required value="<?= $quotation['transpo_cost'] ?>">  
              </div>
              <div class="col-sm-4"> <br><p>Total Estimation Cost </p>
                     <input id="ptc" name="projectTotalCost" class="form-control" readonly value="<?= $quotation['estimated_cost'] ?>">
              </div> 
               <div class="col-sm-8">   
                      
              </div>
             <div class="col-md-12">
              <br><br><br>
                     <button name="saveProject" class="btn btn-<?= $this->session->button ?> btn-block">
                            <i class='fa fa-save'></i> 
                            SaveQuotation Changes
                     </button>
              <br><br><br><br><br>
              </div>
       <?= form_close(); ?>
<?php endforeach; ?>
<?= $footer ?> 
