<?= $header ?>
<?= $navigation ?>

<div class="parallax-container">
	<?= br(7) ?>  
		<div class="row">
			<div class="col s12 m5 offset-m7">
				<div class="caption-text card">
					<p class="p-10">
						MARON BUILDERS CO. offers comprehensive engineering
						construction services. The company adopts an organization
						which deliberates from ordinary administrative and project management
						that requires technical activities and decisions. Technical
						expertise is organized along the following major engineering
						disciplines, each of which is headed by a Project Engineer. <br> 
						<button class="btn btn-large btn-blue right">
							<i class="fa fa-wrench"></i> Our services
						</button>
					</p>

				</div>
			</div> 
		</div>
<!-- 	<div class="row">
		<div class="col m4 offset-m8"> 
			<div class="caption btn" ><i style="font-size: 24px;" class="fa fa-wrench"></i> Our Services</div>
		</div>
	</div> -->
	<div class="parallax">
      		<img src="<?= base_url() . 'uploads/site/p4.jpg' ?>" class="responsive-img">
    	</div>
</div>

 
        
<div id="padding"> 
	 
	<h2 class="hide-on-small-only pink-color">What we offer?</h2> 
	<h4 class="hide-on-large-only pink-color">What we offer?</h4><hr>
	<?php $position = 0 ; ?>
	<?php foreach ($services as $s) : ?>
		<div class="row">
			<?php if($s['service_name'] == 'Other Services') : ?> 
				<div class="col s12 m6">  
			        	<h5><?= $s['service_name'] ?></h5>
			          	<div class="service-caption"><?= $s['service_description'] ?></div> 
			    	</div> 
			    	<?php foreach ($about as $all) : ?> 
			    		<?php if($all['legend'] == 'Construction Line') : ?>
			    			<div class="col s12 m6"> 
							<div class="btn"><i class="fa fa-wrench"></i>  <?= $all['legend'] ?></div> 
							<?= $all['description'] ?> 
			    			</div>
			    		<?php endif; ?>
			    	<?php endforeach;?> 
			<?php else: ?> 
				<?php if ($position % 2 == 0) : ?>   
			  		<div class="col s12 m5">
			  			<div class="slider" >
							<ul class="slides">
								<?php foreach ($images as $i) : ?>
									<?php if($s['service_id'] == $i['service_no']) : ?>
									<li>
										<img class="responsive-img" src="<?= base_url()  . $i['image_path'] ?>">
									</li>
									<?php endif; ?>
								<?php endforeach; ?>     
							</ul>
						</div>
				        	<!-- <center><div class="carousel service_img"> 
							<?php foreach ($images as $i) : ?> 
								<?php if($s['service_id'] == $i['service_no']) : ?>
								    	<a class="carousel-item" href="#one!">
								    		<img class="c_img materialboxed" src="<?= base_url() . $i['image_path'] ?>">
								    	</a> 
							    	<?php endif; ?>
							<?php endforeach; ?> 
					  	</div> </center> -->
				  	</div>
				  	<div class="col s12 m1"></div>
			  		<div class="col s12 m6">  
				        	<h5><?= $s['service_name'] ?></h5>
				          	<div class="service-caption"><?= $s['service_description'] ?></div>
				          	<?php if($s['service_name'] == 'Fabrication') : ?>
					          	<a href="<?= site_url('site/products') ?>" 
					          		class="btn">Click here to view products
					          	</a>
				          	<?php endif; ?>
				    	</div>
				<?php else: ?>
					<div class="col s12 m6">  
				        	<h5><?= $s['service_name'] ?></h5>
				          	<div class="service-caption"><?= $s['service_description'] ?></div>
				          	<?php if($s['service_name'] == 'Construction') : ?>
					          	<a href="<?= site_url('site/projects') ?>" 
					          		class="btn">Click here to view projects
					          	</a>
				          	<?php endif; ?>
				    	</div>
				    	<div class="col s12 m6">
				        	<center><div class="carousel service_img"> 
							<?php foreach ($images as $i) : ?> 
								<?php if($s['service_id'] == $i['service_no']) : ?>
								    	<a class="carousel-item" href="#one!">
								    		<img class="c_img materialboxed" src="<?= base_url() . $i['image_path'] ?>">
								    	</a> 
							    	<?php endif; ?>
							<?php endforeach; ?> 
					  	</div></center>
				  	</div>
				<?php endif; ?>
				<?php $position += 1 ?>
			<?php endif; ?>
		</div><hr>
	<?php endforeach; ?>
		
	 
</div>
<?= $footer ?>
 