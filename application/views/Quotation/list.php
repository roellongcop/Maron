<?= $header ?> 
<?= $sidenav ?> 
<?= $alert ?> 
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header"> 
	<h1><i class="fa fa-edit"></i> Our<span class="hidden-xs text-muted"> Quotation List</span> </h1> 
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="#"><i class="fa fa-tasks"></i> Quotation</a></li>
    </ol><hr>
</section>  



<div class="panel panel-default container-fluid">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="active">
                <a  data-toggle="tab" href="#all_quot">
                    <i class="fa fa-address-book"></i> All Records 
                    <span>(<?= $this->session->all_quotation ?>)</span>
                </a>
            </li>
            <li>
                <a  data-toggle="tab" href="#request_quot">
                    <i class="fa fa-spinner"></i> Request 
                    <span>(<?= $this->session->q_request ?>)</span>
                </a>
            </li> 
            <li>
                <a  data-toggle="tab" href="#pending_quot">
                    <i class="fa fa-spinner"></i> Pending 
                    <span>(<?= $this->session->q_pending ?>)</span>
                </a>
            </li> 
            <li>
                <a  data-toggle="tab" href="#approved_quot">
                    <i class="fa fa-check"></i> Approved
                    <span>(<?= $this->session->q_approved ?>)</span>
                </a>
            </li> 
        </ul>
    </div>

    <div class="tab-content">
        <div id="all_quot" class="tab-pane fade in active"><?= $all ?></div>
        <div id="request_quot" class="tab-pane fade in"><?= $request ?></div>
        <div id="pending_quot" class="tab-pane fade in"><?= $pending ?></div>
        <div id="approved_quot" class="tab-pane fade in"><?= $approved ?></div>
    </div>
</div>
<?= $footer ?> 
<?= $modal ?> 
