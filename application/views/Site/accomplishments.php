<?= $header ?>
<?= $navigation ?>
 
<div id="padding">  
	<?php if(!empty($accomplishments)): ?>
		<div class="row"> 
			<div class="col s12 m12"> 
				<div class="hide-on-med-and-down">
					<h4 class="grey-color">
						<div class="btn btn-floating"><i class="fa fa-comments"></i></div> 
						Accomplishments
					</h4>
				</div> 
				<div class="hide-on-large-only">
					<h5 class="grey-color">
						<div class="btn btn-floating"><i class="fa fa-comments"></i></div> 
						Accomplishments
					</h5>
				</div> 
				<hr>
			</div> 
		</div>
		 
	 	<!-- <div class="input-field col s12 m4">
                     <i class="fa fa-filter prefix"></i>
		 	<input placeholder="Date Filter" type="text" class="datepicker" id="filter_accomplishments">
		 </div>  -->
	 	<?php foreach ($accomplishments as $a) : ?>    
 			
		 	<div class="col s12 m12">  
		 		<a href="<?= site_url('site/projects/'.$a['id']) ?>" class="btn btn-blue"><?= $a['project_name'] ?></a><br><br>
		 		
		 		<div class="chip grey">
			    		<img src="<?= base_url() . $a['imagePath'] ?>" alt="Contact Person">
			    		<?= $a['fullName'] ?>
			  	</div>   
		        	<blockquote><p><?= $a['date_accomplished'] ?></p> 
		          	<?= $a['caption'] ?>  </blockquote>

		          	<div class="row"> 
					<?php foreach ($accomplishments_images as $i) : ?> 
						<?php if($a['accomplishment_id'] == $i['accomplishment_no'] ): ?>
							<div class="col s6 m2">
						    		<img  class="a_img materialboxed card" src="<?= base_url() . $i['image_path'] ?>"> 
						    	</div>
						<?php endif; ?>
				    	<?php endforeach ?>  
				</div>
			</div>
			<div class="col s12 m12"><br><br><hr></div>
	 
		<?php endforeach ?> 
	<?php else : ?>
		<h4>No Accomplishments</h4>
		<a href="<?= site_url('site/client_project_list') ?>" class="waves-effect waves-light btn-large">
			Visit Projects ?
		</a>
	<?php endif; ?>
	 
</div> 
 <?= $footer ?> 
