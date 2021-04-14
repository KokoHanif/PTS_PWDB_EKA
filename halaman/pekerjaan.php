<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
	<?php 
	session_start();

	// cek apakah yang mengakses halaman ini sudah login
	if($_SESSION['level']==""){
		header("location:../index.php?pesan=gagal");
}

	?>


<div class="atas">
	<div class="orang">
		<img src="admin.PNG"><br>

		<h3>SELAMAT DATANG</h3>

		<h1><?php echo $_SESSION['username']; ?>!</h1>


	</div>
	<form method="post" action="tambahtugas.php"><br>
		<h2 align="center">TAMBAH PEKERJAAN</h2>
		<table class="tambah">
			<tr>
				
			</tr>

			<tr>			
				<td>DEADLINE</td>
				<td><input type="date" name="sub" required="required"></td>
			</tr>
			<tr>
				<td>PEKERJAAN</td>
				<td><textarea name="deskripsi" required="required"></textarea></td>
				
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="KIRIM" style="padding: 5px 50px; cursor: pointer;"></td>
			</tr>		
		</table>
	</form>
</div>



	<div class="bungkus">
	<table class="tab1">
		<tr>
			<th>NO</th>
			<th style="width: 15%; text-align: left;">DEADLINE</th>
			<th >PEKERJAAN</th>
			<th>OPSI</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"SELECT * FROM pekerjaan");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td style="text-align: center; max-width: 5px;"><?php echo $no++; ?></td>
				<td style="max-width: 100px;"><?php echo $d['deadline']; ?></td>
				<td style="padding-left: 15px; max-width: 300px;"><p><?php echo $d['desc']; ?></p></td>
				<td style="text-align: center;">
					<a href="hapus.php?id=<?php echo $d['id']; ?>" style="color: red;">HAPUS</a>
				</td>
			</tr>
			<?php 
		}
		?>
	</table>
	</div>

</body>
</html>