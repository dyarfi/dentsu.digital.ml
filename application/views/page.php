<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="container" style="margin:200px auto 0 auto">
	<div class="row-fluid">
		<div class="content">
	
			<?php /*foreach ($menus as $menu) { ?>
				<div><h2><a href="<?php echo base_url('page/'.$menu->title);?>"><?php echo $menu->name;?></a></h2></div>
			<?php }*/ ?>
			<p>
			<?php foreach ($pages as $page) { ?>
				<div>
					<h2><a href="<?php echo base_url('page/'.$page->title);?>"><?php echo $page->subject;?></a></h2>
					<?php echo $page->text;?>
				</div>
			<?php } ?>
			</p>	
		</div>
	</div>
</div>	