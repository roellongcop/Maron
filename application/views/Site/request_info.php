<?= $header ?>
<?= $navigation ?> 
<div id="padding" > 
	<div class="row">  
		<div class="col s12 m12">  
			<div class="hide-on-small-only">
				<a href="<?= site_url('site/request_list') ?>" 
					class="waves-effect waves-light btn tooltipped right" 
					data-position="bottom" data-delay="50" data-tooltip="Your Projects and Request">
					<i class="fa fa-angle-left"></i> Back to list  
				</a>  
			</div>
			<div class="hide-on-large-only">
				<a href="<?= site_url('site/request_list') ?>" 
					class="waves-effect waves-light btn tooltipped " 
					data-position="bottom" data-delay="50" data-tooltip="Your Projects and Request">
					<i class="fa fa-angle-left"></i> Back to list  
				</a>  
			</div>
			<?php foreach ($request as $r) : ?> 
				<h4><?= $r['project_name'] ?></h4>
				<blockquote>
					<p>
						<strong>Address : </strong><?= $r['address'] ?>
						<br><strong>Description : </strong><?= $r['description'] ?> 
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
						<?php endif; ?><br>
					</p> 

				</blockquote><hr>
			<?php endforeach; ?>
		</div>
	</div> 
	<div class="row">
		<?php foreach ($work_des as $w) : ?>  
			<div class="col s12 m6">  
			      <ul class="collection hoverable card materialboxed">
      					<li class="collection-item">  
      						<h5 class="btn btn-blue"><?= $w['work_description'] ?></h5>
					      <blockquote>
					      		<?php foreach ($specs as $s) : ?> 
				        			<?php if($w['work_description'] == $s['work_description']): ?>
						      			<strong>Material : </strong><?= $s['material_name']?><br>
						      			<strong>Description : </strong><?= $s['material_description']?><hr> 
						      		<?php endif; ?>
				        		<?php endforeach; ?>  
					      </blockquote>
				      </li> 
			       </ul>
			</div>
		<?php endforeach; ?>
		
	</div>
	 
</div>  
<?= $footer ?>
 