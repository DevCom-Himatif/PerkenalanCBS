	<?php if (isset($message_display)): ?>
		<br>
		<div class="alert alert-success alert-dismissable">
			<span class="close" data-dismiss="alert">x</span>
			<?php echo $message_display; ?>
		</div>
	<?php endif ?>
	<?php if (isset($error_message)): ?>
		<br>
		<div class="alert alert-danger alert-dismissable">
			<span class="close" data-dismiss="alert">x</span>
			<?php echo $error_message; ?>
		</div>
	<?php endif ?>

	<h1>KATA SAMBUTAN</h1>
	<center>
		<?php for ($i=0; $i < 5; $i++) {  ?>
			<hr>
			<h2>Nama Penyambut</h2>
			<img src="<?php echo base_url(); ?>img/img1.jpg" alt="" class="img-responsive img-thumbnail" width="200" height="200">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non eligendi magnam consequatur ut, corporis consectetur aspernatur quae numquam aperiam porro nesciunt debitis possimus animi reprehenderit vero ad quod dicta omnis?</p>
		<?php } ?>
	</center>