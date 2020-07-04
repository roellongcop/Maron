<?= $header ?>
<?= $navigation ?>  
 
 <ul id="slide-out" class="side-nav">
	<li><a href="#!"><i class="fa fa-navicon"></i> My Request List</a></li>
	<li id="padding"><input type="text" id="search-myrequest" class="validate" placeholder="Type to search"></li> 
	<li id="all-myrequests" class="hover"><a href="#" class="font-white"> All Projects</a></li> 
	<div id="myrequest_list"> </div>
</ul> 
<div class="fixed-action-btn toolbar">
	<a class="btn-floating btn-large teal tooltipped button-collapse show-on-large" data-delay="50" 
        	data-tooltip="My Project List" data-position="left" data-activates="slide-out">
		<i class="fa fa-navicon"></i>
	</a>
</div>
<div id="padding">
  	<div class="row">
  		<h4 class="grey-color"><i class="fa fa-send prefix"></i> My Request</h4>
  		<a href="<?= site_url('request_project') ?>" class="btn-large">Request Project</a><hr>
  		<div id="myrequest-list">
		  	<?php foreach ($requests as $r) : ?> 
				<div class="col s12 m4"> 
			        	<ul class="collection hoverable card materialboxed">
						<li class="collection-item">  
					        	<div class="card-content">  
			        				<?php if($r['status'] == 0) : ?>
				        				<a onclick="delete_request(<?= $r['request_id'] ?>, '<?= $r['project_name'] ?>')" 
				        					href="#delete_request_modal" 
				        					class="card-title grey-text text-darken-4  modal-trigger">  
										<i class="right fa fa-remove i-teal tooltipped" 
										data-position="bottom" 
										data-delay="50" 
										data-tooltip="Cancel"></i> 
										<strong class="truncate"><?= $r['project_name'] ?></strong>
									</a> 
								<?php elseif($r['status'] == 2) : ?> 
									<i class="right fa fa-thumbs-up i-teal tooltipped" 
										data-position="bottom" 
										data-delay="50" 
										data-tooltip="Approved !"></i> 
									<strong class="truncate"><?= $r['project_name'] ?></strong>
								<?php else: ?> 
									<a onclick="resend_request(<?= $r['request_id'] ?>, '<?= $r['project_name'] ?>')" 
				        					href="#resend_request" 
				        					class="card-title grey-text text-darken-4  modal-trigger">  
										<i class="right fa fa-send i-teal tooltipped" 
										data-position="bottom" 
										data-delay="50" 
										data-tooltip="Resend"></i> 
										<strong class="truncate"><?= $r['project_name'] ?></strong>
									</a> 
								<?php endif; ?>
			        				
								
								 <br>
								<!-- <blockquote> -->
									<p class="truncate">
										<strong>Description : </strong>
										<?= $r['description'] ?>
									</p>
									<strong>Address : </strong><?= $r['address'] ?>
									<br><strong>Date Created : </strong><?= $r['date_created'] ?>
									<br><strong class="left">Status :</strong>
									<?php if($r['status'] == 0) : ?> 
										<span class="new badge teal left"
										data-badge-caption="Pending"></span>
									<?php elseif($r['status'] == 2) : ?> 
										<span class="new badge green left"
										data-badge-caption="Approved"></span>
									<?php else: ?> 
										<span class="new badge red left"
										data-badge-caption="Cancelled"></span>
									<?php endif; ?>
					        		<!-- </blockquote>   -->
							</div>
							<!-- <div class="card-action">  -->
								<br><a href="<?= site_url('request_info/'.$r['request_id']) ?>" class="btn btn-blue">More Details</a> 
							<!-- </div> -->
				      		</li>
				      	</ul>
			      </div>	 
		     	<?php endforeach; ?>
		</div>
		<div id="myrequest"></div>
	</div>
</div> 
<?= $footer ?>
<?= $modal ?>
 