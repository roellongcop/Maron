<?= $header ?> 
<?= $sidenav ?> 
<?= $alert ?> 
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header"> 
	<h1><i class="fa fa-tasks"></i> Our<span class="hidden-xs text-muted"> Project List</span> </h1> 
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="#"><i class="fa fa-tasks"></i> Projects</a></li>
    </ol><hr>
</section>  


<div class="panel panel-default container-fluid">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="active">
                <a  data-toggle="tab" href="#all_project">
                    <i class="fa fa-address-book"></i> All Records 
                    <span>(<?= $this->session->all_project ?>)</span>
                </a>
            </li>
            <li>
                <a  data-toggle="tab" href="#pending_project">
                    <i class="fa fa-spinner"></i> Pending 
                    <span>(<?= $this->session->pending ?>)</span>
                </a>
            </li> 
            <li>
                <a  data-toggle="tab" href="#ongoing_project">
                    <i class="fa fa-wrench"></i> Ongoing
                    <span>(<?= $this->session->ongoing ?>)</span>
                </a>
            </li> 
            <li>
                <a  data-toggle="tab" href="#finished_project">
                    <i class="fa fa-thumb-tack"></i> Finished 
                    <span>(<?= $this->session->finished ?>)</span>
                </a>
            </li>  
        </ul>
    </div>
    <div class="tab-content">
        <div id="all_project" class="tab-pane fade in active"><?= $all ?></div>
        <div id="pending_project" class="tab-pane fade in"><?= $pending ?></div>
        <div id="ongoing_project" class="tab-pane fade in"><?= $ongoing ?></div>
        <div id="finished_project" class="tab-pane fade in"><?= $finished ?></div> 
    </div>
 
</div>
<?= $footer ?> 
