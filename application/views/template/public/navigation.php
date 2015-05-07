<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
				<i class="fa fa-bars fa-inverse"></i>
			</button>
			<a class="navbar-brand" href="index.html">
				<h1 class="hidden"><img src="<?=base_url();?>assets/public/img/dentsu_small.png"/></h1>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav hidden">
			  <li class="active"><a href="#intro">Home</a></li>
			  <li><a href="#about">About</a></li>
			  <li><a href="#service">Service</a></li>
			  <li><a href="#portfolio">Portfolio</a></li>			  
			  <li><a href="#contact">Contact</a></li>
			  <!--li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">Example menu</a></li>
				  <li><a href="#">Example menu</a></li>
				  <li><a href="#">Example menu</a></li>
				</ul>
			  </li-->
			</ul>
		</div>
		
		<div class="navbar navbar-right">
			<ul class="list-inline">
				<?php foreach ($languages as $language) { 
				if ($language->prefix == config_item('language')) {
				?>
				<li><img src="<?php echo base_url('assets/public/img/flags').'/'.$language->prefix;?>.png"/>
					<?php echo $language->name;?></li>
				<?php
				} else {
				?>
				<li><img src="<?php echo base_url('assets/public/img/flags').'/'.$language->prefix;?>.png"/>
					<a href="<?php echo base_url('language/'.$language->prefix);?>"><?php echo $language->name;?></a></li>
				<?php } 
				}
				?>
			</ul>
		</div>
		
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>