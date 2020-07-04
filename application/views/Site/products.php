<?= $header ?>
<?= $navigation ?> 
 
	<div class="parallax-container">  
		<?= br(7) ?>  
		<div class="row">
			<div class="col s12 m5 offset-m7">
				<div class="caption-text card">
					<p class="p-10">
						The persons behind this firm have been engage extensively
						in the field of construction, trading, fabrication and development.
						MARON decided to pursue the goal to move on and expand its
						venture with the help of its affiliates aimed to a higher degree to
						become one of the leaders in construction industry.<br>
						<button class="btn btn-large btn-blue right">
							<i class="fa fa-thumbs-up"></i> Our Products
						</button>
					</p>
				</div>
			</div> 
		</div>
		 
		<div class="parallax">
			<img src="<?= base_url() . 'uploads/site/service.jpg' ?>" class="responsive-img">
		</div>
	</div> 
	<div id="padding">
		<div class="row"> 
			<ul id="slide-out" class="side-nav"> 
		    		<li><a href="#!"><i class="fa fa-navicon"></i> Our Product List</a></li>
			    	<li class="padding"> 
			    		<input class="card" type="text" id="product_menu" placeholder="Type Product Here">     
			    	</li>
			    	<div class="side-menu-list">
					<li id="all_product"><div class="hover">All Products</div>
			    		<div id="menu_list">  </div>
			    	</div>
			</ul>

			<h3 class="pink-color">Our Products</h3> 

			<a href="#" data-activates="slide-out" class="button-collapse btn  hide-on-med-and-down card">
				<i class="fa fa-navicon"> </i> product List
			</a> 
			<div class="fixed-action-btn hide-on-med-and-up">
				<a href="#" data-activates="slide-out" class="button-collapse btn-floating btn-large card">
					<i class="fa fa-navicon"> </i> List
				</a> 
			</div>
			<hr> 
		</div>

		
		<div class="row"> 
		 	<div id="hide_carousel">
		 		<h5>All Products</h5>
		 		<div class="row">
			 		<?php foreach ($products as $p) : ?>  
				 		<?php foreach ($product_images as $pi) : ?>  
				 			<?php if($p['product_id'] == $pi['product_no']) : ?>
				 				<div class="hide-on-med-and-down">
						    		<div class="col s12 m3 13"> 
							        	<div class="card hoverable"> 
								        	<div class="card-image">
								          		<img class="materialboxed"  src="<?= base_url() . $pi['image_path'] ?>">
								        	</div>  
								        	<div class="card-reveal">
								        		<span class="card-title"><?= $p['product_name'] ?></span>
								        		<br><strong>Description : </strong><?= $p['product_description'] ?>
								        	</div>
								        	<div class="card-action">
								        		<a href="#" class="activator"><?= $p['product_name'] ?></a>
								        	</div> 
								      </div>
					      			</div>	
					      		</div>

					      		<div class="hide-on-large-only">
					      			<div class="row">
										<div class="col s5">
											<img class="responsive-img materialboxed"  src="<?= base_url() . $pi['image_path'] ?>">
										</div>
										<div class="col s7"> 
											<strong><?= $p['product_name'] ?></strong>
							        		<br><?= $p['product_description'] ?>
										</div>
									</div>
								</div>
				      		<?php endif ?>
				    	<?php endforeach; ?>
			    	<?php endforeach; ?>
		    	</div>
			</div>  
			
			<div class="row">
				<div class="col s6 m5" id="product_carousel_img"></div>
				<div class="col s6 m7"> 
					<h5 id="name" class="hide-on-med-and-down"></h5>
					<h6 class="hide-on-large-only" id="product-name"></h6>
					<h6 class="grey-color" id="description"></h6>
				</div>
			</div>
		</div>
	</div>

 

<?= $footer ?>
