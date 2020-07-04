<?= $header ?>
<?= $sidenav ?>
<br><br>
<!-- Content Header (Page header) -->
<section class="content-header">
  	<h1>Add Company Services</h1>
	<ol class="breadcrumb">
     		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      		<li><a href="<?= site_url('services') ?>"><i class="fa fa-tasks"></i> Services</a></li>
      		<li class="active"><a href="">Add Services</a></li>
	</ol>
       <hr>
</section> 
<br>
 
 
<div class="col-md-6">
	<?= form_open_multipart('services/save_services');?>
		<p><i><b>Service Name</b></i></p>
    		<input type="text" class="form-control" name="service_name" placeholder="Service Name" required>
    		<br>
		<p><i><b>Service Description</b></i></p>
    		<textarea class="form-control compose" name="service_description" placeholder="Service Description" required style="height: 240px;"></textarea>
    		<br>
    		<button class="btn btn-<?= $this->session->button ?> btn-block">
    			<i class="fa fa-save"></i>
    			<i>Save Service</i>
    		</button> 
	<?= form_close(); ?>
</div>
<div class="col-md-6">
		
	<p><i><b>Service Images</b></i></p> 
	<center>   
		<div class="image_upload_div">
			<form action="<?= site_url('services/upload') ?>" class="dropzone"  style="height: 340px;"> 
		    	</form>
		</div> 
		
	</center> 
</div> 
<?= $footer ?> 