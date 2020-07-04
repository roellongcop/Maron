<?= $header ?>
<?= $navigation ?>

 
<div id="googleMap" class="card hoverable"></div>
<div id="padding">  
	<div class="row"> 
		<div class="col s12 m12"> 
			<h2 class="hide-on-small-only pink-color">Our Company</h2> 
			<h4 class="hide-on-large-only pink-color">Our Company</h4><hr>
		</div>  
	</div>
	
	<div class="row"> 
		<div class="row">
			<?php foreach ($about as $a) : ?> 
				<?php if ($a['legend'] == 'History') : ?>
					<div class="col s12 m6">
						<img src="<?= base_url() . 'uploads/site/profile.png' ?>" 
							class="responsive-img materialboxed">
					</div>
					<div class="col s12 m6">
						<div class="btn"><?= $a['legend'] ?></div>
						<?= $a['description'] ?>
					</div> 
				<?php endif; ?>
			<?php endforeach; ?> 
		</div> 

		<div class="row">
			<div class="col s12 m12"><?= br(3)?></div>
		    	<?php foreach ($about as $v) : ?> 
				<?php if ($v['legend'] == 'Vission') : ?>
					<div class="col s12 m6">  
						<div class="btn"><?= $v['legend'] ?></div>
						<br><blockquote><?= $v['description'] ?> </blockquote>
				  
					</div>    
				<?php endif; ?>
			<?php endforeach; ?> 
		       <?php foreach ($about as $v) : ?> 
				<?php if ($v['legend'] == 'Mission') : ?>
					<div class="col s12 m6">  
						<div class="btn"><?= $v['legend'] ?></div>
						<br><blockquote><?= $v['description'] ?> </blockquote> 
					</div>    
				<?php endif; ?>
			<?php endforeach; ?>  
		</div> 

		<div class="row"><br></div>
		<div class="row">
		    	<?php foreach ($about as $all) : ?> 
		    		<?php if($all['legend'] == 'List of Clients') : ?>
		    			<div class="col s12 m6"> 
						<div class="btn"><i class="fa fa-group"></i> <?= $all['legend'] ?></div> 
						<?= $all['description'] ?> 
		    			</div>
		    		<?php endif; ?>
		    	<?php endforeach;?> 
		    	<?php foreach ($about as $all) : ?> 
		    		<?php if($all['legend'] == 'Construction Line') : ?>
		    			<div class="col s12 m6"> 
						<div class="btn"><i class="fa fa-wrench"></i>  <?= $all['legend'] ?></div> 
						<?= $all['description'] ?> 
		    			</div>
		    		<?php endif; ?>
		    	<?php endforeach;?> 
	    	</div>
	 
	 <textarea id="tooltip" style="display: none;">
	 	<h6><i class="fa fa-wrench"></i> Maron Builders Company</h6>
		<p>-Silmer Village<br>-Biñan<br>-Laguna<br>-Philippines</p>
	 </textarea>


	<!-- Add Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDsziO7yBi_o0dmCucMAUgqUKp8o3ldNY&callback=myMap"></script>
	<script>
		var myCenter = new google.maps.LatLng(14.330805, 121.045020);
		function initialize() {
			var mapProp = {
				center:myCenter,
				zoom:12,
				scrollwheel:true,
				draggable:true,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			};

			var contentString = $('#tooltip').val();



			var map = new google.maps.Map(document.getElementById("googleMap"),mapProp); 
			// var map2 = new google.maps.Map(document.getElementById("googleMap1"),mapProp); 

			var marker = new google.maps.Marker({
				position:myCenter,
		              title:"Maron Builders Company", 

			});

			 var infowindow = new google.maps.InfoWindow({
		          content: contentString
		        });

		        marker.addListener('click', function() {
		          infowindow.open(map, marker);
		          // infowindow.open(map2, marker);
		        });

			marker.setMap(map);
			// marker.setMap(map2);

		}

		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	</div>
</div>

<?= $footer ?>
 