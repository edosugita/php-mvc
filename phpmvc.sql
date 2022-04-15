-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 04:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_matkul`, `id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 23, 4),
(9, 26, 4),
(10, 29, 4),
(11, 32, 4),
(12, 35, 4),
(13, 38, 4),
(14, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nrp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`) VALUES
(3, 'Edo Sugita Ibrahim', '1316738', 'edosugita.es@gmail.com', 'Teknik Informatika'),
(4, 'Abel Ananta', '1111111', 'abel@gmail.com', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `scpl` varchar(255) NOT NULL,
  `cpmk` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `kelas` varchar(50) NOT NULL,
  `offr` varchar(11) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `ruangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matkul`, `nama_matkul`, `kode_matkul`, `sks`, `scpl`, `cpmk`, `deskripsi`, `kelas`, `offr`, `angkatan`, `jam`, `hari`, `ruangan`) VALUES
(1, 'Pemrograman Web', 'NINF6014', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang XHTML, JavaScript, Java Applets, XML, Perl, PHP, ASP.NET, MySQL, dan JDBC, serta implementasinya pada basis data melalui Web.', '', 'A', '16GD', 2019, '1 - 4', 'Senin', 'Ruang G4.202 Ged B12'),
(2, 'Sistem Operasi', 'NINF6015', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep/prinsip, struktur, fungsi, kedudukan, dan mekanisme kerja dari sistem operasi (SO) serta bagian-bagiannya, terutama yang berkaitan dengan sistem operasi: Windows, Linux, serta Unix dan derivat-derivatnya.', '', 'A', '16GE', 2019, '7 - 9', 'Rabu', 'Ruang G4.209 Ged B12'),
(3, 'Teori Bahasa dan Otomata', 'NINF6016', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa mampu menerapkan konsep, teori dan kaidah abstrak bahasa dan mesin otomata dalam ilmu informatika, teknik kompilasi dan perancangan sistem komputasi baik dalam implementasi di perangkat keras maupun perangkat lunak.', '', 'A', '16GF', 2019, '1 - 3', 'Rabu', 'Ruang G4.107 Ged B12'),
(4, 'Pemrograman Berorientasi Obyek', 'NINF6017', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pemahaman dan pengetahuan tentang pemrograman berorientasi objek tingkat dasar, pemahaman mengenai konsep dasar dan implementasi pilar-pilar utama mencakup pewarisan, enkapsulasi, dan polimorfisme di dalam pemrograman berorientasi objek.Mahasiswa memiliki ketrampilanpemrograman berorientasi objek menggunakan JAVA.', '', 'A', '16GC', 2019, '1 - 4', 'Selasa', 'Ruang G4.106 Ged B12'),
(5, 'Basis Data II', 'NINF6018', 3, 'Mampu membangun aplikasi sistem informasi dengan menerapkan kemampuan mendalam pada bahasa pemrograman yang sedang trend pada masanya sehingga berkontribusi pada peningkatan mutu kehidupan bermasyarakat, berbangsa, bernegara.', '5.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: basis data objek dan basis data berbasis Web.\r\n5.2 Mahasiswa memiliki pengetahuan, keterampilan, dan pengalaman dalam membuat model basis data, mendesain basis data, dan mengimplementasikan basisdata dengan menggunakan Database Management System (DBMS) komersial (MS SQL, Oracle, atau Access).\r\n5.3 3. Mampu memanfaatkan pengetahuan dibidang sistem cerdas yang dimiliki terkait dengan pengembangan sistem cerdas yang dapat mempelajari pola data, relasi antar data, normalisasi, mengekstrak informasi dengan tujuan untuk menghasilkan solusi yang dapat diterima secara optimal', '', 'A', '16GA', 2019, '7 - 10', 'Selasa', 'Ruang G4.106 Ged B12'),
(6, 'Kalkulus Lanjut', 'NINF6019', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep fungsi, fungsi dalam bentuk parameter dan bentuk koordinat bipolar\r\n1.2 2. Mahasiswa memiliki pengetahuan dan pemahaman tentang: barisan bilangan, limit barisan, limit fungsi dan kontinyuitas fungsi.\r\n1.3 3. Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep turunan dan aplikasi turunan.', '', 'A', '16GB', 2019, '7 - 9', 'Senin', 'Ruang G4.205 Ged B12'),
(7, 'Interaksi Manusia dan Komputer', 'NINF6030', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: model, proses desain, analisis, implementasi, evaluasi, serta dokumentasi pengembangan perangkat antarmuka, untuk interaksi manusia-komputer.', '', 'A', '16MD', 2018, '1 - 4', 'Jumat', 'Ruang H5.214 Ged B11'),
(9, 'Pemrograman Web', 'NINF6014', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang XHTML, JavaScript, Java Applets, XML, Perl, PHP, ASP.NET, MySQL, dan JDBC, serta implementasinya pada basis data melalui Web.', '', 'B', '16HD', 2019, '7 - 10', 'Selasa', 'Ruang G4.201 Ged B12'),
(10, 'Sistem Operasi', 'NINF6015', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep/prinsip, struktur, fungsi, kedudukan, dan mekanisme kerja dari sistem operasi (SO) serta bagian-bagiannya, terutama yang berkaitan dengan sistem operasi: Windows, Linux, serta Unix dan derivat-derivatnya.', '', 'B', '16HE', 2019, '7 - 9', 'Rabu', 'Ruang G4.209 Ged B12'),
(11, 'Teori Bahasa dan Otomata', 'NINF6016', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa mampu menerapkan konsep, teori dan kaidah abstrak bahasa dan mesin otomata dalam ilmu informatika, teknik kompilasi dan perancangan sistem komputasi baik dalam implementasi di perangkat keras maupun perangkat lunak.', '', 'B', '16HF', 2019, '7 - 9', 'Jumat', 'Ruang G4.106 Ged B12'),
(12, 'Pemrograman Berorientasi Obyek', 'NINF6017', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pemahaman dan pengetahuan tentang pemrograman berorientasi objek tingkat dasar, pemahaman mengenai konsep dasar dan implementasi pilar-pilar utama mencakup pewarisan, enkapsulasi, dan polimorfisme di dalam pemrograman berorientasi objek.Mahasiswa memiliki ketrampilanpemrograman berorientasi objek menggunakan JAVA.', '', 'B', '16HC', 2019, '1 - 4', 'Senin', 'Ruang G4.114 Ged B12'),
(13, 'Basis Data II', 'NINF6018', 3, 'Mampu membangun aplikasi sistem informasi dengan menerapkan kemampuan mendalam pada bahasa pemrograman yang sedang trend pada masanya sehingga berkontribusi pada peningkatan mutu kehidupan bermasyarakat, berbangsa, bernegara.', '5.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: basis data objek dan basis data berbasis Web.\r\n5.2 Mahasiswa memiliki pengetahuan, keterampilan, dan pengalaman dalam membuat model basis data, mendesain basis data, dan mengimplementasikan basisdata dengan menggunakan Database Management System (DBMS) komersial (MS SQL, Oracle, atau Access).\r\n5.3 3. Mampu memanfaatkan pengetahuan dibidang sistem cerdas yang dimiliki terkait dengan pengembangan sistem cerdas yang dapat mempelajari pola data, relasi antar data, normalisasi, mengekstrak informasi dengan tujuan untuk menghasilkan solusi yang dapat diterima secara optimal', '', 'B', '16HA', 2019, '1 - 4', 'Jumat', 'Ruang G4.106 Ged B12'),
(14, 'Kalkulus Lanjut', 'NINF6019', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep fungsi, fungsi dalam bentuk parameter dan bentuk koordinat bipolar\r\n1.2 2. Mahasiswa memiliki pengetahuan dan pemahaman tentang: barisan bilangan, limit barisan, limit fungsi dan kontinyuitas fungsi.\r\n1.3 3. Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep turunan dan aplikasi turunan.', '', 'B', '16HB', 2019, '1 - 3', 'Selasa ', 'Ruang G4.202 Ged B12'),
(15, 'Interaksi Manusia dan Komputer', 'NINF6030', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: model, proses desain, analisis, implementasi, evaluasi, serta dokumentasi pengembangan perangkat antarmuka, untuk interaksi manusia-komputer.', '', 'B', '16ND', 2018, '1 - 4', 'Selasa ', 'Ruang H5.215 Ged B11'),
(16, 'Pemrograman Web', 'NINF6014', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang XHTML, JavaScript, Java Applets, XML, Perl, PHP, ASP.NET, MySQL, dan JDBC, serta implementasinya pada basis data melalui Web.', '', 'C', '16ID', 2019, '1 - 4', 'Selasa', 'Ruang G4.107 Ged B12'),
(17, 'Sistem Operasi', 'NINF6015', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep/prinsip, struktur, fungsi, kedudukan, dan mekanisme kerja dari sistem operasi (SO) serta bagian-bagiannya, terutama yang berkaitan dengan sistem operasi: Windows, Linux, serta Unix dan derivat-derivatnya.', '', 'C', '16IE', 2019, '1 - 3', 'Senin', 'Ruang G4.207 Ged B12'),
(18, 'Teori Bahasa dan Otomata', 'NINF6016', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa mampu menerapkan konsep, teori dan kaidah abstrak bahasa dan mesin otomata dalam ilmu informatika, teknik kompilasi dan perancangan sistem komputasi baik dalam implementasi di perangkat keras maupun perangkat lunak.', '', 'C', '16IF', 2019, '7 - 9', 'Rabu', 'Ruang G4.211 Ged B12'),
(19, 'Pemrograman Berorientasi Obyek', 'NINF6017', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pemahaman dan pengetahuan tentang pemrograman berorientasi objek tingkat dasar, pemahaman mengenai konsep dasar dan implementasi pilar-pilar utama mencakup pewarisan, enkapsulasi, dan polimorfisme di dalam pemrograman berorientasi objek.Mahasiswa memiliki ketrampilanpemrograman berorientasi objek menggunakan JAVA.', '', 'C', '16IC', 2019, '7 - 10', 'Senin', 'Ruang G4.207 Ged B12'),
(20, 'Basis Data II', 'NINF6018', 3, 'Mampu membangun aplikasi sistem informasi dengan menerapkan kemampuan mendalam pada bahasa pemrograman yang sedang trend pada masanya sehingga berkontribusi pada peningkatan mutu kehidupan bermasyarakat, berbangsa, bernegara.', '5.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: basis data objek dan basis data berbasis Web.\r\n5.2 Mahasiswa memiliki pengetahuan, keterampilan, dan pengalaman dalam membuat model basis data, mendesain basis data, dan mengimplementasikan basisdata dengan menggunakan Database Management System (DBMS) komersial (MS SQL, Oracle, atau Access).\r\n5.3 3. Mampu memanfaatkan pengetahuan dibidang sistem cerdas yang dimiliki terkait dengan pengembangan sistem cerdas yang dapat mempelajari pola data, relasi antar data, normalisasi, mengekstrak informasi dengan tujuan untuk menghasilkan solusi yang dapat diterima secara optimal', '', 'C', '16IA', 2019, '1 - 4', 'Senin', 'Ruang G4.103 Ged B12'),
(21, 'Kalkulus Lanjut', 'NINF6019', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep fungsi, fungsi dalam bentuk parameter dan bentuk koordinat bipolar\r\n1.2 2. Mahasiswa memiliki pengetahuan dan pemahaman tentang: barisan bilangan, limit barisan, limit fungsi dan kontinyuitas fungsi.\r\n1.3 3. Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep turunan dan aplikasi turunan.', '', 'C', '16IB', 2019, '6 - 8', 'Selasa', 'Ruang G4.202 Ged B12'),
(22, 'Interaksi Manusia dan Komputer', 'NINF6030', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: model, proses desain, analisis, implementasi, evaluasi, serta dokumentasi pengembangan perangkat antarmuka, untuk interaksi manusia-komputer.', '', 'C', '16OD', 2018, '7 - 10', 'Rabu', 'Ruang H5.402 Ged B11'),
(23, 'Multimedia', 'NINF6026', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer. 6.2 Mahasiswa memiliki pengetahuan dan pemahaman terutama tentang: konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer.', NULL, 'A', '16MF', 2018, '7 - 10', 'Jumat', 'Ruang G4.107 Ged B12'),
(24, 'Multimedia', 'NINF6026', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer. 6.2 Mahasiswa memiliki pengetahuan dan pemahaman terutama tentang: konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer.', NULL, 'B', '16NF', 2018, '1 - 4', 'Rabu', 'Ruang G4.202 Ged B12'),
(25, 'Multimedia', 'NINF6026', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer. 6.2 Mahasiswa memiliki pengetahuan dan pemahaman terutama tentang: konsep, algoritma, tools untuk pengembangan, aplikasi, serta teknik dan pengolahan grafik pada sistem komputer.', NULL, 'C', '16OE', 2018, '7 - 10', 'Selasa', 'Ruang G4.114 Ged B12'),
(26, 'Kecerdasan Buatan', 'NINF6027', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep kecerdasan buatan untuk representasi masalah dan pencarian solusi, konsep bahasa dan proses belajar, serta aplikasi kecerdasan buatan dalam sistem pakar, jaringan syaraf, dan bidang lainnya.', NULL, 'A', '16ME', 2018, '1 - 4', 'Senin', 'Ruang G4.207 Ged B12'),
(27, 'Kecerdasan Buatan', 'NINF6027', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep kecerdasan buatan untuk representasi masalah dan pencarian solusi, konsep bahasa dan proses belajar, serta aplikasi kecerdasan buatan dalam sistem pakar, jaringan syaraf, dan bidang lainnya.', NULL, 'B', '16NE', 2018, '7 - 10', 'Selasa', 'Ruang G4.107 Ged B12'),
(28, 'Kecerdasan Buatan', 'NINF6027', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: konsep kecerdasan buatan untuk representasi masalah dan pencarian solusi, konsep bahasa dan proses belajar, serta aplikasi kecerdasan buatan dalam sistem pakar, jaringan syaraf, dan bidang lainnya.', NULL, 'C', '16OD', 2018, '1 - 4', 'Selasa', 'Ruang G4.108 Ged B12'),
(29, 'Proyek Perangkat Lunak', 'NINF6028', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa mampu merencanakan dan mengelola proyek-proyek pada setiap tahap siklus hidup pengembangan perangkat lunak (SDLC) sehingga sukses mendukung tujuan strategis organisasi, dan melatih keterampilan sebagai manajer proyek atau individu lain yang terlibat dalam perencanaan dan pelacakan proyek perangkat lunak, serta pengawasan pelaksanaan proses manajemen proyek perangkat lunak.', NULL, 'A', '16MG', 2018, '1 - 4', 'Rabu', 'Ruang H5.208 Ged B11'),
(30, 'Proyek Perangkat Lunak', 'NINF6028', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa mampu merencanakan dan mengelola proyek-proyek pada setiap tahap siklus hidup pengembangan perangkat lunak (SDLC) sehingga sukses mendukung tujuan strategis organisasi, dan melatih keterampilan sebagai manajer proyek atau individu lain yang terlibat dalam perencanaan dan pelacakan proyek perangkat lunak, serta pengawasan pelaksanaan proses manajemen proyek perangkat lunak.', NULL, 'B', '16MG', 2018, '7 - 10', 'Senin', 'Ruang H5.201 Ged B11'),
(31, 'Proyek Perangkat Lunak', 'NINF6028', 3, 'Mampu membuat perencanaan bisnis digital dan mengelola usaha secara profit melalui ide kreatif, mandiri sesuai norma dan etika profesi.', '6.1 Mahasiswa mampu merencanakan dan mengelola proyek-proyek pada setiap tahap siklus hidup pengembangan perangkat lunak (SDLC) sehingga sukses mendukung tujuan strategis organisasi, dan melatih keterampilan sebagai manajer proyek atau individu lain yang terlibat dalam perencanaan dan pelacakan proyek perangkat lunak, serta pengawasan pelaksanaan proses manajemen proyek perangkat lunak.', NULL, 'C', '16MG', 2018, '1 - 4', 'Senin', 'Ruang H5.207 Ged B11'),
(32, 'Analisis dan Desain Algoritma', 'NINF6029', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '	1.1 Mahasiswa memahami tentang analisis dan desain algoritma.', NULL, 'A', '16MA', 2018, '7 - 9', 'Senin', 'Ruang G4.212 Ged B12'),
(33, 'Analisis dan Desain Algoritma', 'NINF6029', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '	1.1 Mahasiswa memahami tentang analisis dan desain algoritma.', NULL, 'B', '16NA', 2018, '7 - 9', 'Rabu', 'Ruang G4.212 Ged B12'),
(34, 'Analisis dan Desain Algoritma', 'NINF6029', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: pengertian sistem, struktur dan organisasi sistem, pengembangan sistem, analisis kebutuhan sistem, perencanaan input dan output sistem, perancangan basis data, serta implementasi hasil perancangan sistem.	1.1 Mahasiswa memahami tentang analisis dan desain algoritma.', NULL, 'C', '16OA', 2018, '1 - 3', 'Jumat', 'Ruang G4.114 Ged B12'),
(35, 'Analisis dan Desain Sistem', 'NINF6031', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk ...', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: pengertian sistem, struktur dan organisasi sistem, pengembangan sistem, analisis kebutuhan sistem, perencanaan input dan output sistem, perancangan basis data, serta implementasi hasil perancangan sistem.', NULL, 'A', '16MB', 2018, '1 - 4', 'Rabu', 'Ruang G4.111 Ged B12'),
(36, 'Analisis dan Desain Sistem', 'NINF6031', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk ...', '4.1 Mahasiswa memiliki pengetahuan dan pemahaman tentang: pengertian sistem, struktur dan organisasi sistem, pengembangan sistem, analisis kebutuhan sistem, perencanaan input dan output sistem, perancangan basis data, serta implementasi hasil perancangan sistem.', NULL, 'B', '16NB', 2018, '7 - 10', 'Jumat', 'Ruang G4.108 Ged B12'),
(37, 'Analisis dan Desain Sistem', 'NINF6031', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk ...', '1.1 Mahasiswa memiliki pengetahuan, pemahaman dan ketrampilan pada mahasiswa tentang: konsep dan organisasi keamanan, reliabilitas dan keamanan software, keamanan infrastruktur, keamanan jaringan, recovery dan maintenance, sistem deteksi dan respon, auditing dan testing keamanan, penanganan kegagalan sistem keamanan, tool komputer forensik, serta manajemen resiko dan hukum yang mengatur tentang keamanan sistem komputer.', NULL, 'C', '16OB', 2018, '7 - 10', 'Senin', 'Ruang H5.207 Ged B11'),
(38, 'Komunikasi Interpersonal', 'NINF6032', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa mengetahui dan memahami tentang perkembangan dan kecenderungan teknologi perangkat k¬eras komputer, perangkat lunak komputer, serta jaringan komputer dan pemanfaatannya dalam mengolah dan mengelola informasi secara digital.', NULL, 'IN', 'INXB', 2019, '13 - 14', 'Kamis', 'Ruang G4.102 Ged B12'),
(39, 'Keamanan Jaringan Komputer', 'NINF6039', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '	1.1 Mahasiswa memiliki pengetahuan, pemahaman dan ketrampilan pada mahasiswa tentang: konsep dan organisasi keamanan, reliabilitas dan keamanan software, keamanan infrastruktur, keamanan jaringan, recovery dan maintenance, sistem deteksi dan respon, auditing dan testing keamanan, penanganan kegagalan sistem keamanan, tool komputer forensik, serta manajemen resiko dan hukum yang mengatur tentang keamanan sistem komputer.', NULL, 'A', '16SA', 2017, '1 - 3', 'Senin', 'Ruang G4.102 Ged B12'),
(40, 'Machine Learning', 'NINF6040', 3, 'Mampu membuat prototipe atau produk teknologi informasi yang dterapkan di berbagai bidang kehidupan yang produktif, efektif, dan inovatif', '3.1 Mahasiswa memiliki pengetahuan tentang dasar-dasar dari machine learning dan beberapa variasi teknik machine learning. 3.2 Mahasiswa dapat memilih teknik/algoritma yang paling cocok berdasarkan formulasi yang tepat untuk dapat diaplikasikan pada penyelesaian berbagai permasalahan dunia nyata, serta mampu melakukan analisis eksperimental untuk mengevaluasi hasil yang diperoleh.', NULL, 'A', '16MI', 2018, '4 - 6', 'Selasa', 'Ruang H5.215 Ged B11'),
(41, 'Basis Data Terdistribusi', 'NINF6042', 3, 'Mampu mengaplikasikan dan mengintegrasikan produk teknologi informasi sesuai trend secara adaftif dan aman terpercaya', '4.1 Mahasiswa memiliki pengetahuan dan pemahamanan tentang konsep, metodologi, dan teknik pengembangan basis data terdistribusi, beserta penanganan dan pengamanannya.', NULL, 'B', '16SE', 2017, '7 - 9', 'Senin', 'Ruang H5.414 Ged B11'),
(42, 'Kriptografi', 'NINF6043', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memahami pilar konsep kriptografi dalam menyelesaikan, menganalisis masalah, dan dapat menjelaskan aplikasi kriptografi dalam keamanan komputer dan jaringan.', NULL, 'A', '16SB', 2017, '7 - 9', 'Selasa', 'Ruang H5.215 Ged B11'),
(43, 'Information Retrieval', 'NINF6046', 3, 'Mampu menguasai konsep dasar keilmuan Teknik Informatika dengan pengetahuan dan teknologi terkini berdasarkan pemikiran yang logis, kritis, dan adaptif terhadap lingkungan yang dinamis', '1.1 Mahasiswa memiliki pengetahuan, keterampilan, dan pengalaman, terutama berkenaan dengan konsep, model dan evaluasi information retrieval serta teknik pengklasteran dan klasifikasi teks.', NULL, 'B', '16SF', 2017, '1 - 3', 'Selasa', 'Ruang G4.111 Ged B12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
