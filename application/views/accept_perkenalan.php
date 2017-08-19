
	<div>
		<h1>TERIMA PERKENALAN?</h1>
		<hr>
	</div>

	<div class="container">
		<div class="col-sm-4">
			<center>
				<img src="<?php echo $result->link_foto_peserta; ?>" alt="" width="300" class="myImg img-responsive img-thumbnail"><br>
				<p>Foto Mahasiswa Baru</p>
			</center>
		</div>
		<div class="col-sm-4">
			<table class="table table-borderless">
				<tr>
					<td><b>Nama</b></td>
					<td><?php echo $result->nama; ?></td>
				</tr>
				<tr>
					<td><b>NPM</b></td>
					<td><?php echo $result->npm_keluarga; ?></td>
				</tr>
				<tr>
					<td><b>Ciri Khas</b></td>
					<td><?php echo $result->ciri_khas; ?></td>
				</tr>
			</table>
		</div>
		<div class="col-sm-4">
			<center>
				<img src="<?php echo $result->link_foto; ?>" alt="" width="300" class="myImg img-responsive img-thumbnail"><br>
				<p>Foto Selfie</p>
			</center>
		</div>
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
				<a href="<?php echo base_url().'profile/'.$result->id_user_maba; ?>" 
					class="btn btn-warning btn-block" type="submit">Lihat Profil</a>
				<br><br>	
				<a href="<?php echo base_url().'approve_perkenalan/'.$result->id_perkenalan_kating; ?>" 
					class="btn btn-success btn-block" type="submit">Terima Perkenalan</a>
				<br><br>
				<a href="<?php echo base_url().'reject_perkenalan/'.$result->id_perkenalan_kating; ?>" 
					class="btn btn-danger btn-block" type="submit">Tolak Perkenalan</a><br><br>
		</div>
	</div>

	<style type="text/css">
		img.img-responsive {
			height: auto;
			width: auto;
			display: block;
			height: 330px;
			width: 248px;
		}
		body {
			background-color: #393639;
			color: #FFD51E;
		}

	</style>