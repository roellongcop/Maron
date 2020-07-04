<?= $admin_header ?>
<?= $admin_sidenav ?>

  <script type="text/javascript">
 	function hide_unimportant_for_graphical_report() {
 		document.getElementById('hide_this').style.display = "none";
 		// document.getElementById('table').style.display = "none";
 		self.print();
 		document.getElementById('hide_this').style.display = "block";
 		// document.getElementById('table').style.display = "block";
 	}
</script>
<br><br>
 <!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Expenses</h1>
       <ol class="breadcrumb">
             <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="<?= site_url('inventory/list/All') ?>"><i class="fa fa-tasks"></i> Expenses</a></li>
       </ol>
       <hr>
</section> 

<div id="hide_this"> 
	<?= form_open('profit');?>
		<div class="col-md-3 sm-8">
			<select class="form-control select2" name="year">
				<option disabled selected>Select Year Here (<?= $year_selected ?>)</option>
				<?php for ($year = 2015; $year <= date('Y'); $year++): ?>
					 <option><?= $year ?></option>
				<?php endfor; ?>
			</select>
		</div>
		<div class="col-md-1 sm-4">
			<button class="btn btn-<?= $this->session->button ?>">
				<i class="fa fa-search"></i>
				Search
			</button>
		</div>
		<div class="col-md-8"></div>
		<div class="col-md-12"><br><br></div>
	<?= form_close() ?>

	<br><br>
	<!-- BUTTON FOR PRINT -->
	<a href="#" id="print-profit" class="btn btn-success" >
	 	<i class="fa fa-print"></i>
	 	Print
	</a> 
	<br>
</div>

<!-- FOR GRAPHICAL REPORT --> 
<?= $header ?>
<center>
	<br>
	<h4>Graphical Profit Report <?= $year_selected ?></h4>
	<br><br>
</center>
 <p style="color: grey">Php</p> 

<div class="chart">
        <canvas id="barChart" style="height:230px"></canvas>
</div> 
<div class="chart">
       <canvas id="areaChart" style="height:1px;"></canvas>
</div> 


<?= $admin_footer ?>
<?= $chart ?>
