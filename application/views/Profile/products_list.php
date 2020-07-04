 
<br><br>
<?php if ($this->session->userType == "Administrator"): ?>
	<a href="<?= site_url('products/add_products') ?>" class="card btn btn-<?= $this->session->button ?> btn-sm">
		<i class="fa fa-plus-square"> </i>
		Add New Products
	</a>
<?php endif; ?>

<?= br(3) ?>
<table class="table table-bordered example">
	<thead>
		<th>Product Name</th>
		<th>Product Name</th>
		<th>Action</th>
	</thead>
	<tbody>
		<?php foreach ($products_list as $product): ?> 
			<?php if ($product['product_name'] != 'dummy' AND $product['product_description'] != 'dummy'): ?>
				<tr>
					<td><?= $product['product_name'] ?> </td>
					<td><?= $product['product_description'] ?> </td>
					<td style="width: 20%"> 
						<a  style="width: 69px;" href="<?= site_url('products/product_view/'.$product['product_id']) ?>" class="btn btn-sm btn-<?= $this->session->button ?>"><i class="fa fa-eye"></i>View
						</a>

						<a href="#" data-toggle="modal" data-target="#product<?= $product['product_id'] ?>" 
						class="btn btn-sm btn-danger"> <i class="fa fa-trash"></i> Delete
						</a>
						<!-- MODAL DELETE SINGLE CLIENT-->
						<div id="product<?= $product['product_id'] ?>" class="modal fade" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content paper">
									<div class="modal-header"> 
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h5>Delete</h5>
									</div>
									<div class="modal-body">
										<h6>Are you sure you want delete 
											<strong><?= $product['product_name'] ?></strong> 
										</h6>
									</div>
									<div class="modal-footer"> 
										<a  href="<?= site_url('product/delete/'.$product['product_id']) ?>"  
											class="btn btn-<?= $this->session->button ?> btn-sm btn-block">
											<i class="fa fa-check"></i> 
											Yes
										</a>
									</div>    
								</div>
							</div>
						</div>
					</td>
				</tr> 
			<?php endif; ?>
		<?php endforeach; ?> 
	</tbody>
</table> 
	 