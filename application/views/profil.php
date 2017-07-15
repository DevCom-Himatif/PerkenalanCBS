	<div>
		<h1>PROFIL</h1>
		<hr>
	</div>
	<div class="container">
		<div class="col-sm-3">
			<center>
				<?php if ($result->link_foto == NULL): ?>
					<img src="<?php echo base_url(); ?>img/img1.jpg" alt="" class="img-responsive"><br>
				<?php else: ?>
					<img src="<?php echo $result->link_foto;?>" alt="" class="img-responsive"><br>
				<?php endif ?>
				<!-- Kalau udah login -->
				<?php if (isset($this->session->userdata['logged_in'])): ?>
					<!-- Login = peserta & dilihat != Peserta -->
					<?php if ($this->session->userdata['logged_in']['role'] != "admin"): ?>
						<!-- MABA MELIHAT KATING -->
						<?php if ($result->role != "2017"): ?>
							<button class="btn btn-warning" type="submit">Request Perkenalan</button><br><br>
						<?php endif ?>
						<!-- npm di session = npm yang dilihat -->
						<?php if ($this->session->userdata['logged_in']['npm'] == $result->npm): ?>
							<!-- PROFIL PRIBADI MABA -->
							<a href="<?php echo base_url(); ?>edit_profile"><button class="btn btn-success" type="submit">Edit Profil</button></a><br><br>
							<a href="<?php echo base_url(); ?>my_request"><button class="btn btn-warning" type="submit">Lihat Daftar Perkenalan</button></a><br><br>
						<?php endif ?>
					<?php endif ?>
					<!-- admin ngeliat -->
					<?php if ($this->session->userdata['logged_in']['role'] == "admin"): ?>
						<!-- cek apakah yang dilihat peserta atau kating -->
						<?php if ($result->role == "2017"): ?>
							<!-- ADMIN MELIHAT MABA -->
							<button class="btn btn-warning" type="submit">Lihat Daftar Perkenalan</button><br><br>
						<?php else: ?>
							<!-- ADMIN MELIHAT KATING -->
							<button class="btn btn-success" type="submit">Edit Profil</button><br><br>
							<button class="btn btn-warning" type="submit">Lihat Daftar Request</button><br><br>
						<?php endif ?>
					<?php endif ?>
				<?php endif ?>
			</center>
		</div>
		<div class="col-sm-9">
			<table class="table table-borderless">
				<tr>
					<td><b>Nama</b></td>
					<td><?php echo $result->nama; ?></td>
				</tr>
				<tr>
					<td><b>NPM</b></td>
					<td><?php echo $result->npm; ?></td>
				</tr>
				<tr>
					<td><b>Jenis Kelamin</b></td>
					<td><?php echo $result->jk; ?></td>
				</tr>
				<tr>
					<td><b>Tempat Lahir</b></td>
					<td><?php echo $result->tempat_lahir; ?></td>
				</tr>
				<tr>
					<td><b>Tanggal Lahir</b></td>
					<td><?php echo $result->tgl_lahir; ?></td>
				</tr>
				<tr>
					<td><b>Alamat Kos</b></td>
					<td><?php echo $result->alamat_kos; ?></td>
				</tr>
				<tr>
					<td><b>No HP</b></td>
					<td><?php echo $result->no_hp; ?></td>
				</tr>
				<tr>
					<td><b>ID Line</b></td>
					<td><?php echo $result->id_line; ?></td>
				</tr>
			</table>
		</div>
	</div>