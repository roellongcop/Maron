<?= $header ?>
<?= $sidenav ?>
<?= $alert ?>

<head><?= link_tag('assets/image_gallery.css') ?></head><br><br>
<!-- Content Header (Page header) -->
<section class="content-header">
  	<h1>Company Products</h1>
	<ol class="breadcrumb">
		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
		<li><a href="<?= site_url('profile') ?>"><i class="fa fa-globe"></i> Profile</a></li>
	</ol><hr>
</section> 
<br>



 <a href="#" 
	class="toggle_add_images btn btn-<?= $this->session->button ?> btn-sm pull-left ">
	<i class="fa fa-image"></i>
	Add Images
</a>
<a href="<?= site_url('profile')?>" 
	class="btn btn-<?= $this->session->button ?> btn-sm pull-left">
	Back To List
</a>
<br><br>



<?php $loop = 1 ?>
<?php $newline = 1 ?>
<?php foreach ($product_info as $product): ?>  
		
	<?php if ($loop == 1) : ?>
		<div class="add_new_images" style="display: none;">
			<div class="col-md-2"> </div>
			<div class="col-md-8" >   
				<center>
					<h4>Drag&amp;Drop Product Image Here</h4>
					<div class="image_upload_div">
						<form action="<?= site_url('products/upload') ?>" class="dropzone"> </form>
					</div>  
					<?= form_open_multipart('products/add_product_images');?> <br>
						<input type="hidden" name="product_id" value="<?= $product['product_id'] ?>">
						<button class="btn btn-<?= $this->session->button ?> btn-block">
							<i class="fa fa-save"></i> Save Products
						</button> 
		 			<?= form_close(); ?>
				</center>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-12"><hr></div>
		</div>
	<?php endif; ?> 
		
	


	
	<?php if ($loop == 1): ?>
		<?php $loop += 1 ; ?>
		<div class="col-md-12">
			<h1><?= $product['product_name'] ?> </h1>
			<h4><?= $product['product_description'] ?> </h4>
		</div>
	<?php endif; ?>
	<div style="height: 150px;" class="col-md-3 col-xs-4 " onclick="document.getElementById('<?= $product['product_image_id'] ?>').style.display='block'" >
		<img src="<?= base_url() . $product['image_path'] ?>" style="width: 100%;height: 100%;" 
			class="w3-card-4 img-thumbnail" ></a>
		<div id="<?= $product['product_id'] ?>" style="display: none;">
			<div class="col-md-6">
				<button class="btn btn-<?= $this->session->button ?> btn-block" onclick="document.getElementById('myModal').style.display='none'"
					onmouseleave="document.getElementById('<?= $product['product_id'] ?>').style.display='none'">
					<i class="fa fa-close"></i>Close
				</button>
			</div>
			<div class="col-md-6">
				<a href="<?= site_url('products/image_delete/'.$product['product_image_id']) ?>" 
					class="btn btn-danger btn-block">
					<i class="fa fa-trash"></i> Remove
				</a>
			</div>
		</div>
	</div>
	
	<?php if ($newline == 4) : ?>
		<div class="col-sm-12"><br></div>
		<?php $newline = 0 ?>
	<?php endif; ?>
	<?php $newline += 1 ; ?>
<?php endforeach; ?> 

  

 <!-- FOR THE MODAL -->
<div class="clearfix"></div>
<!-- The Modal -->
<div id="myModal" class="modal">
	<span class="close">close</span>
	<img class="modal-content paper" id="img01">
	<div id="caption"></div>
</div>
<?= $footer ?>
