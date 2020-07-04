<?= $header ?>
<?= $navigation ?>
	<div class="hide-on-large-only">
	 	<div class="carousel carousel-slider" id="h_carousel" data-indicators="true" style="height: 300px;">  
	 		<div class="carousel-item white-text" href="#three!"> 
		    		<img src="<?= base_url() . 'uploads/site/c3.png' ?>" class="h_img">  
		    	</div>

		 	<div class="carousel-item white-text" href="#one!">
		    		<img src="<?= base_url() . 'uploads/site/c1.png' ?>" class="h_img"> 
		    	</div>

		  	<div class="carousel-item white-text" href="#two!"> 
		    		<img src="<?= base_url() . 'uploads/site/c2.jpg' ?>" class="h_img">  
		    	</div>  
		</div> 
	</div> 

	<div class="hide-on-med-and-down">
	 	<div class="carousel carousel-slider" id="h_carousel" data-indicators="true" style="height: 500px;">  
	 		<div class="carousel-item white-text" href="#three!"> 
		    		<img src="<?= base_url() . 'uploads/site/c3.png' ?>" class="h_img">  
		    	</div>

		 	<div class="carousel-item white-text" href="#one!">
		    		<img src="<?= base_url() . 'uploads/site/c1.png' ?>" class="h_img"> 
		    	</div>

		  	<div class="carousel-item white-text" href="#two!"> 
		    		<img src="<?= base_url() . 'uploads/site/c2.jpg' ?>" class="h_img">  
		    	</div>  
		</div> 
	</div> 

	<div class="hide-on-med-and-down">
		<?= form_open('site/login'); ?>
			<div class="row">
				<div class="col s12 m4"> 
					<div id="site_login" class="card hoverable"> 
		                            <div id="padding"><br>
		                            	<h4> Login | <a class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Register as a client user" href="<?= site_url('site/signup') ?>" >Signup</a></h4><br> 
								      	<div class="row"> 
								        	<div class="input-field col s12"> 
								          		<input id="client_username" name="username" type="text" class="validate">
								          		<label for="client_username">Username</label>
								        	</div>
								     	</div> 
								     	<div class="row"> 
								        	<div class="input-field col s12"> 
								          		<input id="client-password" name="password" type="password" class="validate" >
								          		<label for="client-password">Password</label>
								        	</div>
								     	</div> 
								     	<div class="row"> 
								     		<a href="<?= site_url('site/forgot_password') ?>">Forgot Password?</a>
								        	<button type="submit" class="right waves-effect waves-light btn ">
								        		Login <i class="fa fa-angle-right"></i>
								        	</button> 
								     	</div>
		                                   <?= br(2) ?>
		                            </div>
		                     </div> 
				</div>
				<div class="col s12 m8"></div>

			</div>
		<?= form_close(); ?>
	</div>
  	 
<div class="padding" id="services"> 
	<br><h4 class="grey-color"><div class="btn btn-floating"><i class="fa fa-wrench"></i></div> Services</h4><hr> 
	<div class="row">
		<?php foreach ($services as $s) : ?>  
			<div class="col s12 m4">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
						<?php $one = 0 ; ?>
						<?php foreach ($service_images as $si) : ?>  
							<?php if($s['service_id'] == $si['service_no'] AND $one == 0) : ?>
								<img class="srvc_img responsive-img" src="<?= base_url() . $si['image_path'] ?>">
								<?php $one = 1 ; ?>
							<?php endif; ?>
						<?php endforeach; ?>
						<?php $one = 0 ; ?>
					</div> 
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4">
							<?= $s['service_name'] ?><i class="right fa fa-angle-down"></i>
						</span>
						<p><?= $s['service_description'] ?></p>
					</div>
					<div class="card-action "> 
						<a class="waves-effect waves-light activator"><?= $s['service_name'] ?></a>
					</div>
				</div>
			</div> 
		<?php endforeach; ?> 
	</div>
	<div class="right-align"> 
		
		<div class="hide-on-med-and-down">
	        	<a href="<?= site_url('site/services') ?>" class="waves-effect waves-light btn-large tooltipped" 
				data-position="bottom" data-delay="50" data-tooltip="Explore Company Services">
				<i class="fa fa-wrench"></i> View Services
			</a>
		</div>
		<div class="hide-on-large-only">
	        	<a href="<?= site_url('site/services') ?>" class="waves-effect waves-light btn tooltipped" 
				data-position="bottom" data-delay="50" data-tooltip="Explore Company Services">
				<i class="fa fa-wrench"></i> View Services
			</a>
		</div>
	</div>
	<br>
</div>



    	<div class="parallax-container">  
      		<div class="parallax">
      			<img src="<?= base_url() . 'uploads/site/p2.jpg' ?>" class="responsive-img">
      		</div>
    	</div>



 
    	<div class="padding" id="projects">  
	    	<br><h4 class="grey-color"><div class="btn btn-floating"><i class="fa fa-home"></i></div> Projects</h4><hr>
 
		<div class="hide-on-med-and-down">
			<div class="slider">
				<ul class="slides">
					<?php foreach ($projects as $p) : ?> 
						<li> 
							<img class="responsive-img" src="<?= base_url()  . $p['imagePath'] ?>">
							<div class="<?= ($p['id'] % 2 == 0)? 'caption left-align' : 'caption right-align' ?>">
								<h3><?= $p['project_name'] ?></h3>
								<h5 class="light grey-text text-lighten-3"><?= $p['scope_of_work'] ?></h5>
							</div> 
						</li>
					<?php endforeach; ?>     
				</ul>
			</div> 
	        	<a href="<?= site_url('site/projects') ?>" 
	        		class="waves-effect waves-light btn-large tooltipped right" data-position="bottom" 
				data-delay="50" data-tooltip="Explore Company Products and Projects"><i class="fa fa-home"></i> View Projects
			</a>
		</div> 

	</div> 
	<div class="hide-on-large-only m1">
		<div class="slider" style="height: 100px;">
			<ul class="slides">
				<?php foreach ($projects as $p) : ?> 
					<li> 
						<img 
							src="<?= base_url()  . $p['imagePath'] ?>">
						<div class="<?= ($p['id'] % 2 == 0)? 'caption left-align' : 'caption right-align' ?>">
							<h3><?= $p['project_name'] ?></h3>
							<h5 class="light grey-text text-lighten-3">
								<?= $p['scope_of_work'] ?>
							</h5>
						</div> 
					</li>
				<?php endforeach; ?>     
			</ul>
		</div> 
        	<a href="<?= site_url('site/projects') ?>" 
        		class="waves-effect waves-light btn tooltipped right" data-position="bottom" 
			data-delay="50" data-tooltip="Explore Company Products and Projects"><i class="fa fa-home"></i> View Projects
		</a>
	</div> <?= br(4) ?>
		
	 

	<div class="padding">

		<h4 class="grey-color"><div class="btn btn-floating"><i class="fa fa-shopping-cart"></i></div> Products</h4><hr>  
    		<div class="row">
	    		<?php foreach ($products as $pd) : ?>
	    			<div class="hide-on-med-and-down">
		    			<div class="col s12 m3">
				        	<div class="card hoverable">
					            <div class="card-image  waves-effect waves-block waves-light">
					              	<img class="responsive-img" src="<?= base_url() . $pd['image_path'] ?>"> 
					            </div> 
					            <div class="card-reveal">
							    	<span class="card-title grey-text text-darken-4">
							    		<?= $pd['product_name'] ?>
							    		<i class="right fa fa-angle-down"></i>
							    	</span>
							    	<p><?= $pd['product_description'] ?></p>
						    	</div>
					            <div class="card-action">
					              	<a class="waves-effect waves-light activator"><?= $pd['product_name'] ?></a>
					            </div>
				         	</div>  
		        		</div>  
	        		</div>
	        		<div class="hide-on-large-only">
	        			<div class="row"> 
		        			<div class="col s5">
		        				<img class="materialboxed responsive-img" src="<?= base_url() . $pd['image_path'] ?>"> 
		        			</div>
		        			<div class="col s7">
		        				<!-- <blockquote> -->
		        					<strong><?= $pd['product_name'] ?></strong><br>
		        					<?= $pd['product_description'] ?>
		        				<!-- </blockquote> -->
		        			</div>
	        			</div>
	        		</div>
	        	<?php endforeach; ?> 
        	</div>
	      <div class="right-align"> 
         		<br> 
         		<div class="hide-on-med-and-down">
		        	<a href="<?= site_url('site/products') ?>" 
		        		class="waves-effect waves-light btn-large tooltipped" data-position="bottom" 
					data-delay="50" data-tooltip="Explore Company Products and Projects"><i class="fa fa-shopping-cart"></i> View Products
				</a>
			</div>
			<div class="hide-on-large-only">
		        	<a href="<?= site_url('site/products') ?>" 
		        		class="waves-effect waves-light btn tooltipped" data-position="bottom" 
					data-delay="50" data-tooltip="Explore Company Products and Projects"><i class="fa fa-shopping-cart"></i> View Products
				</a>
			</div>
		</div>
		<br>
    	</div><!-- div padiing -->



    	<div class="parallax-container">  
      		<div class="parallax">
      			<img src="<?= base_url() . 'uploads/site/c2.jpg' ?>" class="responsive-img">
      		</div>
    	</div>

    	<div class="padding" id="teams"> 
  		<br> <h4 class="grey-color"><div class="btn btn-floating"><i class="fa fa-group"></i></div> Our Teams</h4><hr>
	  	<div class="row"> 
	  		<?php foreach ($teams as $t) : ?>
	  			<div class="hide-on-med-and-down"> 
		  			<div class="col s12 m4"> 
				        	<div class="card hoverable "> 
					        	<div class="card-image ">
					          		<img src="<?= base_url() . $t['image_path'] ?>" class="activator team_img ">
					          		<span class="card-title"><?= $t['first_name'] .  ' ' . $t['last_name'] ?></span>
					          		<a class="btn-floating halfway-fab waves-effect waves-light red"><i class="fa fa-star"></i></a>
					        	</div>
					        	<div class="card-content">
					          		<p class="truncate">i'm a <?= $t['position'] ?></p>
					        	</div>
					        	<div class="card-reveal">
								<span class="card-title grey-text text-darken-4">Information
									<i class="right fa fa-angle-down"></i>
								</span>
								<p><i class="fa fa-user-circle"></i> <strong>Fullname: </strong><?= $t['first_name'] .  ' ' . $t['middle_name'] . '. ' . $t['last_name'] ?></p>
								<p><i class="fa fa-wrench"></i><strong> Position: </strong><?= $t['position'] ?></p>
								<p><i class="fa fa-inbox"></i><strong> Email: </strong><?= $t['email'] ?></p>
								<p><i class="fa fa-group"></i><strong> Team: </strong><?= $t['team'] ?></p>
							</div>
					      </div>
				      </div>
			      </div>
			      <div class="hide-on-large-only">
			      		<div class="row">
			      			<div class="col s4">
			      				<img src="<?= base_url() . $t['image_path'] ?>" class="materialboxed responsive-img">
			      			</div>
			      			<div class="col s8">
							 <strong>Name : </strong><?= $t['first_name'] . ' ' . $t['last_name'] ?><br>
							<strong>Email : </strong><?= $t['email'] ?><br>
							<strong>Position : </strong><?= $t['position'] ?><br>
					          	<strong>Team : </strong><?= $t['team'] ?> 
			      			</div>
			      		</div>
			      </div>
	  		<?php endforeach; ?> 
	  		<a href="<?= site_url('site/teams') ?>" class="waves-effect waves-light btn-large tooltipped"
	  			data-position="right" data-delay="50" data-tooltip="View Company Personnels">
	  			<i class="fa fa-group"></i> The Company Personnels
	  		</a>
	    	</div> 
    	</div> 




    	<div class="parallax-container">  
      		<div class="parallax">
      			<img src="<?= base_url() . 'uploads/site/p4.jpg' ?>" class="responsive-img">
      		</div>
    	</div>

    	<div class="hide-on-large-only">
    		<div class="row">
	    		<div class="col s12 m12">
	    			<div id="googleMap1" class="card hoverable responsive-img"></div>
	    		</div>
    		</div>
    	</div>
    	<div class="padding" id="about">  
	    	<h4 class="grey-color"><div class="btn btn-floating"><i class="fa fa-book"></i></div> About Us</h4><hr>
	    	<div class="row">
	    		<div class="hide-on-med-and-down">
		    		<div class="col s12 m12">
		    			<div id="googleMap" class="card hoverable responsive-img"></div>
		    		</div>
		    	</div>
	    	</div>
		<div class="row">
			<?php foreach ($about as $a) : ?> 
				<?php if ($a['legend'] == 'History') : ?> 
					<div class="col s12 m6">
						<img src="<?= base_url() . 'uploads/site/profile.png' ?>" 
							class="responsive-img materialboxed">
					</div>
					<div class="col s12 m6">
						<div class="btn btn-blue"><?= $a['legend'] ?></div>
						<?= $a['description'] ?>
					</div>
				<?php endif; ?>
			<?php endforeach; ?> 
		</div> 

		<div class="row"> 
		    	<?php foreach ($about as $v) : ?> 
		    		<div class="col s12 m6"> 
					<?php if ($v['legend'] == 'Vission') : ?>
					 	<div class="btn btn-blue"><?= $v['legend'] ?></div>
						<br><blockquote><?= $v['description'] ?> </blockquote> 
					<?php elseif ($v['legend'] == 'Mission') : ?> 
						<div class="btn btn-blue"><?= $v['legend'] ?></div>
						<br><blockquote><?= $v['description'] ?> </blockquote> 
					<?php endif; ?>
				</div>    
			<?php endforeach; ?>  
		</div> 
	    	<div class="hide-on-med-and-down">
	    		<a href="<?= site_url('site/about') ?>" class="waves-effect waves-light btn-large tooltipped" 
		    		data-position="bottom" data-delay="50" data-tooltip="Explore The Company">
		    		<i class="fa fa-book"></i> The Company
		    	</a> 
	    	</div>
	    	<div class="hide-on-large-only">
	    		<a href="<?= site_url('site/about') ?>" class="waves-effect waves-light btn tooltipped" 
		    		data-position="bottom" data-delay="50" data-tooltip="Explore The Company">
		    		<i class="fa fa-book"></i> The Company
		    	</a> 
	    	</div>
	</div> <br>



	<textarea id="tooltipped" style="display: none;">
		<h6><i class="fa fa-wrench"></i> Maron Builders Company</h6>
		<p>-Silmer Village<br>
		-Biñan<br>
		-Laguna<br>
		-Philippines</p>  
	</textarea>


<!-- Add Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDsziO7yBi_o0dmCucMAUgqUKp8o3ldNY&callback=myMap"></script>
<script>
	var myCenter = new google.maps.LatLng(14.330805, 121.045020);
	function initialize() {
		var mapProp = {
			center:myCenter,
			zoom:12,
			scrollwheel:true,
			draggable:true,
			mapTypeId:google.maps.MapTypeId.ROADMAP
		};

		var contentString = $('#tooltipped').val();



		var map = new google.maps.Map(document.getElementById("googleMap"),mapProp); 
		var map2 = new google.maps.Map(document.getElementById("googleMap1"),mapProp); 

		var marker = new google.maps.Marker({
			position:myCenter,
	              title:"Maron Builders Company", 

		});

		 var infowindow = new google.maps.InfoWindow({
	          content: contentString
	        });

	        marker.addListener('click', function() {
	          infowindow.open(map, marker);
	          infowindow.open(map2, marker);
	        });

		marker.setMap(map);
		// marker.setMap(map2);

	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>


<?= $footer ?> 
<?= $modal ?>