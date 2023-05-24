-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for e-perpus
DROP DATABASE IF EXISTS `e-perpus`;
CREATE DATABASE IF NOT EXISTS `e-perpus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `e-perpus`;

-- Dumping structure for table e-perpus.buku
DROP TABLE IF EXISTS `buku`;
CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(125) NOT NULL,
  `kategori_buku` varchar(125) NOT NULL,
  `penerbit_buku` varchar(125) NOT NULL,
  `pengarang` varchar(125) NOT NULL,
  `tahun_terbit` varchar(125) NOT NULL,
  `isbn` int(50) NOT NULL,
  `j_buku_baik` varchar(125) NOT NULL,
  `j_buku_rusak` varchar(125) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.buku: ~2 rows (approximately)
DELETE FROM `buku`;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` (`id_buku`, `judul_buku`, `kategori_buku`, `penerbit_buku`, `pengarang`, `tahun_terbit`, `isbn`, `j_buku_baik`, `j_buku_rusak`) VALUES
	(1, 'Tes', '-- Harap pilih kategori buku --', 'Gunawan', 'Tes', '2006', 3124, '12', '1'),
	(2, 'Bumi', 'fiksi', 'Gunawan', 'Tere LIye', '2010', 0, '12', '2');
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;

-- Dumping structure for table e-perpus.identitas
DROP TABLE IF EXISTS `identitas`;
CREATE TABLE IF NOT EXISTS `identitas` (
  `id_identitas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_app` varchar(50) NOT NULL,
  `alamat_app` text NOT NULL,
  `email_app` varchar(125) NOT NULL,
  `nomor_hp` char(50) NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.identitas: ~1 rows (approximately)
DELETE FROM `identitas`;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` (`id_identitas`, `nama_app`, `alamat_app`, `email_app`, `nomor_hp`) VALUES
	(1, 'E - Perpus', 'JL. Parakan Saat No. 20A ', 'contact@e-perpus.com', '0228298492');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;

-- Dumping structure for table e-perpus.kategori
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.kategori: ~3 rows (approximately)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `kode_kategori`, `nama_kategori`) VALUES
	(1, 'KT-001', 'Sastra'),
	(2, 'KT-002', 'Sains'),
	(3, 'KT-003', 'fiksi');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table e-perpus.pemberitahuan
DROP TABLE IF EXISTS `pemberitahuan`;
CREATE TABLE IF NOT EXISTS `pemberitahuan` (
  `id_pemberitahuan` int(11) NOT NULL AUTO_INCREMENT,
  `isi_pemberitahuan` varchar(255) NOT NULL,
  `level_user` varchar(125) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pemberitahuan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.pemberitahuan: ~3 rows (approximately)
DELETE FROM `pemberitahuan`;
/*!40000 ALTER TABLE `pemberitahuan` DISABLE KEYS */;
INSERT INTO `pemberitahuan` (`id_pemberitahuan`, `isi_pemberitahuan`, `level_user`, `status`) VALUES
	(1, '<i class=\'fa fa-exchange\'></i> #Nadhiva Adzra Tsania Telah meminjam Buku', 'Admin', 'Sudah dibaca'),
	(2, '<i class=\'fa fa-repeat\'></i> #Nadhiva Adzra Tsania Telah mengembalikan Buku', 'Admin', 'Sudah dibaca'),
	(3, '<i class=\'fa fa-exchange\'></i> #Nadhiva Adzra Tsania Telah meminjam Buku', 'Admin', 'Sudah dibaca');
/*!40000 ALTER TABLE `pemberitahuan` ENABLE KEYS */;

-- Dumping structure for table e-perpus.peminjaman
DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `nama_anggota` varchar(125) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `tanggal_peminjaman` varchar(125) NOT NULL,
  `tanggal_pengembalian` varchar(50) NOT NULL,
  `kondisi_buku_saat_dipinjam` varchar(125) NOT NULL,
  `kondisi_buku_saat_dikembalikan` varchar(125) NOT NULL,
  `denda` varchar(125) NOT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.peminjaman: ~2 rows (approximately)
DELETE FROM `peminjaman`;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` (`id_peminjaman`, `nama_anggota`, `judul_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `kondisi_buku_saat_dipinjam`, `kondisi_buku_saat_dikembalikan`, `denda`) VALUES
	(1, 'Nadhiva Adzra Tsania', 'Tes', '22-05-2023', '22-05-2023', 'Baik', 'Baik', 'Tidak ada'),
	(2, 'Nadhiva Adzra Tsania', 'Bumi', '23-05-2023', '', 'Baik', '', '');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;

-- Dumping structure for table e-perpus.penerbit
DROP TABLE IF EXISTS `penerbit`;
CREATE TABLE IF NOT EXISTS `penerbit` (
  `id_penerbit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penerbit` varchar(125) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `verif_penerbit` varchar(25) NOT NULL,
  PRIMARY KEY (`id_penerbit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.penerbit: ~1 rows (approximately)
DELETE FROM `penerbit`;
/*!40000 ALTER TABLE `penerbit` DISABLE KEYS */;
INSERT INTO `penerbit` (`id_penerbit`, `kode_penerbit`, `nama_penerbit`, `verif_penerbit`) VALUES
	(1, 'P001', 'Gunawan', 'Terverifikasi');
/*!40000 ALTER TABLE `penerbit` ENABLE KEYS */;

-- Dumping structure for table e-perpus.pesan
DROP TABLE IF EXISTS `pesan`;
CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `penerima` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `judul_pesan` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_kirim` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.pesan: ~3 rows (approximately)
DELETE FROM `pesan`;
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
INSERT INTO `pesan` (`id_pesan`, `penerima`, `pengirim`, `judul_pesan`, `isi_pesan`, `status`, `tanggal_kirim`) VALUES
	(1, 'Gunawan', 'Administrator', 'Izin Bertanya?', 'Izin Bertanya? Pak', 'Belum dibaca', '08-01-2022'),
	(2, 'Administrator', 'Nadhiva Adzra Tsania', 'Keluhan', 'buku sedikit', 'Sudah dibaca', '23-05-2023'),
	(3, 'Nadhiva Adzra Tsania', 'Administrator', 'Balasan', 'Terimaksih telah memberikan saran, akan kami pertimbangkan\r\n', 'Sudah dibaca', '23-05-2023');
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;

-- Dumping structure for table e-perpus.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `kode_user` varchar(25) NOT NULL,
  `nis` char(20) NOT NULL,
  `fullname` varchar(125) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `verif` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `join_date` varchar(125) NOT NULL,
  `terakhir_login` varchar(125) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table e-perpus.user: ~3 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id_user`, `kode_user`, `nis`, `fullname`, `username`, `password`, `kelas`, `alamat`, `verif`, `role`, `join_date`, `terakhir_login`) VALUES
	(1, '-', '-', 'Administrator', 'admin', 'admin', '-', '-', 'Iya', 'Admin', '04-05-2021', '23-05-2023 ( 08:56:18 )'),
	(2, 'AP001', '123', 'Gunawan', 'gunawan', 'Gunawan', 'X - Administrasi Perkantoran', 'Bandung', 'Tidak', 'Anggota', '08-01-2022', ''),
	(3, 'AP002', '', 'Nadhiva Adzra Tsania', 'araaaseyo', '30desember95', '', '', 'Tidak', 'Anggota', '22-05-2023', '25-05-2023 ( 01:20:26 )');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
