


<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php foreach ($company_profile as $profile): ?>
        <?php if($profile['legend'] == "Company_name"): ?>
            <title><?= $profile['description'] ?></title>
            <?php $c_name = $profile['description']; ?>
        <?php endif; ?>
    <?php endforeach; ?>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <?= link_tag('assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css'); ?>
    <?= link_tag('assets/datatables.net-bs/css/dataTables.bootstrap.min.css'); ?>
    <?= link_tag('assets/select2/dist/css/select2.min.css'); ?>
    <?= link_tag('assets/font-awesome/css/font-awesome.min.css'); ?>
    <?= link_tag('assets/drog_drop/css/dropzone.css'); ?>
    <?= link_tag('assets/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css'); ?>
    <?= link_tag('assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css'); ?>
    <?= link_tag('assets/custom/css/AdminLTE.css'); ?>
    <?= link_tag('assets/ckeditor/contents.css'); ?>
    <?= link_tag('assets/skins/_all-skins.min.css'); ?>
    <?= link_tag('assets/bootstrap/css/bootstrap.min.css'); ?>
    <?= link_tag('assets/bootstrap/css/bootstrap-theme.min.css'); ?>
    <?= link_tag('assets/maron_style.css'); ?>
 
 
    <?php  if ($this->session->skin == ""): ?>
        <?php $this->session->skin = "skin-blue" ?>
        <?php $this->session->layout = "sidebar-mini" ?> 
    <?php endif; ?> 
 
 
</head>

<body class="hold-transition <?= $this->session->skin ?> <?= $this->session->layout ?>">
<div class="wrapper"> 
   <header class="main-header navbar-fixed-top"> 
        <a href="<?= site_url('site') ?>" class="logo"> 
            <span class="logo-mini"><b>Company</b></span> 
            <span class="logo-lg"><?= $c_name ?></span>
        </a>
 
        <nav class="navbar navbar-fixed-top" role="navigation"> 
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a> 
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav"> 
                    <li class="dropdown user user-menu"> 
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                            <img src="<?= base_url() . $this->session->image ?>" class="user-image" alt=""> 
                        <span class="hidden-xs"><?= $this->session->inCharge ?></span>
                        </a>
                        <ul class="dropdown-menu"> 
                            <li class="user-header">
                                <img src="<?= base_url() . $this->session->image ?>" class="img-circle" alt="#">
                                <p><?= $this->session->inCharge ?> <small><?= $this->session->email ?></small></p>
                            </li> 
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="<?= site_url('account/update_form/'. $this->session->id) ?>" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="<?= site_url('logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                                <br><br>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
   </header>