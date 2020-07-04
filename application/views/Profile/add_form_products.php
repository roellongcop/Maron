<?= $header ?>
<?= $sidenav ?>
<br><br><!-- Content Header (Page header) -->
<section class="content-header">
  	<h1>Add Company Products</h1>
	<ol class="breadcrumb">
     		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      		<li><a href="<?= site_url('products') ?>"><i class="fa fa-tasks"></i> Products</a></li>
      		<li class="active"><a href="">Add Products</a></li>
	</ol>
       <hr>
</section> 
<br>


<div class="col-md-6">
	<?= form_open_multipart('products/save_products');?>
		<p><i><b>Product Name</b></i></p>
    		<input type="text" class="form-control" name="product_name" placeholder="Product Name" required>
    		<br>
		<p><i><b>Product Description</b></i></p>
    		<textarea class="form-control compose" name="product_description" placeholder="Product Description" required style="height: 240px;"></textarea>
    		<br>
    		<button class="btn btn-<?= $this->session->button ?> btn-block">
    			<i class="fa fa-save"></i>
    			<i>Save Products</i>
    		</button>
    		<!-- <a href="<?= site_url('products') ?>" class="btn btn-danger">
    			<i class="fa fa-arrow-left"></i>
    			Cancel
    		</a> -->
	<?= form_close(); ?>
</div>
<div class="col-md-6">
		
	<p><i><b>Product Images</b></i></p> 
	<center>   
		<div class="image_upload_div">
			<form action="<?= site_url('products/upload') ?>" class="dropzone"  style="height: 340px;"> 
		    	</form>
		</div> 
		
	</center> 
</div> 
<?= $footer ?> 