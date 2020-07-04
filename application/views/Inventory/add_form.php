<?= $header ?>
<?= $sidenav ?>
<!-- Content Header (Page header) -->
<br><br>
<section class="content-header">
	<h1>Add New Item</h1>
       <ol class="breadcrumb">
             <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="<?= site_url('inventory/list/All') ?>"><i class="fa fa-tasks"></i> Inventory</a></li>
              <li class="active"><a href="">Add New Item</a></li>
       </ol>
       <hr>
</section> 


<br>


<?= form_open_multipart('inventory/save');?>
	<br>
	<div class="col-sm-4"> <p><br>Item Name</p>
		<input type="text" name="name" class="form-control" required>
	</div>
	<div class="col-sm-4"> <p><br>Unit</p>
		<select class="form-control select2" name="unit">
			<option>Pieces</option>
			<option>Box</option>
			<option>Meter</option>
			<option>Liter</option>
			<option>kilogram</option>
			<option>Pack</option>
			<option>Dozen</option>
			<option>Bundle</option>
		</select><br> 
	</div>
	<div class="col-sm-4"> <p><br>Size</p>
		<input type="text" name="size" class="form-control" required>
	</div>
	
	<div class="col-sm-8"> 
		<p><br>Item Description</p>
		<textarea style="height: 110px;" type="text" name="description" class="form-control" required></textarea>
	</div>
	<div class="col-sm-4"> 
		<p><br>Color</p>
		<input type="text" name="color" class="form-control" required>

		<p><br>Price</p>
		<input type="number" name="price" class="form-control" required>

	</div> 
	<div class="col-sm-4"> <p><br>Stock</p>
		<input type="number" name="stock" class="form-control">
	</div>
	<div class="col-sm-4"> <p><br>Maximum Stock</p>
		<input oninput="checkStock()" id="max" type="number" name="max" class="form-control">
	</div>
	<div class="col-sm-4"> <p><br>Minimum Stock</p>
		<input oninput="checkStock()" id="min" type="number" name="min" class="form-control">
		<br><br>
	</div>
	<div class="col-sm-12"> <p id="error">
		<center>
			<br><br>
			<button name="saveItem" class="btn btn-<?= $this->session->button ?>" >
				<i class='fa fa-check-circle'></i> SAVE ITEM
			</button><br><br>
		</center>
	</div>
<?= form_close(); ?>
<?= $footer ?>
