<?= $admin_header ?> 
	<div style="background-color: #fff">
		<?= $header ?>
		<center> <br><h4>Graphical Profit Report <?= $year_selected ?></h4><br><br></center>
		<p style="color: grey">Php</p> 

		<div class="chart"> <canvas id="barChart" style="height:230px"></canvas></div> 
		<div class="chart"><canvas id="areaChart" style="height:1px;"></canvas></div> 
	</div> 
	<script>
		var time = 0;
		var updateClock = function() {
			time += 1 ;
			if (time == 2) {
				window.print();
			}
		}
		setInterval(updateClock, 1000);
	</script>
<?= $admin_footer ?>
<?= $chart ?>
