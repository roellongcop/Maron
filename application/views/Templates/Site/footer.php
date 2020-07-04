

<footer class="page-footer" id="contacts">
     <div class="container">
          <div class="row">
               <div class="col l6 s12">
                    <h5 class="white-text">The Company</h5>
                    <?php foreach ($about as $c) : ?>
                         <?php if ($c['legend'] == 'Company_address') : ?>
                              <p class="grey-text text-lighten-4"><?= $c['description'] ?></p>
                         <?php endif; ?> 
                    <?php endforeach; ?> 
               </div>
               <div class="col l4 offset-l2 s12">
                    <h5 class="white-text"><i class="fa fa-phone"></i> Contact Details</h5>
                    <ul>
                         <?php foreach ($about as $c) : ?>
                              <?php if ($c['is_contact'] == 1) : ?>
                                   <li>
                                        <a class="grey-text text-lighten-3" 
                                             href="#!"><?= $c['legend'] .' : '.$c['description'] ?>
                                        </a>
                                   </li>
                              <?php endif; ?> 
                         <?php endforeach; ?> 
                    </ul>
               </div>
          </div>
     </div>
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
<?= script_tag('assets/site/jquery/jquery.min.js') ?>
<?= script_tag('assets/datatables.net/js/jquery.dataTables.min.js') ?>
<?= script_tag('assets/site/materialize/js/dataTables.materialize.js') ?>
<?= script_tag('assets/site/materialize/js/materialize.min.js') ?>
<?= script_tag('assets/site/custom/script.js') ?> 
</html>