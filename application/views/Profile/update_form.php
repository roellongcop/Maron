<?= $header ?>  
<?= $sidenav ?>  
<br><br>
<section class="content-header"> 
	<h1><i class="fa fa-edit"></i> The<span class="hidden-xs text-muted"> Update Company Profile</span> </h1> 
	<ol class="breadcrumb">
		<li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
		<li><a href="#"><i class="fa fa-building"></i> Profile</a></li>
	</ol> <hr>
</section>  

<div class="panel panel-default container-fluid"><br>
	<?php foreach ($com_pro as $cp) : ?>  
		<?= form_open('profile/update') ?>
			<input type="hidden" name="profile_id" value="<?= $cp['profile_id'] ?>"> 
			<a href="<?= site_url('profile') ?>" class="btn btn-<?= $this->session->button ?>">
				<i class="fa fa-arrow-left"></i> Back
			</a>
			<div class="row">
				<div class="col-md-2"><br><h4>Title/Legend : </h4></div>
				<div class="col-md-4"><br>
					<input type="text" name="e_profile_title" class="form-control" value="<?= $cp['legend'] ?>">
				</div>
				<div class="col-md-6"></div>  
			</div>
			<div class="row">
				<div class="col-md-12"><h4>Description : </h4></div> 
			</div>
			<div class="row">
				<div class="col-md-12"> 
					<textarea class="ckeditor" name="e_profile_description"><?= $cp['description'] ?>"</textarea> 
				</div> 
			</div>   	 
			<button class="btn btn-<?= $this->session->button ?> btn-block">
				<i class="fa fa-check"></i> Save Changes
			</button><br>
		<?= form_close() ?>
	<?php endforeach; ?>
</div>
<?= $footer ?>  
