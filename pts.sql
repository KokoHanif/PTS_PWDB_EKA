-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2021 pada 12.47
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(10) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Argono Irn', 29, 'Dk. Astana Anyar No. 792, Surakarta 71336, KalSel'),
(2, 'Cakrawangs', 28, 'Ki. Sukajadi No. 450, Sibolga 98910, JaBar'),
(3, 'Wardaya Pa', 26, 'Ki. Soekarno Hatta No. 774, Cimahi 85529, SulBar'),
(4, 'Asmianto T', 26, 'Jln. Nakula No. 542, Mataram 80011, Riau'),
(5, 'Jasmin Sar', 26, 'Psr. Gedebage Selatan No. 951, Ambon 51142, KalTim'),
(6, 'Banawi Sim', 25, 'Gg. Salatiga No. 497, Jayapura 14109, SumSel'),
(7, 'Amalia Dia', 31, 'Dk. Sugiyopranoto No. 926, Jambi 61860, SumUt'),
(8, 'Abyasa Hut', 38, 'Dk. Teuku Umar No. 824, Lhokseumawe 14676, MalUt'),
(9, 'Tina Nasyi', 33, 'Ds. Bacang No. 28, Gorontalo 73123, DIY'),
(10, 'Dartono Sa', 32, 'Gg. Kartini No. 647, Cimahi 94574, Banten'),
(11, 'Widya Suci', 25, 'Kpg. Bahagia No. 878, Kotamobagu 98264, Lampung'),
(12, 'Akarsana H', 34, 'Jln. Ki Hajar Dewantara No. 423, Bekasi 53736, NTT'),
(13, 'Titi Oktav', 27, 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 7, Bogor 39146, DKI'),
(14, 'Samiah Rah', 33, 'Dk. Sumpah Pemuda No. 925, Administrasi Jakarta Selatan 22713, Riau'),
(15, 'Cinta Wula', 34, 'Kpg. Suryo Pranoto No. 595, Administrasi Jakarta Barat 18262, KepR'),
(16, 'Tantri Pad', 29, 'Kpg. Dewi Sartika No. 986, Kendari 88205, KalBar'),
(17, 'Bakda Sito', 35, 'Dk. Basket No. 661, Banjarmasin 61607, BaBel'),
(18, 'Ophelia Nu', 30, 'Jln. Peta No. 488, Semarang 68924, SumUt'),
(19, 'Taufan Pra', 31, 'Jr. Ketandan No. 991, Palembang 26686, SumUt'),
(20, 'Safina Kas', 36, 'Jr. Baranang Siang No. 801, Tidore Kepulauan 36022, KalUt'),
(21, 'Padmi Auro', 36, 'Dk. Bakaru No. 833, Bima 63207, KalSel'),
(22, 'Yani Purna', 40, 'Dk. Taman No. 47, Bogor 96969, PapBar'),
(23, 'Unjani Has', 36, 'Jln. Suharso No. 381, Tanjung Pinang 68019, SumBar'),
(24, 'Yessi Muly', 33, 'Kpg. Bara Tambar No. 849, Gunungsitoli 19942, Bali'),
(25, 'Hasna Kusm', 34, 'Jln. Haji No. 970, Metro 83489, SulTeng'),
(26, 'Rafid Maul', 36, 'Dk. Sutarto No. 761, Banda Aceh 83637, JaTim'),
(27, 'Rina Namag', 37, 'Jr. Veteran No. 549, Sawahlunto 86698, NTB'),
(28, 'Tari Salsa', 35, 'Ki. K.H. Wahid Hasyim (Kopo) No. 806, Subulussalam 67572, SulSel'),
(29, 'Karsa Tari', 34, 'Psr. Bacang No. 897, Banjarmasin 55333, NTT'),
(30, 'Ilyas Zulk', 38, 'Ki. Sumpah Pemuda No. 722, Madiun 84457, PapBar'),
(31, 'Ophelia Su', 28, 'Gg. Monginsidi No. 423, Administrasi Jakarta Selatan 99826, Bali'),
(32, 'Edison Sin', 35, 'Jr. Yap Tjwan Bing No. 280, Bontang 70691, JaTim'),
(33, 'Ghaliyati ', 30, 'Psr. Otista No. 486, Pontianak 13616, Lampung'),
(34, 'Jamalia Pe', 39, 'Jr. Mulyadi No. 793, Administrasi Jakarta Utara 96480, JaTeng'),
(35, 'Pardi Siho', 28, 'Kpg. Baranang No. 155, Padangsidempuan 73382, SulTra'),
(36, 'Ihsan Arsi', 40, 'Dk. Bara No. 905, Palembang 62740, KalSel'),
(37, 'Gada Narpa', 39, 'Ki. Samanhudi No. 365, Pagar Alam 17531, SulBar'),
(38, 'Jaga Utama', 35, 'Gg. Otto No. 10, Tidore Kepulauan 85647, KalTeng'),
(39, 'Prayitna K', 30, 'Ki. Supono No. 618, Yogyakarta 60308, Banten'),
(40, 'Jelita Nam', 29, 'Ds. Batako No. 115, Tanjungbalai 62921, NTT'),
(41, 'Tomi Sitom', 35, 'Gg. Samanhudi No. 231, Balikpapan 35414, SumSel'),
(42, 'Malika Nur', 39, 'Ds. Pacuan Kuda No. 851, Kupang 94061, KalTeng'),
(43, 'Dadi Lazua', 27, 'Jr. Acordion No. 844, Cimahi 37923, KalBar'),
(44, 'Dacin Suwa', 29, 'Jln. Basoka No. 188, Payakumbuh 34164, SulTeng'),
(45, 'Ibrani Sam', 34, 'Ds. Radio No. 344, Semarang 15878, SumBar'),
(46, 'Iriana Sus', 35, 'Jln. Barat No. 686, Batam 92165, Bengkulu'),
(47, 'Laras Hand', 31, 'Ds. Tentara Pelajar No. 395, Pematangsiantar 25208, SulSel'),
(48, 'Halim Dadi', 40, 'Kpg. Setia Budi No. 220, Tanjungbalai 46333, SulTra'),
(49, 'Nadia Novi', 30, 'Psr. Kartini No. 179, Cimahi 52791, KalBar'),
(50, 'Zaenab Han', 40, 'Psr. Gambang No. 784, Gunungsitoli 46085, SumUt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int(255) NOT NULL,
  `deadline` date NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `selesai` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `deadline`, `desc`, `selesai`) VALUES
(55, '2021-03-29', 'PTS WEB RPL KELAS 11', 0x20),
(56, '2021-03-30', 'Desain Web', 0x20),
(57, '2021-04-07', 'Audit Keuangan', 0x20),
(61, '2021-04-01', 'Kirim Gajian', 0x20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Eka Hanif', 'ekahanif', 'eka123', 'admin'),
(2, 'Iwan', 'iwanaja', 'iwan', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
