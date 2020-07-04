<?= $header ?>
<?= $navigation ?>
<div id="padding">   
	<div class="row"> 
		<div class="col s12 m12"> 
			<div class="hide-on-med-and-down">
				<h4>
					<div class="btn btn-floating"><i class="fa fa-check"></i></div> 
					Request Successfully Sent !
				</h4><hr>
				<h5 class="pink-color">Your Request was Added.</h5>
			</div>
			<div class="hide-on-large-only">
				<h5>
					<div class="btn btn-floating"><i class="fa fa-check"></i></div> 
					Request Successfully Sent !
				</h5><hr>
				<h6 class="pink-color">Your Request was Added.</h6>
			</div>
			<p>Wait for Quotation created for this request. 
				<em>It might take days.</em>
			</p>

			<a href="<?= site_url('site/request_list') ?>" class="waves-effect waves-light btn tooltipped" 
				data-position="bottom" 
				data-delay="50" data-tooltip="Your Request List">
				<i class="fa fa-list"></i> my rquest list 
			</a>
		</div> 
	</div>
</div>
<?= $footer ?>
