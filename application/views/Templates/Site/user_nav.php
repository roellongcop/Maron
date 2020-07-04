<div id="user_nav_fixed" class="navbar-fixed">
	<nav id="page_nav">  
	    	<div class="nav-wrapper"> 
		    	<a href="<?= site_url('client_profile') ?>" data-position="bottom" data-delay="50" 
		    		data-tooltip="Manage your Profile" class="com_name tooltipped">
		    		<i class="fa fa-user-circle"></i> <?= $this->session->client_name ?>
		    	</a>
		    	<a href="#" data-activates="mobile-demo" class="button-collapse">
		    		<i class="fa fa-bars side_nav"></i>
		    	</a>
		    	<ul class="right hide-on-med-and-down"> 
		    		<?php if (isset($notif) && $notif > 0): ?>
		    			<li class="<?= ($page == 'notification')? 'active' : '' ?>">
			        		<a class="tooltipped " data-delay="50" data-tooltip="Your Notification"
				        		href="<?= site_url('client_notification') ?>">
				        		<i class="pulse fa fa-bell"> Notification <?= $notif ?></i> 
				        	</a>
			        	</li> 
		        	<?php else: ?>
		        		<li class="<?= ($page == 'notification')? 'active' : '' ?>">
			        		<a class="tooltipped " data-delay="50" data-tooltip="Your Notification"
				        		href="<?= site_url('client_notification') ?>">
				        		<i class="fa fa-bell">  </i> Notification
				        	</a>
			        	</li> 
		    		<?php endif ?>
		    		

		        	<li class="<?= ($page == 'home')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Home Page"
		        		href="<?= site_url('site/home') ?>">
		        		<i class="fa fa-home"></i> Home</a>
		        	</li> 

		        	<li class="<?= ($page == 'project')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Projects"
		        		href="<?= site_url('site/client_project_list') ?>">
		        		<i class="fa fa-wrench"></i> Projects</a>
		        	</li>

		        	<li class="<?= ($page == 'request')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Project Request"
		        		href="<?= site_url('site/request_list') ?>" >
		        		<i class="fa fa-send"></i> Request</a>
		        	</li>

		        	<li class="<?= ($page == 'accomplishments')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="View Accomplishments" 
		        		href="<?= site_url('accomplishments') ?>">
		        		<i class="fa fa-check"></i> Accomplishments</a>
		        	</li>
		        	
			     <!--   <li>
			       	<a href="<?= site_url('client_profile') ?>" class="tooltipped" data-delay="50" 
			       		data-tooltip="Profile" class="com_name tooltipped" >
			       		<i class="fa fa-user-circle"></i>Profile
			       	</a>
		        	</li> -->

		        	<li>
		        		<a href="<?= site_url('site/logout') ?>" class="tooltipped" data-delay="50" 
		        			data-tooltip="Logout" class="com_name tooltipped" >
		        			<i class="fa fa-power-off"></i> Logout
		        		</a>
		        	</li>

		        	<li><a href=""> </a></li>
		        	
		    	</ul>
		    	<ul class="side-nav" id="mobile-demo"> 
		    		<?php if (isset($notif) && $notif > 0): ?>
		    			<li class="<?= ($page == 'notification')? 'active' : '' ?>">
			        		<a class="tooltipped " data-delay="50" data-tooltip="Your Notification"
				        		href="<?= site_url('client_notification') ?>">
				        		<i class="pulse fa fa-bell"> Notification <?= $notif ?></i> 
				        	</a>
			        	</li> 
		        	<?php else: ?>
		        		<li class="<?= ($page == 'notification')? 'active' : '' ?>">
			        		<a class="tooltipped " data-delay="50" data-tooltip="Your Notification"
				        		href="<?= site_url('client_notification') ?>">
				        		<i class="fa fa-bell">  </i> Notification
				        	</a>
			        	</li> 
		    		<?php endif ?>
		        	
		        	<li class="<?= ($page == 'home')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Home Page" 
		        		data-position="right"  href="<?= site_url('site/home') ?>">
		        		<i class="fa fa-home"></i> Home</a>
		        	</li>

		        	<li class="<?= ($page == 'project')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Projects"
		        		href="<?= site_url('site/client_project_list') ?>">
		        		<i class="fa fa-wrench"></i> Projects</a>
		        	</li>

		        	<li class="<?= ($page == 'request')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="Your Project Request"
		        		href="<?= site_url('site/request_list') ?>" >
		        		<i class="fa fa-send"></i> Request</a>
		        	</li>

		        	<li class="<?= ($page == 'accomplishments')? 'active' : '' ?>">
		        		<a class="tooltipped" data-delay="50" data-tooltip="View Accomplishments" 
		        		data-position="right" href="<?= site_url('accomplishments') ?>">
		        		<i class="fa fa-check"></i> Accomplishments</a>
		        	</li>
		        	
		        	<li class="<?= ($page == 'profile')? 'active' : '' ?>">
		        		<a href="<?= site_url('client_profile') ?>" class="tooltipped" data-delay="50" data-position="right" data-tooltip="Profile"><i class="fa fa-user-circle"></i>Profile</a>
		        	</li>

		        	<li>
		        		<a class="tooltipped" data-delay="50" data-tooltip="Logout" data-position="right" href="<?= site_url('site/logout') ?>"><i class="fa fa-power-off"></i> Logout</a>
		        	</li>
		    	</ul>
	    	</div> 
 	</nav>
</div>
 
