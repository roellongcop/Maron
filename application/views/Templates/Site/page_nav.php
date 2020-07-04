<div id="page_nav_fixed" class="navbar-fixed">
	<nav id="page_nav"> 
		<ul id="projects" class="dropdown-content"> 
		  	<li>
		  		<a href="<?= site_url('site/projects') ?>">Construction
		  		</a>
	        	</li>
	        	<li>
	        		<a href="<?= site_url('site/products') ?>">Fabrication
	        		</a>
	        	</li>
		</ul>
	    	<div class="nav-wrapper">
		    	<a class="com_name">Maron Builders Company </a>  
		    	<a href="" data-activates="mobile-demo" class="button-collapse"><i class="fa fa-bars side_nav"></i></a>
		   	 <ul class="right hide-on-med-and-down">
		        	<li class="<?= ($page == 'home')? 'active' : '' ?>">
		        		<a href="<?= site_url('site') ?>" class="tooltipped" data-delay="50" 
		        			data-tooltip="Home Page" data-position="bottom">
		        			<i class="fa fa-home"></i> Home</a>
		        	</li>

			       <li class="<?= ($page == 'services')? 'active' : '' ?>">
			       	<a href="<?= site_url('site/services') ?>" class="tooltipped" data-delay="50" 
			       		data-tooltip="Company Services"><i class="fa fa-wrench"></i> Services
			       	</a>
		        	</li>

		        	<li class="<?= ($page == 'projects')? 'active' : '' ?>">
		        		<a style="width: 120px;" href="#" class="dropdown-button" href="#!" 
		        			data-activates="projects"><i class="fa fa-angle-down"></i> Projects 
		        		</a>
		        	</li> 

		        	<li class="<?= ($page == 'teams')? 'active' : '' ?>">
		        		<a href="<?= site_url('site/teams') ?>" class="tooltipped" data-delay="50" 
		        			data-tooltip="Company Personnels"><i class="fa fa-group"></i> Teams
		        		</a>
		        	</li>

			       <li class="<?= ($page == 'about')? 'active' : '' ?>">
			       	<a href="<?= site_url('site/about') ?>" class="tooltipped" data-delay="50" 
			       		data-tooltip="Company Information"><i class="fa fa-book"></i> About Us
			       	</a>
		        	</li>

		        	<li>
		        		<a href="#contacts" class="tooltipped" data-delay="50" 
			        		data-tooltip="Company Contact Details"><i class="fa fa-phone"></i> Contact Details
			        	</a>
		        	</li>

		    	</ul>

		    	<ul class="side-nav" id="mobile-demo">
		        	<li class="<?= ($page == 'home')? 'active' : '' ?>">
		        		<a href="<?= site_url('site') ?>" class="tooltipped" data-delay="50" data-tooltip="Home Page" 
		        		 ><i class="fa fa-home"></i> Home</a>
		        	</li>

			       <li class="<?= ($page == 'services')? 'active' : '' ?>">
			       	<a href="<?= site_url('site/services') ?>" class="tooltipped" data-delay="50" data-tooltip="Company Services" 
		        		><i class="fa fa-wrench"></i> Services</a>
		        	</li>

			       <li  class="<?= ($page == 'projects')? 'active' : '' ?>">
			       	<a href="<?= site_url('site/projects') ?>" class="tooltipped" data-delay="50" data-tooltip="Construction Projects"  ><i class="fa fa-industry"></i> Construction</a>
		        	</li>

		        	<li class="<?= ($page == 'projects')? 'active' : '' ?>">
		        		<a href="<?= site_url('site/products') ?>" class="tooltipped" data-delay="50" data-tooltip="Construction Projects"  ><i class="fa fa-wrench"></i> Fabrication</a>
		        	</li>

			      	<li class="<?= ($page == 'teams')? 'active' : '' ?>">
			      		<a href="<?= site_url('site/teams') ?>" class="tooltipped" data-delay="50" data-tooltip="Company Personnels" 
		        		 ><i class="fa fa-group"></i> Teams</a>
		        	</li>

			       <li class="<?= ($page == 'about')? 'active' : '' ?>">
			       	<a href="<?= site_url('site/about') ?>" class="tooltipped" data-delay="50" data-tooltip="Company Information" 
		        		 ><i class="fa fa-book"></i> About Us</a>
		        	</li>

		        	<li>
		        		<a href="#contacts" class="tooltipped" data-delay="50" data-tooltip="Company Contact Details" 
		        		><i class="fa fa-phone"></i> Contact Details</a>
		        	</li>
		    	</ul>
	    	</div>
  	</nav> 
</div>