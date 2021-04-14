<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data id
$id = $_GET['id'];
 
 
// menghapus data
mysqli_query($koneksi,"delete from pekerjaan where id='$id'");
 
//kembali ke index.php
header("location:halaman_pegawai.php");
 ?>