<?= $header ?>
<?= $navigation ?> 
<ul id="slide-out" class="side-nav">
	<li><a href="#!"><i class="fa fa-navicon"></i> My Project List</a></li>
	<li id="padding"><input type="text" id="search-myproject" class="validate" placeholder="Type to search"></li>
	<li id="all-myprojects" class="hover"><a href="#" class="font-white"> All Projects</a></li> 
	<div id="myproject_list">  </div>
</ul> 
<div class="fixed-action-btn toolbar">
	<a class="btn-floating btn-large teal tooltipped button-collapse show-on-large" data-delay="50" 
        	data-tooltip="My Project List" data-position="left" data-activates="slide-out">
		<i class="fa fa-navicon"></i>
	</a>
</div>        
<div id="padding"> 
  	<div class="row">   
  		<h4 class="grey-color"><i class="fa fa-tasks prefix"></i> My Projects</h4>
  		<a href="<?= site_url('request_project') ?>" class="btn-large">Request Project</a>
  		<hr>
  		<div id="myproject-list">
	  		<?php foreach ($projects as $p) : ?>
				<div class="col s12 m3"> 
			        	<div class="card hoverable"> 
				        	<div class="card-image">
				          		<img src="<?= base_url() . $p['imagePath'] ?>" class="activator pro_img"> 
				          		<?php if($p['projectStatus'] == 'Finished') : ?>
				          			<a class="btn-floating halfway-fab green">
					          			<i class="fa fa-check"></i>
					          		</a>
					          	<?php elseif ($p['projectStatus'] == 'Ongoing') : ?>
					          		 <a class="btn-floating halfway-fab waves-effect waves-light blue">
					          			<i class="fa fa-refresh"></i>
					          		</a>
					          	<?php elseif ($p['projectStatus'] == 'Pending') : ?>
					          		 <a class="btn-floating halfway-fab waves-effect waves-light red">
					          			<i class="fa fa-send"></i>
					          		</a>
				          		<?php endif; ?> 

				        	</div> 
				        	<div class="card-reveal">
							 <span class="card-title grey-text text-darken-4"><?= $p['project_name'] ?>
								<i class="right fa fa-thumb-tack"></i>
							</span>  
							<p><strong><i class="fa fa-pencil"></i> Description : </strong> 
								<?= $p['scope_of_work'] ?>
							</p>
							<p><strong><i class="fa fa-map-marker"></i> Address : </strong> 
								<?= $p['project_address'] ?>
							</p> 
							<p><strong><i class="fa fa-refresh"></i> Status : </strong> 
								<?= $p['projectStatus'] ?>
							</p>

							<a href="<?= site_url('site/projects/'.$p['id']) ?>" class="btn">More Details</a>
						</div>
						<div class="card-action">
							<a href="#" class="btn btn-blue"><?= $p['project_name'] ?></a>
						</div>
				      </div>
			      </div>	
		     	<?php endforeach; ?>
	     	</div>	
	     	<div id="myproject"></div>
	</div>
</div>  
<?= $footer ?>
 