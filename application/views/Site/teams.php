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
						<i class="fa fa-group"></i> Our Products
					</button>

				</p>
			</div>
		</div> 
	</div>
	<!-- <div class="row">
		<div class="col m4 offset-m8">
			<div class="caption btn" ><i style="font-size: 24px;" class="fa fa-group"></i> Our Teams</div>
		</div>
	</div> -->
	<div class="parallax">
      		<img src="<?= base_url() . 'uploads/site/c2.jpg' ?>" class="responsive-img">
    	</div>
</div>

<div id="padding">  
	<div class="row"> 
		<div class="col s12 m12"> 
			<h2 class="hide-on-small-only pink-color">Our Teams</h2> 
			<h4 class="hide-on-large-only pink-color">Our Teams</h4><hr>
		</div> 
	</div>
	
	<div class="hide-on-small-only">
		<?php $main = 0 ; ?> 
		<?php foreach ($teams as $t): ?> 
			<?php if ($main == 0 ): ?> 
				<div class="row">
				   	<div class="col s12 m12"> 
					  	<div class="card horizontal hoverable materialboxed">
						      	<div class="card-image">
						        	<img src="<?= base_url() . $t['image_path'] ?>" class=" h4w5">
						      	</div>
						      	<div class="card-stacked">
						        	<div class="card-content">
							        	<span class="card-title"><?= $t['first_name'] . ' ' . $t['last_name'] ?></span>
							        	<blockquote>
							          	<p><strong>Email : </strong><?= $t['email'] ?><br>
							          	<strong>Team : </strong><?= $t['team'] ?></p>
							          	</blockquote>
							       </div>
							       <div class="card-action">
							          	<a href="#" class="btn"><?= $t['position'] ?></a>
							       </div>
							</div>
						</div>
					</div>
				</div>
			<?php $main = 1 ; ?>  
			<?php endif; ?>
		<?php endforeach; ?>
	</div>

	<div class="row">
		<?php foreach ($teams as $t): ?> 
			<div class="hide-on-med-and-down">
				<div class="col s6 m2"> 
				  	<div class="card hoverable materialboxed"> 
				  		<div class="card-image">
					        	<img class=" responsive-img" src="<?= base_url() . $t['image_path'] ?>">
					      	</div>
					      	<div class="card-stacked">
					        	<div class="card-content"> 
						          	<p> <?= $t['first_name'] . ' ' . $t['last_name'] ?><br>
					          		<?= $t['email'] ?> <br>
						          	<?= $t['team'] ?></p>
						       </div>
						     <!--   <div class="card-action">
						          	<a href="#" class="btn"><?= $t['position'] ?></a>
						       </div> -->
						</div> 
					</div>
				</div> 
			</div> 
			<div class="hide-on-large-only">
				<div class="row">
					<div class="col s4">
						<img class="materialboxed responsive-img" src="<?= base_url() . $t['image_path'] ?>">
					</div>
					<div class="col s8">
						<p><strong>Name : </strong><?= $t['first_name'] . ' ' . $t['last_name'] ?><br>
						<strong>Email : </strong><?= $t['email'] ?><br>
				          	<strong>Team : </strong><?= $t['team'] ?></p>
					</div>
				</div>
			</div>


		<?php endforeach; ?> 
	</div>
</div>

<?= $footer ?>
 