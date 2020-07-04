<?= $header ?>
<?= $navigation ?> 
 
	<div id="padding">    
		<a href="<?= site_url('site/request_list') ?>" 
			class="waves-effect waves-light btn tooltipped" data-position="bottom" 
			data-delay="50" data-tooltip="Your Project List"><i class="fa fa-angle-left"></i>
			Back to List
			
		</a> 
		<h4 class="hide-on-small-only grey-color">Create Your Request </h4>  
		<h5 class="hide-on-large-only grey-color">Create Your Request</h5> <hr>

		<div class="row">   
	    	<div class="col s12 m6"><br>
				<h5 id="the-process" class="pink-color">The Process</h5>
	    	</div>
	    	<div class="col s12 m6"><br>
		      	<ul class="tabs">
		        	<li class="tab col s6">
		        		<a id="tab-info" class="active" href="#info">
		        			<b><i class="fa fa-info prefix"></i>INFORMATION</b>
		        		</a>
		        	</li>
		        	<li class="tab col s6">
		        		<a id="tab-pref" href="#pref">
		        			<b><i class="fa fa-pencil"></i> PREFERENCES</b>
		        		</a>
		        	</li> 
		      	</ul>
			</div>
		</div>  

		<?= form_open('save_request') ?>
			<div id="info"><br>
				<div class="row"> 
					<div class="col s12 m5">
						<blockquote>
							<b>Step 1 :</b>
							Fill up all information needed on the <strong class="pink-color">information tab</strong>.<br>	
							<b>Step 2 :</b>
							Set your Preferences on the <strong class="pink-color">Preference tab</strong>.<br>
							<b>Step 3 :</b>
							Send your Project request.<br>
							<b>Step 4 :</b>
							Wait for the <strong class="pink-color">Quotation</strong> created <em>(it might take days)</em>.<br>
							<b>Step 5 :</b>
							Approved the  <strong class="pink-color">Quotation</strong> created <em>(if you want to continue)</em>.<br>
							<b>Step 6 :</b>
							Final <strong class="pink-color">verification</strong> of your project can be done 
							<strong class="pink-color">personally</strong> or you can call us in our contact details.<br>
							<b>Step 7 :</b>
							You can now monitor your 
							<strong><a href="<?= site_url('site/client_project_list') ?>">Project Here</a></strong>
							<br>
						</blockquote>
					</div>
					<div class="col s12 m7">
						<div class="row"> 
							<div class="input-field col s12 m12">
								<i class="fa fa-pencil prefix"></i>
								<input id="p_name" name="pname" type="text" class="validate">
								<label for="pname">Your Project Name</label>
							</div>
						</div>
						<div class="row"> 
							<div class="input-field col s12 m12">
								<i class="fa fa-map-marker prefix"></i>
								<input id="padd" name="padd" type="text" class="validate">
								<label for="padd">Your Project Address</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12 m12">
								<i class="fa fa-book prefix"></i>
								<textarea id="pdes" name="pdes" class="materialize-textarea"></textarea>
								<label for="pdes">Additional Description</label>
							</div> 
						</div>  
					</div>
				</div>

			</div>
			<div id="pref" class="col s12">  
				<div class="hide-on-large-only"> 
					<div class="fixed-action-btn"> 
						<a href="#request" 
							class="add_pref waves-effect waves-light btn-floating btn-large teal modal-trigger">
							<i class="fa fa-plus-square"></i> ADD
						</a>
					</div>
				</div>
				<div class="row">  
					<div class="col s12 m6 left-align">  <br> 
						<h5 id="pname"></h5> 
						<blockquote>
							<span id="p_add"></span><br>
							<span id="p_des"></span>
						</blockquote>
					</div>
					<div class="col s12 m6 right-align hide-on-small-only"> <br><br> 
						<a href="#request" class="add_pref waves-effect waves-light btn tooltipped modal-trigger" 
							data-position="bottom" data-delay="50" data-tooltip="Preferences you want">
							<i class="fa fa-plus-square"></i> Add new Preferences 
						</a>
					</div>  
				</div>

				<div class="row" id="Preferences">  </div>

				<div class="row">   
					<div class="col s12 m12 left-align"> 
						<br><br><br>
						<button id="btn-send-request" 
							class="waves-effect waves-light btn-large tooltipped" data-position="bottom" 
							data-delay="50" data-tooltip="Send your request">Send Request 
							<i class="fa fa-send"></i>
						</button>
					</div>
				</div>
			</div> 
		<?= form_close() ?>
		 

	</div> 
 
<?= $footer ?>
<?= $modal ?>
  