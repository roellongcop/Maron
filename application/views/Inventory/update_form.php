<?php foreach ($item_info as $item) :?>
	<!-- Content Header (Page header) -->
	<br><br>
	<section class="content-header">
		<h1>Update Item</h1>
	       <ol class="breadcrumb">
	             <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	              <li><a href="<?= site_url('inventory/list/All') ?>"><i class="fa fa-tasks"></i> Inventory</a></li>
	              <li class="active"><a href=""><?= $item['itemName'] ?></a></li>
	       </ol>
	       <hr>
	</section> 
	 

	<br>
	
	<?= form_open_multipart('inventory/save_update/'.$id);?>
		 
		<div class="col-sm-4"> <p><br> Item Name</p>
			<input type="text" name="name" class="form-control" value="<?= $item['itemName'] ?>" required>
		</div>
		<div class="col-sm-4"> <p><br>Unit</p>
			<select class="form-control select2" name="unit" value="<?= $item['unit'] ?>">
	                  	<option>Pieces</option>
	                     <option>Box</option>
	                     <option>Meter</option>
	                     <option>Liter</option>
	                     <option>kilogram</option>
	                     <option>Pack</option>
	                     <option>Dozen</option>
	                     <option>Bundle</option>
			</select>
			<br> 
		</div>
		<div class="col-sm-4"> <p><br>Size</p>
			<input type="text" name="size" class="form-control" value="<?= $item['size'] ?>" required><br>
		</div>
		<div class="col-sm-8"> 
			<p><br>Item Description</p>
			<textarea style="height: 110px;" type="text" name="description" class="form-control" required><?= $item['itemDescription'] ?></textarea>
		</div>
		<div class="col-sm-4"> 
			<p><br>Color</p>
			<input type="text" name="color" class="form-control" value="<?= $item['color'] ?>" required>

			<p><br>Price</p>
			<input type="number" name="price" class="form-control" value="<?= $item['price'] ?>" required>

		</div> 
		<div class="col-sm-4"> <p><br>Stock</p>
			<input type="number" name="stock" class="form-control" value="<?= $item['stockOnHand'] ?>">
		</div>
		<div class="col-sm-4"> <p><br>Maximum Stock</p>
			<input oninput="checkStock()" id="max" type="number" name="max" class="form-control" value="<?= $item['maximumStock'] ?>">
		</div>
		<div class="col-sm-4"> <p><br>Manimum Stock</p>
			<input oninput="checkStock()" id="min" type="number" name="min" class="form-control" value="<?= $item['criticalStock'] ?>">
			<br><br>
		</div>
		<div class="col-sm-12"> <p id="error" ></p>
		 	<input style="width: 30%" type="number" name="qty" class="form-control" placeholder="Add Quantity Here" >
			<br><br>
			<div class="col-md-12">
				<button class="btn btn-<?= $this->session->button ?> btn-lg">
					<i class='fa fa-edit'></i> 
					SAVE CHANGES
				</button>
			</div> 
			<br><br><br><br>
		 
		</div>
	<?= form_close(); ?>
<?php endforeach; ?>
