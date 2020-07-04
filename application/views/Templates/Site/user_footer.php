	<footer class="page-footer fixed-footer" >
		<div class="footer-copyright">
	          <div class="container">
	               © <?= date('Y') ?> Maron Builders Company
	               <a class="waves-effect waves-light btn right" href="#home">
	                    Back To Top <i class="fa fa-angle-up"></i>
	               </a> 
	          </div>
	     </div>
	</footer>
</body>


<script>
     var base_url = '<?= base_url() ?>';
     var home = '<?= site_url('site/home') ?>';
</script>
<script type="text/javascript" src="<?= base_url() . 'assets/site/jquery/jquery.min.js' ?>"></script>   
<script type="text/javascript" src="<?= base_url() . 'assets/datatables.net/js/jquery.dataTables.min.js' ?>"></script> 
<script type="text/javascript" src="<?= base_url() . 'assets/site/materialize/js/dataTables.materialize.js' ?>"></script> 
<script type="text/javascript" src="<?= base_url() . 'assets/site/materialize/js/materialize.min.js' ?>"></script>  
<script type="text/javascript" src="<?= base_url() . 'assets/site/custom/script.js' ?>"></script>
</html>