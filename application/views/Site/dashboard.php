<?= $header ?>
<?= $navigation ?> 
<body style="background-image: url('../uploads/site/c2.jpg');background-size: 100%">
 
	<div id="padding">   
		<div class="row hide-on-med-and-down">
			<div class="col s6 m3"> 
				<div class="card hoverable " >
					<div class="btn btn-floating dash-btn grey-]+1">
						<i id="accomplishment-icon" class="fa fa-comments"></i>
					</div> 
					<div class="card-content">
						<div class="hide-on-small-only"> 
							<br><br> <span class="card-title"><hr>Accomplishments</span>
							<p>Accomplishment report are pictures with description report uploaded
							by the project leader of your project.</p>
						</div>
					</div>
				</div> 
			</div> 
			<div class="col s6 m3"> 
				<div class="card hoverable" > 
					<div class="btn btn-floating dash-btn">
						<i id="request-icon" class="fa fa-send"></i>
					</div>   
					<div class="card-content">
						<div class="hide-on-small-only">
							<br><br><span class="card-title"><hr>Request</span>
							<p>This are the list of projects you requested.</p>
						</div>
					</div>
				</div> 
			</div>
			<div class="col s6 m3"> 
				<div class="card hoverable">
					<div class="btn btn-floating dash-btn  light-blue darken-3">
						<i id="project-icon" class="fa fa-wrench"></i>
					</div>
					<div class="card-content">
						<div class="hide-on-small-only">
							<br><br><span class="card-title"><hr>Projects</span>
							<p>This includes your projects list as well as its information.</p>
						</div>
					</div>
				</div> 
			</div>

			<div class="col s6 m3"> 
				<div class="card hoverable">
					<div class="btn btn-floating dash-btn pink">
						<i id="user-icon" class="fa fa-user"></i>
					</div> 
					<div class="card-content">
						<div class="hide-on-small-only">
							<br><br><span class="card-title"><hr>Profile</span>
							<p>Includes your account information; This portion will
							help you to manage your user information.</p>
						</div>
					</div>
				</div> 
			</div>
		</div>

		<div class="hide-on-large-only"> 
			<button class="btn grey tooltipped" data-delay="50" data-tooltip="Accomplishment report are pictures with 
				description report uploaded by the project leader of your project.">
				Accomplishments <i class="fa fa-comments"></i>
			</button> <br><br> 
			

			<button class="btn tooltipped" data-delay="50" data-tooltip="Request This are the list of projects you 
				requested.">
				Requests <i class="fa fa-send"></i>
			</button> <br><br> 

			<button class="btn blue tooltipped" data-delay="50" data-tooltip="Projects; This includes your projects 
				list as well as its information.">
				Projects <i class="fa fa-wrench"></i>
			</button> <br><br> 

			<button class="btn pink tooltipped" data-delay="50" data-tooltip="Profile Includes your account 
				information; This portion will help you to manage your user information.">
				Profile <i class="fa fa-user-circle"></i>
			</button> <br><br> <br><br><br><br><br>
			

		</div>
	</div> 
 
</body>
 <?= $footer ?> 