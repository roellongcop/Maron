<?= $header ?>
<?= $sidenav ?> 

<br><br>
<section class="content-header"> 
       <h1> 
       	<i class="fa fa-send"></i>
       	Request <small>All Request List</small> 
       </h1>
       <ol class="breadcrumb">
              <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	       <li><a href="<?= site_url('projects') ?>"><i class="fa fa-tasks"></i> Projects</a></li>
	       <li class="active"><a href=""> Request</a></li>
       </ol>
       <hr>
</section>  
 
<div class="padding">
	<div class="row">  
		<div class="col s12 m12">   
			<?php foreach ($request as $r) : ?> 
				<form id="frm-request-quotation">
					<input type="hidden" name="project_name" value="<?= $r['project_name'] ?>"> 
					<input type="hidden" name="project_address" value="<?= $r['address'] ?>">
					<input type="hidden" name="description" value="<?= $r['description'] ?>">
				</form>

				<?php if ($r['status'] == 0): ?>
					<a target="_blank" href="<?= site_url('request/create_quotation/'.$r['request_id']) ?>" 
						class="btn btn-success">
						<i class="fa fa-pencil"></i> Create Quotation
					</a> 
					<a href="<?= site_url('request/disapproved/'.$r['request_id']) ?>" 
						class="btn btn-danger">
						<i class="fa fa-trash"></i> Disapproved Request
					</a> 
				<?php else: ?>
					<a id="btn-view-quotation" href="#" 
						class="btn btn-success">
						<i class="fa fa-eye"></i> View Quotation
					</a> 
				<?php endif ?>
				

				<h3><?= $r['project_name'] ?></h3> 
				<p>
					<strong><i class="fa fa-user"></i> Client : </strong>
					<?= $r['client_name'] ?><br>

					<strong><i class="fa fa-map-marker"></i> Address : </strong>
					<?= $r['address'] ?><br>

					<strong><i class="fa fa-book"></i> Description : </strong>
					<?= $r['description'] ?><br>

					<strong class="left"><i class="fa fa-refresh"></i> Status :</strong>
					
					<?php if($r['status'] == 0) : ?> 
						<span class="label label-warning">Pending</span>
					<?php else : ?> 
						<span class="label label-success">Approved</span> 
					<?php endif; ?><br>
				</p>  <hr>
			<?php endforeach; ?>
		</div>
	</div> 
</div> 

 
<div class="row">
	<?php foreach ($work_des as $w) : ?>  
		<div class="col-sm-12 col-md-6">   
			<div class="panel panel-default w3-card-2">
			  	<div class="panel-heading">
			  		<a class="btn btn-primary" onclick="hide_this('<?= $w['work_description'] ?>')">
			  			<?= strtoupper($w['work_description']) ?>
		  			</a>
			  	</div> 
			  	<div  id="<?= $w['work_description'] ?>">
				  	<div class="panel-body">
				  		<blockquote>
					  	<?php foreach ($specs as $s) : ?> 
		        			<?php if($w['work_description'] == $s['work_description']): ?>
				      			<strong>Material : </strong><?= $s['material_name']?><br>
				      			<strong>Description : </strong><?= $s['material_description']?><hr> 
				      		<?php endif; ?>
			        		<?php endforeach; ?>   
		        		</blockquote>
				  	</div>
			  	</div>
			</div> 	
		</div>
	<?php endforeach; ?>
	
</div> 
<?= $footer ?>
  