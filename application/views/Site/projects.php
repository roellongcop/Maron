<?= $header ?>
<?= $navigation ?>


	<div class="parallax-container"> 
		<div class="parallax">
      		<img src="<?= base_url() . 'uploads/site/p1.jpg' ?>" class="responsive-img">
    	</div>
	</div>

	<div id="padding">  
		<div class="row"> 
			<div class="col s12 m6"> 
				<h3 class="hide-on-small-only pink-color">Our Construction Projects </h3> 
				<h4 class="hide-on-large-only pink-color">Our Construction Projects</h4> 
			</div> 
			<div class="col s12 m6 right-align"><br>   
				<div class="input-field">
					<select id="project_select">
						<option value="" disabled selected class="btn">Select Project Here</option>
						<?php foreach ($projects as $p) : ?> 
							<option value="<?= $p['id'] ?>"><?= $p['project_name'] ?></option> 
						<?php endforeach; ?> 
					</select> 
				</div> 		       
			</div>
			<div class="col s12 12 hide-on-small-only"><hr></div> 
		</div>
		
			<?php $c12 = 0 ; ?> 
			<?php foreach ($projects as $p) : ?> 
				<?php if($c12 == 0) : ?>
					<div class="row" id="main_project">
						<div class="col s12 m6">
							<img src="<?= base_url() . $p['imagePath'] ?>" 
							class="responsive-img materialboxed">
						</div>
						<div class="col s12 m6">
							<h5><?= $p['project_name'] ?></h5>
							<blockquote>
								<p> <i class="fa fa-user-circle"></i>
									<strong>Lead By :</strong> <?= $p['fullName'] ?>
					          		<br><i class="fa fa-map-marker"></i> 
					          		<strong>Located at : </strong><?= $p['project_address'] ?> 
					          		<br><i class="fa fa-book"></i> 
					          		<strong>Description : </strong><?= $p['scope_of_work'] ?>
					          	</p>
							</blockquote>
						</div> 
					</div>   
					<?php $c12 += 1 ; ?>
				<?php endif; ?>
			<?php endforeach; ?> 
		 
		<div class="row">
			<?php foreach ($projects as $p) : ?>   
				<div class="hide-on-med-and-down">
					<div class="col s12 m4">
			        		<div class="card hoverable">
				            		<div class="card-image materialboxed">
					              		<img class="srvc_img responsive-img" src="<?= base_url() . $p['imagePath'] ?>">
					              		<a class="btn-floating halfway-fab waves-effect waves-light green">
					              			<i class="fa fa-check"></i>
					              		</a>
				            		</div> 
				            		<div class="card-reveal">
								    	<span class="card-title grey-text text-darken-4">
								    		<?= $p['project_name'] ?><i class="right fa fa-angle-down"></i>
								    	</span>

								    	<p><i class="fa fa-user-circle"></i>
								    	<strong> Lead By : </strong><?= $p['fullName'] ?></p>

								    	<p><i class="fa fa-map-marker"></i> 
								    		<strong>Address : </strong><?= $p['project_address'] ?></p>

								    	<p><i class="fa fa-book"></i> 
								    		<strong>Description: </strong><?= $p['scope_of_work'] ?></p>
							    	</div>
				            		<div class="card-action" id="action_blue">
				              			<a class="waves-effect waves-light activator "><?= $p['project_name'] ?></a>
				            		</div>
			         		</div>
			        	</div>      
		        	</div>   

		        	<div class="hide-on-large-only">
					<div class="row">
						<div class="col s5">
							<img class="materialboxed responsive-img" src="<?= base_url() . $p['imagePath'] ?>">
						</div>
						<div class="col s7"> 
							
								<strong><?= $p['project_name'] ?></strong>
								<br><i class="fa fa-map-marker"></i> 
								<?= $p['project_address'] ?> 
								<br><i class="fa fa-book"></i> 
								<?= $p['scope_of_work'] ?>
						</div>
					</div>
				</div>   
			<?php endforeach; ?> 
		</div>
	</div>


<?= $footer ?>
 