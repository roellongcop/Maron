<?= $header ?>
<?= $sidenav ?>

<body onload="load()">
    <br><br>
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <h1> Create Project Quotation </h1> 
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?= site_url('quotation') ?>"><i class="fa fa-tasks"></i> Quotation</a></li>
        <li class="active"><a href="">Create Quotation</a></li> 
    </ol>
    <hr>
    </section>  
        

<?= form_open_multipart('request/quotation/save');?> 
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li id="client_info" class="active">
                <a  data-toggle="tab" href="#set_client"> <i class="fa fa-address-book"></i> Client Information</a>
            </li>
            <li id="project_info">
                <a data-toggle="tab" href="#set_project"><i class="fa fa-wrench"></i> The Project Information </a>
            </li>
            <li id="bill_info">
                <a data-toggle="tab" href="#bill"> <i class="fa fa-paypal"></i> Work and Bills</a>
            </li>
            <li id="summary_info">
                <a data-toggle="tab" href="#summary"> <i class="fa fa-money"></i>Cost Summary</a>
            </li> 
        </ul>
    </div>

    <div class="tab-content">
        <div id="set_client" class="tab-pane fade in active"> 
            <div class="col-md-12 col-sm-12"> 
                <br><h3> <i class="fa fa-user"></i> CLIENT INFORMATION</h3> 
            </div>  

            <?php foreach ($client as $c): ?> 
                <!-- CLIENT NO -->
                <input type="hidden" name="client_no" value="<?= $c['client_no'] ?>">
                <!-- Request NO -->
                <input type="hidden" name="request_id" value="<?= $request_id ?>">

                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <br> <p>Full Name</p>
                        <input type="text" value="<?= $c['client_name'] ?>" class="form-control"  readonly>
                    </div> 
                    <div class="col-sm-4 col-md-4">
                        <br> <p>Email</p>
                        <input type="email" value="<?= $c['client_email'] ?>" class="form-control" readonly><br>
                    </div>
                    <div class="col-sm-4 col-md-4"><br> 
                        <p>Mobile Number</p>
                        <input type="text" value="<?= $c['client_number'] ?>" class="form-control" readonly  >
                    </div>  
                </div>
                <div class="row">
                    <div class="col-sm-4 col-md-4"> <?= br(2) ?>
                        <p>Full House Address</p>
                        <input type="text" value="<?= $c['client_address'] ?>" class="form-control" readonly  >
                    </div>  
                    <div class="col-sm-4 col-md-4"><?= br(2) ?>
                        <p>Position/ if working</p> 
                        <input type="text" value="<?= $c['client_position'] ?>" class="form-control" readonly  >
                    </div>  
                    <div class="col-sm-4 col-md-4"><?= br(2) ?></div> 
                </div>
            <?php endforeach ?> 

            <!-- NEXT AND PREVIOUS --> 
            <div class="col-md-4 col-sm-4 offset-md-8"> 
                <br><a id="" class="btn btn-primary" disabled data-toggle="tab" href="#set_project">
                    <i class="fa fa-angle-left"></i> Previous 
                </a>
                <a id="nxt_client" class="btn btn-primary" data-toggle="tab" href="#set_project">
                    Next <i class="fa fa-angle-right"></i>
                </a>
                <hr>
            </div>
        </div>

        <div id="set_project" class="tab-pane fade in"> 
            <?php foreach ($request as $r): ?> 
                <!-- PROJECT INFORMATION -->
                <div class="col-md-12 col-sm-12"><br>
                    <h3><i class="fa fa-wrench"></i>  PROJECT INFORMATION</h3> <br>
                </div>
                <div class="row"><br>
                    <div class="col-md-6 col-sm-6">
                        <p><br>Project Name</p>
                        <input type="text" name="projectName" value="<?= $r['project_name'] ?>" class="form-control" readonly> 
                    </div><br>
                    <div class="col-md-6 col-sm-6">
                        <p> <br>Project Address</p>
                        <input type="text" name="projectAddress" value="<?= $r['address'] ?>" class="form-control" readonly> 
                    </div>
                </div>

                <div class="row"><br>
                    <div class="col-sm-3 col-md-3">
                        <p><br>Terms of payment</p>
                        <input type="text" name="terms" placeholder="Days of payment" class="form-control"> 
                    </div>
                    <div class="col-sm-3 col-md-3">  
                        <p><br>Completion</p>
                        <input type="number" name="completion" placeholder="Days of Completion" class="form-control">  
                    </div>
                    <div class="col-sm-3 col-md-3">  
                        <p><br>Date Started</p>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right" name="dateStarted" 
                            placeholder="Enter Started Date" id="datepicker1">
                        </div> 
                    </div>
                    <div class="col-sm-3 col-md-3">  
                        <p><br>Expected Finished</p>
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input  type="text" class="form-control pull-right" name="dateFinished" 
                            placeholder="Enter Started Date" id="datepicker" >
                        </div> 
                    </div>  
                </div>

                <div class="row"> <br>
                    <div class="col-md-6 col-sm-6">
                        <p><br>Project Description(Scope of Work)</p>
                        <textarea type="text" name="projectDescription" class="form-control"  required style="height: 200px;" readonly><?= $r['description'] ?></textarea>  
                    </div> 
                    <div class="col-md-6 col-sm-6" style="display: none;">
                        <p> <br>Terms and Condition</p>
                        <textarea type="text" name="condition" class="form-control" style="height: 200px;">.
                        </textarea> 
                        <?= br(3) ?>
                    </div>
                </div>

                <!-- NEXT AND PREVIOUS -->
                <div class="col-md-8 col-sm-8"> </div>
                    <div class="col-md-4 col-sm-4"> 
                        <a id="prev_project" class="btn btn-primary" data-toggle="tab" href="#set_client">
                            <i class="fa fa-angle-left"></i> Previous 
                        </a>
                        <a id="nxt_project" class="btn btn-primary" data-toggle="tab" href="#bill">
                            Next <i class="fa fa-angle-right"></i>
                        </a>
                        <hr>
                    </div> 
                </div>
            <?php endforeach; ?>
      


              <div id="bill" class="tab-pane fade in"> 
                     <div class="row">
                            <div class="col-md-9 col-sm-9">
                                   <br>
                                   <h3>
                                          <i class="fa fa-paypal"></i>
                                           BILL OF QUANTITIES  
                                   </h3>
                                   <br>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                   <br><br><a class="btn btn-primary" data-toggle="modal" data-target="#add_bill">
                                          <i class="fa fa-plus-square"></i>
                                          Add Bill of Quantities
                                   </a>
                            </div>
                     </div>
                     <div class="col-md-12  panel panel-default container-fluid"  id="bill_of_quantities">  </div>

                     <textarea id="bille" style="display: none;" class="form-control" name="bill"></textarea>
                     <!-- NEXT AND PREVIOUS -->
                     <div class="col-md-8 col-sm-8"> </div>
                     <div class="col-md-4 col-sm-4"> 
                            <a id="prev_bill" class="btn btn-primary" data-toggle="tab" href="#set_project">
                                   <i class="fa fa-angle-left"></i> Previous 
                            </a>
                            <a id="nxt_bill" class="btn btn-primary" data-toggle="tab" href="#summary">
                                   Next <i class="fa fa-angle-right"></i>
                            </a>
                            <hr>
                     </div>
              </div>

              <div id="summary" class="tab-pane fade in">
                     <div class="col-md-12 col-sm-12">
                            <br>
                            <h3>
                                   <i class="fa fa-money"></i>
                                   COST SUMMARY
                            </h3> 
                     </div>
                     <div class="row">
                            <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Material Cost</p>
                                   <input  id="mc" type="number" name="materialCost"
                                   placeholder="Pesos" class="form-control" readonly>
                            </div>
                            <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Labor Cost</p>
                                   <input  id="wc" type="number" name="workerCost" 
                                   placeholder="Pesos" class="form-control" readonly>
                            </div>
                            <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Transportation Cost</p>
                                   <input  id="tc" type="number" name="transportationCost" 
                                   placeholder="Pesos" class="form-control" readonly>  
                            </div>
                     </div>
                     <div class="row"> 
                            <div class="col-sm-4 col-md-4"> <br><br><p>Total Estimation Cost </p>
                                   <input id="ptc" name="projectTotalCost" class="form-control" readonly>
                            </div>  
                            <div class="col-sm-8 col-md-8"> <?= br(2) ?> </div>
                     </div>
                     <div class="col-md-12 col-sm-12">
                            <?= br(3) ?>
                             <button name="saveProject" class="btn btn-<?= $this->session->button ?> btn-block"  >
                                   <i class='fa fa-save'></i> SaveQuotation  </button> 
                           <?= br(5) ?>
                     </div> 
              </div>

       </div>  
        
<?= form_close(); ?>

</body>

 <?= $footer ?>
 <?= $modal ?>
