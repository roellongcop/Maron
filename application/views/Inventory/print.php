 <?= $header ?>
 
<body onload="self.print()" >   
	<?= $print_header ?><h4><b>INVENTORY REPORT</b></h4><br>
	<div class="col-md-3">
		<p><b>Person In Charge : </b><?= $this->session->inCharge ?></p>
	</div> 
	<div class="col-md-4 pull-right offset-col-md-5">
		<p><b><?= strtoupper($status) ?> ITEMS</b></p>
	</div>
	<div class="col-md-12">
		<p ><b>Date : </b><?= date('F d, Y') ?></p><br>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered"  >
			<thead>
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Description</th>
					<th>Unit</th>
					<th>Size</th>
					<th>Color</th>
					<th>Price</th>
					<th>Stock</th> 
				</tr>
			</thead> 
			<tbody>  
				<?php foreach ($inventory_list as $item): ?> 
					<tr style="border: 1px solid black">
						<td><?= $item['id']; ?></td>
						<td><?= $item['itemName']; ?></td>
						<td><?= $item['itemDescription']; ?></td>
						<td><?= $item['unit']; ?></td>
						<td><?= $item['size']; ?></td>
						<td><?= $item['color']; ?></td>
						<td><?= $item['price']; ?></td>
						<td><?= $item['stockOnHand']; ?></td>
					</tr>
				<?php endforeach; ?>  
			</tbody>
		</table>
	</div>  
</body>
 <?= $footer ?>
 