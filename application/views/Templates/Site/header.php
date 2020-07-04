<!DOCTYPE html>
<html>
<head>
	<title>The Company</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<?= link_tag('assets/site/materialize/css/materialize.min.css') ?> 
	<?= link_tag('assets/site/materialize/css/dataTables.materialize.css') ?>  
	<?= link_tag('assets/font-awesome/css/font-awesome.min.css') ?>  
	<?= link_tag('assets/site/custom/css.css') ?>   
</head>

<body id="home" onload="<?= isset($data)? $data : '' ?>">