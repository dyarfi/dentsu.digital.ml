<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="container" style="margin:200px auto 0 auto">
	<div class="row-fluid">
		<div class="content">
			<ul class="list-inline">
			<?php foreach ($menus as $menu) { ?>
				<li><a href="<?php echo base_url('page/'.$menu->title);?>"><?php echo $menu->name;?></a></li>
			<?php } ?>
			</ul>
		</div>	
	</div>	
</div>