<?= $header ?>
<?= $sidenav ?>
<br><br>
<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-money"></i> Expenses
			 	<?php if ($notif_expenses_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationExpenses">
						<i class="fa fa-bell pull-right"><?= $notif_expenses_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="expenses"> 
		   	<br><br><br><br>
		  	<p class="define">View Our Yearly and Monthly <br>Expenses</p>
			<br>
		</div>
		<a href="<?= site_url('expenses') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>





<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-home"></i> Projects
			 	<?php if ($notif_project_count > 0): ?>
					<a href="#" data-toggle="modal" data-target="#notificationProject">
						<i class="fa fa-bell pull-right"><?= $notif_project_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="project">  
		   	<br> 
		  	<p style="color: white;">Construction and <br>Fabrication Projects</p>
			<br>
		</div>
		<a href="<?= site_url('projects') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>




<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-wrench"></i> Inventory
			 	<?php if ($notif_inventory_count > 0): ?>
					<a href="#" data-toggle="modal" data-target="#notificationInventory">
						<i class="fa fa-bell pull-right"><?= $notif_inventory_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="inventory">  
		   	<br><br><br>
		  	<p id="check">Check our Stocks<br> Monitor our Item</p>
			<br>
		</div>
		<a href="<?= site_url('inventory') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>




<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-group"></i> User Accounts
				<?php if ($notif_useraccounts_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationUseraccount">
						<i class="fa fa-bell pull-right"><?= $notif_useraccounts_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="user">  
		   	<br> 
		  	<p class="define">How Many User<br> do we have?</p>
			<br>
		</div>
		<a href="<?= site_url('account/get/'.$this->session->id) ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>




<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-pencil"></i> User Logs
		 		<?php if ($notif_activitylogs_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationActivitylogs">
						<i class="fa fa-bell pull-right"><?= $notif_activitylogs_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="log">  
		   	<br><br><br>
		  	<p class="leftFloat">View Activity Logs and<br> events done by user</p>
			<br>
		</div>
		<a href="<?= site_url('activitylog') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>





<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-building"></i> Company Profile
		 		<?php if ($notif_profile_count > 0): ?>
					<a href="#" data-toggle="modal" data-target="#notificationProfile">
						<i class="fa fa-bell pull-right"> <?= $notif_profile_count ?> </i>
					</a>
				<?php endif; ?>
					
			</h4>
			
		</header> 
		<div class="container-fluid dashMenu" id="profile"><?= br(4) ?></div>
		<a href="<?= site_url('profile') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>


 
<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-user-circle"></i> Clients
			 	<?php if ($notif_client_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationClients">
						<i class="fa fa-bell pull-right"><?= $notif_client_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="client"> 
		   	<br><br><br><br>
		  	<p class="define">View Our Clients </p>
			<br>
		</div>
		<a href="<?= site_url('clients') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>





<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-send"></i> Request
			 	<?php if ($notif_request_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationRequests">
						<i class="fa fa-bell pull-right"><?= $notif_request_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="request"> 
		   	<br><br><br><br>
		  	<p class="define">View Request </p>
			<br>
		</div>
		<a href="<?= site_url('request') ?>"  class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>





<div class="col-md-4"><br>
	<div class="panel panel-default w3-card-2">  
		<header class="container-fluid"> 
			 <h4>
			 	<i class="fa fa-pencil"></i> Quotations
			 	<?php if ($notif_quotation_count > 0 AND $this->session->userType == "Administrator"): ?>
					<a href="#" data-toggle="modal" data-target="#notificationQuotations">
						<i class="fa fa-bell pull-right"><?= $notif_quotation_count ?> </i>
					</a>
				<?php endif; ?>
			</h4>
		</header> 
		<div class="container-fluid dashMenu" id="quotation"> 
		   	<br><br><br><br>
		  	<p class="define">View Our Quotations </p>
			<br>
		</div>
		<a href="<?= site_url('quotation') ?>"   class="btn btn-<?= $this->session->button ?> btn-block" >View </a>
	</div>
</div>
<?= $footer ?>
<?= $modal ?>
