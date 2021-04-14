<?php 
session_start();
include 'koneksi.php';

$username = $_POST['username'];
$password = $_POST['password'];

$login = mysqli_query($koneksi,"SELECT * FROM user where username='$username' and password='$password'");

$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);

	//jika user login sebagai admin
	if($data['level']=="admin"){

		$_SESSION['username'] = $username;
		$_SESSION['level'] = "admin";
		//ke halaman admin
		header("location:halaman_admin.php");

	// jika user login sebagai pegawai
	}else if($data['level']=="pegawai"){

		$_SESSION['username'] = $username;
		$_SESSION['level'] = "pegawai";
		//ke halaman pegawai
		header("location:halaman_pegawai.php");

	//jika user login sebagai pengurus
	}else{

		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}	
}else{
	header("location:index.php?pesan=gagal");
}

?>