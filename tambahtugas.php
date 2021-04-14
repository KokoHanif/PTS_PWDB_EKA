<?php 
include 'koneksi.php';

//menangkap data yg dikirim dari form
$subjek = $_POST['sub'];
$deskripsi = $_POST['deskripsi'];

//input data ke database
mysqli_query($koneksi,"insert into pekerjaan values(' ','$subjek','$deskripsi',' ')");
header("location:halaman_admin.php");
 ?>