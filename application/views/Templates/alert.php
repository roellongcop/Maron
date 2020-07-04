

<!-- PARA SA ALERT -->
<?php if ($this->session->flashdata('success')): ?>
	<?= br(3) ?><div class="alert alert-success notification fade-in">
		<a class='close' data-dismiss='alert' aria-label='close'>x</a>
		<h5><?= $this->session->flashdata('success') ?></h5>
	</div>
<?php elseif ($this->session->flashdata('failed')): ?>
       <?= br(3) ?><div class="alert alert-danger notification fade-in">
              <a class='close' data-dismiss='alert' aria-label='close'>x</a>
              <h5><?= $this->session->flashdata('failed') ?></h5>
       </div>
<?php elseif ($this->session->flashdata('login_failed')): ?>
       <?= br(3) ?><div class="alert alert-danger fade-in">
              <a class='close' data-dismiss='alert' aria-label='close'>x</a>
              <h5><?= $this->session->flashdata('login_failed') ?></h5> 
       </div>
<?php endif;?>
 