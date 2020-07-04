<?= $header ?> 
<?= $sidenav ?> 
<?= $alert ?> 
<body onload="load()">
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Create Project Quotation </h1> 
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?= site_url('quotation') ?>"><i class="fa fa-tasks"></i> Quotation</a></li>
        <li class="active"><a href="">Create Quotation</a></li> 
    </ol><hr>
</section>  
        

<?= form_open_multipart('quotation/save');?> 
   <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li id="client_info" class="active">
                <a  data-toggle="tab" href="#set_client"><i class="fa fa-address-book"></i> Client Information</a>
            </li>
            <li id="project_info">
                <a  data-toggle="tab" href="#set_project"><i class="fa fa-wrench"></i> The Project Information</a>
            </li>
            <li id="bill_info">
                <a data-toggle="tab" href="#bill"><i class="fa fa-paypal"></i> Work and Bills</a>
            </li>
            <li id="summary_info">
                <a data-toggle="tab" href="#summary"><i class="fa fa-money"></i> Cost Summary</a>
            </li> 
        </ul>
   </div>
   <div class="tab-content">
        <div id="set_client" class="tab-pane fade in active">
            <div class="col-md-12 col-sm-12"><br>
                <h2><i class="fa fa-user"></i><b> CLIENT INFORMATION</b></h2> 
            </div> 
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <select class="form-control select2" style="width: 110%" name="client_no" id="search_client">
                            <option disabled selected>Select Client Here</option>
                            <?php foreach ($client_list as $list): ?>
                                <?php if ($list['client_name'] != 'dummy'): ?>
                                    <option value="<?= $list['client_no'] ?>"><?= $list['client_name'] ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select><br>
                    </div>  
                    <div class="col-md-8 col-sm-8"><?= br(3) ?></div> 
                </div>
                <div class="row">
                    <div class="col-sm-4 col-md-4"><br> 
                        <p>Full Name</p>
                        <input type="text" id="fullname" class="form-control" readonly  >
                    </div> 
                    <div class="col-sm-4 col-md-4"><br> 
                        <p>Email</p>
                        <input type="email" id="email" class="form-control" readonly><?= br() ?>
                    </div>
                    <div class="col-sm-4 col-md-4"><br> 
                        <p>Mobile Number</p>
                        <input type="text" id="no" class="form-control" readonly  >
                    </div>  
                </div>

                <div class="row">
                    <div class="col-sm-4 col-md-4"> <?= br(2) ?>
                        <p>Full House Address</p>
                        <input type="text" id="address" class="form-control" readonly  >
                    </div>  
                    <div class="col-sm-4 col-md-4"><?= br(2) ?>
                        <p>Position/ if working</p> 
                        <input type="text" id="position" class="form-control" readonly  >
                    </div>  
                    <div class="col-sm-4 col-md-4"><br><br></div> 
                </div>

                 <!-- NEXT AND PREVIOUS -->
                <div class="col-md-8 col-sm-8"> </div>
                <div class="col-md-4 col-sm-4"> 
                    <a id="" class="btn btn-primary" disabled data-toggle="tab" href="#set_project">
                        <i class="fa fa-arrow-left"></i> Previous 
                    </a>
                    <a id="nxt_client" class="btn btn-primary" data-toggle="tab" href="#set_project">
                        Next <i class="fa fa-arrow-right"></i>
                    </a><hr>
                </div>
        </div>

        <div id="set_project" class="tab-pane fade in">
            <!-- PROJECT INFORMATION -->
            <div class="col-md-12 col-sm-12"><br>
                <h2><i class="fa fa-wrench"></i> <b>PROJECT INFORMATION</b></h2> <br>
            </div>
            <div class="row"><br>
                <div class="col-md-6 col-sm-6">
                    <p><br>Project Name</p>
                    <input type="text" name="projectName" class="form-control" required> 
                </div><br>
                <div class="col-md-6 col-sm-6">
                    <p> <br>Project Address</p>
                    <input type="text" name="projectAddress" class="form-control" required> 
                </div>
            </div>
                 
            <div class="row"><br>
                <div class="col-sm-3 col-md-3">
                    <p><br>Terms</p>
                    <input type="text" name="terms" placeholder="Days of Payment" class="form-control"> 
                </div>
                <div class="col-sm-3 col-md-3">  
                    <p><br>Completion</p>
                    <input type="number" name="completion" placeholder="Days of Completion" class="form-control">  
                </div>
                <div class="col-sm-3 col-md-3">  
                    <p><br>Date Started</p>
                    <div class="input-group date">
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input type="text" class="form-control pull-right" name="dateStarted" placeholder="Enter Started Date" id="datepicker1">
                    </div> 
                </div>
                <div class="col-sm-3 col-md-3">  
                    <p><br>Expected Finished</p>
                    <div class="input-group date">
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input  type="text" class="form-control pull-right" name="dateFinished" placeholder="Enter Started Date" id="datepicker" >
                    </div> 
                </div>  
            </div>

            <div class="row"><br>
                <div class="col-md-6 col-sm-6">
                    <p><br>Project Description(Scope of Work)</p>
                    <textarea type="text" name="projectDescription" class="form-control"  required style="height: 200px;"></textarea> 
                </div> 
                <div class="col-md-6 col-sm-6">
                    <p> <br>Terms and Condition</p>
                    <textarea type="text" name="condition" class="form-control" style="height: 200px;"></textarea> 
                    <br><br><br>
                </div>
            </div>

            <!-- NEXT AND PREVIOUS -->
            <div class="col-md-8 col-sm-8"> </div>
            <div class="col-md-4 col-sm-4"> 
                <a id="prev_project" class="btn btn-primary" data-toggle="tab" href="#set_client">
                    <i class="fa fa-arrow-left"></i> Previous 
                </a>
                <a id="nxt_project" class="btn btn-primary" data-toggle="tab" href="#bill">
                    Next <i class="fa fa-arrow-right"></i>
                </a> <hr>
            </div>
        </div>

        <div id="bill" class="tab-pane fade in">
            <div class="row">
                <div class="col-md-9 col-sm-9"><br>
                    <h2><i class="fa fa-paypal"></i> <b> BILL OF QUANTITIES</b></h2><br>
                </div>
                <div class="col-md-3 col-sm-3"><br><br>
                    <a class="btn btn-primary" data-toggle="modal" data-target="#add_bill">
                        <i class="fa fa-plus-square"></i> Add Bill of Quantities
                    </a>
                </div>
            </div>
            <div class="col-md-12  panel panel-default container-fluid"  id="bill_of_quantities">  </div>
            <textarea id="bill" style="display: none;" class="form-control" name="bill"></textarea>
                 <!-- NEXT AND PREVIOUS -->
            <div class="col-md-8 col-sm-8"> </div>
            <div class="col-md-4 col-sm-4"> 
                <a id="prev_bill" class="btn btn-primary" data-toggle="tab" href="#set_project">
                    <i class="fa fa-arrow-left"></i> Previous 
                </a>
                <a id="nxt_bill" class="btn btn-primary" data-toggle="tab" href="#summary">
                    Next <i class="fa fa-arrow-right"></i>
                </a><hr>
            </div>
        </div>

        <div id="summary" class="tab-pane fade in">
            <div class="col-md-12 col-sm-12"><br>
                <h2><i class="fa fa-money"></i> <b>COST SUMMARY</b> </h2> 
            </div>
            <div class="row">
                <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Material Cost</p>
                    <input id="mc" type="number" name="materialCost" placeholder="Pesos" class="form-control" readonly>
                </div>
                <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Labor Cost</p>
                    <input id="wc" type="number" name="workerCost" placeholder="Pesos" class="form-control" readonly>
                </div>
                <div class="col-sm-4 col-md-4"> <br><br><p>Estimated Transportation Cost</p>
                    <input id="tc" type="number" name="transportationCost" placeholder="Pesos" class="form-control" readonly>  
                </div>
            </div>
            <div class="row"> 
                <div class="col-sm-4 col-md-4"> <br><br><p>Total Estimation Cost </p>
                    <input id="ptc" name="projectTotalCost" class="form-control" readonly>
                </div>  
                <div class="col-sm-8 col-md-8"><br><br></div>
            </div>
            <div class="col-md-12 col-sm-12"><br><br><br>
                <button name="saveProject" class="btn btn-<?= $this->session->button ?> btn-block"  >
                    <i class='fa fa-save'></i> SaveQuotation  
                </button> <br><br><br><br><br>
            </div> 
        </div>
   </div> 
<?= form_close(); ?> 
</body>
<?= $footer ?> 
<?= $modal ?> 
