<!DOCTYPE html>
<html>
<head>
	<title>PAGINATION</title>
	
</head>
<body>

<div class="container">
	<table >
		<tr>
			<th>NO</th>
			<th>Nama</th>
			<th>Usia</th>
			<th>Alamat</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"SELECT * FROM pegawai");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['pegawai_nama']; ?></td>
				<td><?php echo $d['pegawai_umur']; ?></td>
				<td><?php echo $d['pegawai_alamat']; ?></td>
			</tr>
			<?php 
		}
		?>
	</table>
	</div>
</body>
</html>