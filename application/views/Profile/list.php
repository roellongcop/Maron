<?= $header ?>
<?= $sidenav ?>
<?= $alert ?> 
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header"> 
	<h1><i class="fa fa-building"></i> The<span class="hidden-xs text-muted"> Company Profile</span> </h1> 
       <ol class="breadcrumb">
              <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
       	<li><a href="#"><i class="fa fa-building"></i> Profile</a></li>
       </ol> 
       <hr>
</section>  

<div class="panel panel-default container-fluid">
	<div class="nav-tabs-custom">
              <ul class="nav nav-tabs">
                     <li class="<?= isset($active) && $active == 'profile' ? 'active' : ' ' ; ?>">
                            <a  data-toggle="tab" href="#company_profile">
                                   <i class="fa fa-address-book"></i>
                                   Company Profile  
                            </a>
                     </li>
                     <li class="<?= isset($active) && $active == 'services' ? 'active' : ' ' ; ?>">
                            <a  data-toggle="tab" href="#all_services">
                                   <i class="fa fa-wrench"></i>
                                   Services 
                                   <span>(<?= $this->session->all_services ?>)</span>
                            </a>
                     </li> 
                     <li class="<?= isset($active) && $active == 'products' ? 'active' : ' ' ; ?>">
                            <a  data-toggle="tab" href="#all_products">
                                   <i class="fa fa-tasks"></i>
                                   Products
                                   <span>(<?= $this->session->all_products ?>)</span>
                            </a>
                     </li> 
                     <li class="<?= isset($active) && $active == 'personnels' ? 'active' : ' ' ; ?>">
                            <a  data-toggle="tab" href="#all_personnels">
                                   <i class="fa fa-user"></i>
                                   Personnels
                                   <span>(<?= $this->session->all_personnels ?>)</span>
                            </a>
                     </li> 
              </ul>
       </div>
       <div class="tab-content">
              <div id="company_profile" class="<?= isset($active) && $active == 'profile' ? 'tab-pane fade in active' : 'tab-pane fade in' ; ?>">
              	<?= $profile ?>
              </div>
              <div id="all_services" class="<?= isset($active) && $active == 'services' ? 'tab-pane fade in active' : 'tab-pane fade in' ; ?>">
              	<?= $services ?> 
              </div>
              <div id="all_products" class="<?= isset($active) && $active == 'products' ? 'tab-pane fade in active' : 'tab-pane fade in' ; ?>">
              	<?= $products ?> 
              </div>
              <div id="all_personnels" class="<?= isset($active) && $active == 'personnels' ? 'tab-pane fade in active' : 'tab-pane fade in' ; ?>">
                     <?= $personnels ?> 
              </div>
       </div>
 
</div>
<?= $footer ?> 