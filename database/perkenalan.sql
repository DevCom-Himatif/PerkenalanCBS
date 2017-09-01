-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2017 at 11:11 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkenalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id_bk` int(11) NOT NULL,
  `npm` char(12) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `lembaga` varchar(20) DEFAULT NULL,
  `tahun_jabatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuis_bk`
--

CREATE TABLE `kuis_bk` (
  `id_jawaban` int(11) NOT NULL,
  `npm_maba` char(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `lembaga` varchar(20) DEFAULT NULL,
  `link_foto` text,
  `fill_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuis_panitia`
--

CREATE TABLE `kuis_panitia` (
  `id_jawaban` int(11) NOT NULL,
  `npm_maba` char(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `link_foto` text,
  `fill_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `panitia`
--

CREATE TABLE `panitia` (
  `id_panitia` int(11) NOT NULL,
  `npm` char(12) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `tahun_jabatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perkenalan_angkatan`
--

CREATE TABLE `perkenalan_angkatan` (
  `id_perkenalan_angkatan` int(11) NOT NULL,
  `id_user1` varchar(255) DEFAULT NULL,
  `id_user2` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat_kos` text,
  `id_line` varchar(20) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `link_foto` text,
  `request_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perkenalan_kating`
--

CREATE TABLE `perkenalan_kating` (
  `id_perkenalan_kating` int(11) NOT NULL,
  `id_user_maba` varchar(255) DEFAULT NULL,
  `id_user_kating` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ciri_khas` text,
  `link_foto` text,
  `request_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_kating`
--

CREATE TABLE `profile_kating` (
  `id_user` varchar(255) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat_kos` text,
  `no_hp` varchar(12) DEFAULT NULL,
  `id_line` varchar(20) DEFAULT NULL,
  `link_foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_kating`
--

INSERT INTO `profile_kating` (`id_user`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `alamat_kos`, `no_hp`, `id_line`, `link_foto`) VALUES
('958c26b4-87fb-11e7-bb31-be2e44b06b34', 'Jordy Saragih ', 'Laki-laki', 'Jakarta', '0000-00-00', '-', '87888688078', 'jordysaragih', 'http://hda2.jux.in/foto/2012/01.jpg'),
('958c27cc-87fb-11e7-bb31-be2e44b06b34', 'Imam Jabar Shidiq Raksabuaba', 'Laki-laki', 'Serang', '0000-00-00', 'Perumahan Ikopin Blok C 32 Jatinangor', '85718688808', 'ijabar', 'http://hda2.jux.in/foto/2012/02.jpg'),
('958c289e-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120003.JPG'),
('958c295c-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120004.JPG'),
('958c2a24-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Iqbal', 'Laki-laki', 'Bandung', '0000-00-00', 'Hegarmanah, Kosan Dewa Graha', '85722750127', '/danusranger', 'http://hda2.jux.in/foto/2012/05.jpg'),
('958c2ae2-87fb-11e7-bb31-be2e44b06b34', 'Deisna Rahmaningtyas', 'Perempuan', 'bandung', '0000-00-00', 'Pondok resti, ciseke besar', '81220540150', 'deisnarhmngtys', 'http://hda2.jux.in/foto/2012/06.jpg'),
('958c2f4c-87fb-11e7-bb31-be2e44b06b34', 'Riva Farabi', 'Laki-laki', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2012/07.jpg'),
('958c303c-87fb-11e7-bb31-be2e44b06b34', 'amir mujahiduddien', 'Laki-laki', 'bandung', '0000-00-00', 'tidak adq', '81214706442', 'amirmujahidu', 'http://hda2.jux.in/foto/2012/08.jpg'),
('958c310e-87fb-11e7-bb31-be2e44b06b34', 'Fath Imtiaz', 'Laki-laki', 'Bandung', '0000-00-00', 'Cibiruhilir', '81320707059', 'fathimtiaz', 'http://hda2.jux.in/foto/2012/09.jpg'),
('958c31c2-87fb-11e7-bb31-be2e44b06b34', 'Ivan Alexander Yunadi', 'Laki-laki', 'Bekasi', '0000-00-00', 'Puri Endah', '81910196451', 'Ivaaan13', 'http://hda2.jux.in/foto/2012/10.jpg'),
('958c3280-87fb-11e7-bb31-be2e44b06b34', 'O. Ginanjar', 'Laki-laki', 'Sumedang', '0000-00-00', 'cisaladah PGPM', '89657375996', 'O.Ginanjar', 'http://hda2.jux.in/foto/2012/11.jpg'),
('958c333e-87fb-11e7-bb31-be2e44b06b34', 'Ichsan Alfiansyah', 'Laki-laki', 'bandung', '0000-00-00', '-', '87821510189', 'alfiansyah94', 'http://hda2.jux.in/foto/2012/12.jpg'),
('958c33fc-87fb-11e7-bb31-be2e44b06b34', 'Jansen Giovanni', 'Laki-laki', '', '0000-00-00', 'Taman Narogong Indah blok C.16 No.1, Bekasi Timur', '85793127990', 'jansengiovanni', 'http://hda2.jux.in/foto/2012/13.jpg'),
('958c383e-87fb-11e7-bb31-be2e44b06b34', 'indah maulidia turrohmah', 'Perempuan', 'Serang', '0000-00-00', 'ciruas, serang-banten', '87871297825', 'indahmaul', 'http://hda2.jux.in/foto/2012/14.jpg'),
('958c396a-87fb-11e7-bb31-be2e44b06b34', 'Harits Muhammad', 'Laki-laki', 'Jakarta', '0000-00-00', '-', '82164204560', 'harism', 'http://hda2.jux.in/foto/2012/15.jpg'),
('958c3a3c-87fb-11e7-bb31-be2e44b06b34', 'Isa Abdul Muhyi', 'Laki-laki', 'Bengkulu', '0000-00-00', 'The Aya Kost, Caringin', '85268551745', 'isamuhyi', 'http://hda2.jux.in/foto/2012/16.jpg'),
('958c3b04-87fb-11e7-bb31-be2e44b06b34', 'Izzan Oktiadi', 'Laki-laki', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2012/17.jpg'),
('958c3bd6-87fb-11e7-bb31-be2e44b06b34', 'Muhammad miftah al rasyid', 'Laki-laki', 'Jakarta', '0000-00-00', '-', '81315430848', 'Miftah1112', 'http://hda2.jux.in/foto/2012/18.jpg'),
('958c3c94-87fb-11e7-bb31-be2e44b06b34', 'Benarivo Triadi Putra', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Shorea, Jl. Sayang, Jatinangor', '81807977699', 'benarivotp', 'http://hda2.jux.in/foto/2012/19.jpg'),
('958c3d52-87fb-11e7-bb31-be2e44b06b34', 'Luqman Adibiarso', 'Laki-laki', 'Bekasi', '0000-00-00', 'perumahan ikopin block c nomor 32 jatinangor sumedang', '85692272423', 'adibiarso', 'http://hda2.jux.in/foto/2012/20.jpg'),
('958c4108-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120021.JPG'),
('958c4266-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2012/22.jpg'),
('958c434c-87fb-11e7-bb31-be2e44b06b34', 'Mohamad Raditya Putra', 'Laki-laki', 'jakarta', '0000-00-00', '-', '81574842415', 'radityaqb', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120023.JPG'),
('958c4414-87fb-11e7-bb31-be2e44b06b34', 'Faishal Wahiduddin', 'Laki-laki', 'Karawang', '0000-00-00', 'Perum Ikopin no C32 Jatinangor', '85720303134', 'isalworld', 'http://hda2.jux.in/foto/2012/24.jpg'),
('958c44c8-87fb-11e7-bb31-be2e44b06b34', 'Edrick Yosafat', 'Laki-laki', 'Bogor', '0000-00-00', 'bungamas', '81214610891', 'edrickyosafat', 'http://hda2.jux.in/foto/2012/25.jpg'),
('958c4590-87fb-11e7-bb31-be2e44b06b34', 'Billal Muhammad Hadian', 'Laki-laki', 'Jakarta', '0000-00-00', 'Mawar Biru, Gang Mawar, Hegarmanah', '8985080118', 'billalhadian', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120026.JPG'),
('958c4914-87fb-11e7-bb31-be2e44b06b34', 'Zahra Solihah', 'Perempuan', '', '0000-00-00', 'Jl. Pilar kencana blok e4 no. 83. Peta, Bandung.', '87827733704', 'Zahraslh', 'http://hda2.jux.in/foto/2012/27.jpg'),
('958c49fa-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120028.JPG'),
('958c4ac2-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2012/140810120029.JPG'),
('958c4b80-87fb-11e7-bb31-be2e44b06b34', 'Carina Sunny Budiono Putri', 'Perempuan', 'Bandung', '0000-00-00', 'Jl. GKPN - Wisma Ellynophatan', '89652243169', 'carinasunnybp', 'http://hda2.jux.in/foto/2013/01.jpg'),
('958c4c3e-87fb-11e7-bb31-be2e44b06b34', 'Ai Siti Sobariah', 'Perempuan', 'Tasikmalaya', '0000-00-00', 'Pondok Putri Bunda Lestari Cikuda ', '85314500485', 'aisitis', 'http://hda2.jux.in/foto/2013/02.jpg'),
('958c4cfc-87fb-11e7-bb31-be2e44b06b34', 'Anne Devia', 'Perempuan', 'Bandung', '0000-00-00', 'Asrama padjadjaran 2', '83822466869', 'annedevia', 'http://hda2.jux.in/foto/2013/03.jpg'),
('958c4dba-87fb-11e7-bb31-be2e44b06b34', 'Linda Angela Putri', 'Perempuan', 'sumedang', '0000-00-00', 'Cikuda, pondok putri bunda lestari', '81221956112', 'lindaangelaputri', 'http://hda2.jux.in/foto/2013/04.jpg'),
('958c50ee-87fb-11e7-bb31-be2e44b06b34', 'Henry Aulia Rahman', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok SAE, Jalan GKPN', '89685152374', 'henryauliar', 'http://hda2.jux.in/foto/2013/05.jpg'),
('958c51c0-87fb-11e7-bb31-be2e44b06b34', 'Sopyan Mulyana', 'Laki-laki', 'Purwakarta', '0000-00-00', 'Cisaladah', '8996322126', 'sopyan.mulyana', 'http://hda2.jux.in/foto/2013/06.jpg'),
('958c527e-87fb-11e7-bb31-be2e44b06b34', 'Rizki Fitrah Mutaqin', 'Laki-laki', 'Garut', '0000-00-00', 'jalan Sayang, Took Shorea', '628000000000', 'fitrah.mr', 'http://hda2.jux.in/foto/2013/07.jpg'),
('958c533c-87fb-11e7-bb31-be2e44b06b34', 'Rahmatullah Arrizal Pranatadesta', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Kawaluyaan Indah VII No. 19, Soekarno-hatta, Bandung', '8987999500', 'rapd_96', 'http://hda2.jux.in/foto/2013/08.jpg'),
('958c5404-87fb-11e7-bb31-be2e44b06b34', 'Farrah Sania Abdilla', 'Perempuan', 'Karawang', '0000-00-00', 'Flamboyan, Ciseke Kecil', '85311414449', 'farrahsania', 'http://hda2.jux.in/foto/2013/09.jpg'),
('958c54c2-87fb-11e7-bb31-be2e44b06b34', 'Mauludy Nugrahani', 'Perempuan', 'jakarta', '0000-00-00', 'Pondok putri bunda lestari, Jalan cikuda narongtong, jatinangor, sumedang', '81222065281', 'mauludyn', 'http://hda2.jux.in/foto/2013/10.jpg'),
('958c585a-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2013/140810130011.JPG'),
('958c5968-87fb-11e7-bb31-be2e44b06b34', 'Febrian Suhendra C', 'Laki-laki', 'Cirebon', '0000-00-00', 'Jalan Kolonel Ahmad Syam, Kosan Pondok Ray (Sayang), Jatinangor', '85864227238', 'febriansc', 'http://hda2.jux.in/foto/2013/12.jpg'),
('958c5a26-87fb-11e7-bb31-be2e44b06b34', 'Rezky Pratomo', 'Laki-laki', 'Jambi', '0000-00-00', 'Pondok Kecapi 7, Jl.Sayang, Jatinangor.', '82295918272', 'rezkypratomo', 'http://hda2.jux.in/foto/2013/13.jpg'),
('958c5ae4-87fb-11e7-bb31-be2e44b06b34', 'Edwin Ginanjar Sonjaya', 'Laki-laki', 'Cirebon', '0000-00-00', 'Pondok Kecapi 7. Sayang', '81223548000', 'Edwinginanjar', 'http://hda2.jux.in/foto/2013/14.jpg'),
('958c5ba2-87fb-11e7-bb31-be2e44b06b34', 'Zulfahmi M.Nur', 'Laki-laki', 'Surau Kamba', '0000-00-00', '', '', 'Zul Fahmi M Nur', 'http://hda2.jux.in/foto/2013/15.jpg'),
('958c5c60-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fadly Rahman', 'Laki-laki', 'Cianjur', '0000-00-00', 'Gang mawar ', '81221813560', 'lostream', 'http://hda2.jux.in/foto/2013/16.jpg'),
('958c5d28-87fb-11e7-bb31-be2e44b06b34', 'Masagus Muhammad Afif Azhari', 'Laki-laki', 'Palembang', '0000-00-00', 'Pondok bungamas. Jln. Raya Jatinangor No. 220 RT.01 RW. 02 Desa Hegarmanah, Kec. Jatinangor, Kab. Sumedang, Jawa Barat 45363', '81297134191', 'Afifazhari_', 'http://hda2.jux.in/foto/2013/17.jpg'),
('958c60d4-87fb-11e7-bb31-be2e44b06b34', 'Selano Putra', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl. Kolonel Ahmad Syam (sayang), Wisma Lokapala', '81374938666', 'selano', 'http://hda2.jux.in/foto/2013/18.jpg'),
('958c61ba-87fb-11e7-bb31-be2e44b06b34', 'Anggie Audina Ikhwanudin', 'Perempuan', 'Indramayu', '0000-00-00', 'Ciseke kecil rt 02 rw 02 pondok arika 4', '85235160019', 'anggieai', 'http://hda2.jux.in/foto/2013/19.jpg'),
('958c628c-87fb-11e7-bb31-be2e44b06b34', 'Ghazyan Muhammad', 'Laki-laki', 'Karawang', '0000-00-00', 'Bandung', '87805758513', 'ghazyanmuhammad', 'http://hda2.jux.in/foto/2013/20.jpg'),
('958c6354-87fb-11e7-bb31-be2e44b06b34', 'Anas Tazcia Lestari', 'Perempuan', 'cianjur', '0000-00-00', 'Jl. Kolonel Ahmad Syam 26 Desa Cikeruh, Kec. Jatinangor, Kab. Sumedang', '87714737154', 'anastazcia', 'http://hda2.jux.in/foto/2013/21.jpg'),
('958c641c-87fb-11e7-bb31-be2e44b06b34', 'Yusuf Septiananda', 'Laki-laki', 'Subang', '0000-00-00', 'Pondok Kecapi 7, Jln. Sayang', '85224049554', 'yusufrizz', 'http://hda2.jux.in/foto/2013/22.jpg'),
('958c64e4-87fb-11e7-bb31-be2e44b06b34', 'Hilga Dwiana Hardani', 'Perempuan', 'Garut', '0000-00-00', 'Jl. Raya Jatinangor No.76A (Pondok Kharisma)', '85223174744', '@hilgaaa', 'http://hda2.jux.in/foto/2013/23.jpg'),
('958c65a2-87fb-11e7-bb31-be2e44b06b34', 'Asep Sudrajat', 'Laki-laki', 'Ciamis', '0000-00-00', 'Sayang', '81220819318', 'Asepsudrajat', 'http://hda2.jux.in/foto/2013/24.jpg'),
('958c6a84-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Adamul Khair', 'Laki-laki', 'Bengkulu', '0000-00-00', 'Kosan Kristal Biru No. 8, Gang Mawar 5 RT. 03 RW. 01, Dusun Sukamanah, Desa Hegarmanah, Kec. Jatinangor, Sumedang 45363', '8994220123', 'bleyyust', 'http://hda2.jux.in/foto/2013/25.jpg'),
('958c6c00-87fb-11e7-bb31-be2e44b06b34', 'Rizal Anandi', 'Laki-laki', 'Ciamis', '0000-00-00', 'Pondok Kecapi 7', '82214262697', 'rizalanandi', 'http://hda2.jux.in/foto/2013/26.jpg'),
('958c6d5e-87fb-11e7-bb31-be2e44b06b34', 'Agung Kurniati', 'Perempuan', 'pagar alam', '0000-00-00', 'Wisma kartika jln kolonel achmad syam nomor 71 rt 3 rw 4 desa cikeruh kec. Jatinangor kab. Sumedang 45363', '81214215342', 'Agungkurniati', 'http://hda2.jux.in/foto/2013/27.jpg'),
('958c736c-87fb-11e7-bb31-be2e44b06b34', 'Farestu marta kurniawan', 'Laki-laki', 'batusangkar', '0000-00-00', 'jl.raya jatinangor, Gg.cisaladah wisma lestari putri', '81224099669', '@farestu29', 'http://hda2.jux.in/foto/2013/28.jpg'),
('958c74fc-87fb-11e7-bb31-be2e44b06b34', 'Fadhli Aufar Syahmi', 'Laki-laki', 'Depok', '0000-00-00', 'Pondok Cimo Kp. Mekar Asih RT01/RW13, Desa Hegarmanah, Jatinangor, Kab. Sumedang, 45363', '89638827752', 'aufarsyah', 'http://hda2.jux.in/foto/2013/29.jpg'),
('958c7664-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Ilham Darmawidjaja', 'Laki-laki', 'bandung', '0000-00-00', '-', '85721211872', 'muhiamd', 'http://hda2.jux.in/foto/2013/30.jpg'),
('958c7be6-87fb-11e7-bb31-be2e44b06b34', 'Eben Ezer Naibaho', 'Laki-laki', 'Cirebon', '0000-00-00', 'Toko Shorea jl.kol ahmad syam rt03/rw04 jatinangor', '85352694495', 'eben_', 'http://hda2.jux.in/foto/2013/31.jpg'),
('958c7dd0-87fb-11e7-bb31-be2e44b06b34', 'Nero Gading Laksmana', 'Laki-laki', 'Blitar', '0000-00-00', 'Bumi Kartika Asri Jl.Caringin No.20 Jatinangor - Sumedang', '81290935535', 'nerogading', 'http://hda2.jux.in/foto/2013/32.jpg'),
('958c7f2e-87fb-11e7-bb31-be2e44b06b34', 'Ega Ardiwira Pangestu', 'Laki-laki', 'Ambarawa', '0000-00-00', 'Perum Ikopin ', '81343259711', 'egapangestu007', 'http://hda2.jux.in/foto/2013/33.jpg'),
('958c8014-87fb-11e7-bb31-be2e44b06b34', 'Dion Alamsah', 'Laki-laki', 'Bontang', '0000-00-00', 'Apartemen Pinewood (922)', '85220440394', 'dionduren', 'http://hda2.jux.in/foto/2013/34.jpg'),
('958c80e6-87fb-11e7-bb31-be2e44b06b34', 'Wahyudin Buca', 'Laki-laki', 'Makassar', '0000-00-00', 'Ciseke bedar', '85398814777', 'Uchaa95', 'http://hda2.jux.in/foto/2013/35.jpg'),
('958c81ae-87fb-11e7-bb31-be2e44b06b34', 'Rahadian Hilmy', 'Laki-laki', 'blitar', '0000-00-00', 'Hegarmanah', '81214004134', 'rhilmy', 'http://hda2.jux.in/foto/2013/36.jpg'),
('958c8276-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2013/140810130037.JPG'),
('958c8604-87fb-11e7-bb31-be2e44b06b34', 'Firdaus Perdana Y', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl Puradinata No 85 RT 05/12 Baleendah Bandung', '85624069461', 'firdausperdana13', 'http://hda2.jux.in/foto/2013/38.jpg'),
('958c8712-87fb-11e7-bb31-be2e44b06b34', 'Mochamad Edwin Lokyta', 'Laki-laki', 'Cirebon', '0000-00-00', 'Kosan Adinda 1 Jl. Caringin No 43', '628000000000', 'edwin_lokyta', 'http://hda2.jux.in/foto/2013/39.jpg'),
('958c87d0-87fb-11e7-bb31-be2e44b06b34', 'Irdan Anshari', 'Laki-laki', 'Bandung', '0000-00-00', 'PP', '82216455747', 'irdananshari', 'http://hda2.jux.in/foto/2013/40.jpg'),
('958c888e-87fb-11e7-bb31-be2e44b06b34', 'Andrean Taufik', 'Laki-laki', 'Pontianak', '0000-00-00', 'Jl. Cisaladah', '85250228493', 'taufikandrean', 'http://hda2.jux.in/foto/2013/41.jpg'),
('958c8a6e-87fb-11e7-bb31-be2e44b06b34', 'Ardhi Rizki Harahap', 'Laki-laki', 'Medan', '0000-00-00', 'Pondok Kayu (Kamar GL-211), Jl Kolonel Ahmad Syams No. 48 A, Cikeruh, Kec. Jatinangor, Kab. Sumedang, Jawa Barat', '85762850014', 'ardhrizk', 'http://hda2.jux.in/foto/2013/42.jpg'),
('958c8b54-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2013/140810130043.JPG'),
('958c8c1c-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Adia Wibawa', 'Laki-laki', 'Mataram', '0000-00-00', 'Pondok Ibnu Syabilla jl. Cisaladah Jatinangor Sumedang', '85212101995', 'adiaw', 'http://hda2.jux.in/foto/2013/44.jpg'),
('958c9068-87fb-11e7-bb31-be2e44b06b34', 'Rizky Maulana Rachyan', 'Laki-laki', 'Bandung', '0000-00-00', '-', '85624931316', 'rizkyrachyan', 'http://hda2.jux.in/foto/2013/45.jpg'),
('958c91ee-87fb-11e7-bb31-be2e44b06b34', 'Fadel muhammad puluhulawa', 'Laki-laki', 'Bandung', '0000-00-00', 'Gg hj nena ', '81220717602', 'fadelmp', 'http://hda2.jux.in/foto/2013/46.jpg'),
('958c9374-87fb-11e7-bb31-be2e44b06b34', 'Alvin Niza Aulia', 'Laki-laki', 'Demak', '0000-00-00', 'Cikeruh No. 25', '89531350073', '18398', 'http://hda2.jux.in/foto/2013/47.jpg'),
('958c952c-87fb-11e7-bb31-be2e44b06b34', 'Fieny Mughnisari Suharma', 'Perempuan', 'Bandung', '0000-00-00', 'Jalan jati II no 22 rt 01 rw 06 kecamatan cibiru kota bandung', '8997150275', 'fienym', 'http://hda2.jux.in/foto/2013/48.jpg'),
('958c9626-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fathurrahman', 'Laki-laki', 'Bandung', '0000-00-00', 'Perum Cijerah 2 Gg. Bungur 1 RT 01 RW 33 Blok 16 No 162 Cimahi Selatan', '89653652768', 'faith2rahman', 'http://hda2.jux.in/foto/2013/49.jpg'),
('958c96ee-87fb-11e7-bb31-be2e44b06b34', 'Ahmad bambang putra', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl.riung endah no.44', '83822134917', 'ab.putra', 'http://hda2.jux.in/foto/2013/50.jpg'),
('958c9acc-87fb-11e7-bb31-be2e44b06b34', 'Raynaldo Kristiadi Sola Gratia', 'Laki-laki', 'Bandung', '0000-00-00', 'Cisaladah', '81214950135', '', 'http://hda2.jux.in/foto/2013/51.jpg'),
('958c9bb2-87fb-11e7-bb31-be2e44b06b34', 'Tiara Rizki Maharani', 'Perempuan', 'Bireuen Aceh Utara', '0000-00-00', 'Pondok Teuyana 2 (Ibu Nunung)\nJalan Ciseke Besar, No. 33, RT01, RW03, Cikeruh, Jatinangor, Sumedang, Jawa Barat. ', '85294112412', 'tiaratitier', 'http://hda2.jux.in/foto/2013/52.jpg'),
('958c9c7a-87fb-11e7-bb31-be2e44b06b34', 'Albertus Aditya Wisnu Whardana', 'Laki-laki', 'Jakarta', '0000-00-00', 'Bumi Kartika Asri, Jalan Caringin no. 20, Jatinangor', '817755579', 'albertusaditya0602', 'http://hda2.jux.in/foto/2013/53.jpg'),
('958c9d42-87fb-11e7-bb31-be2e44b06b34', 'Ahmad Dinan Kurnia', 'Laki-laki', 'Bandung', '0000-00-00', '-', '83820347207', '__dinan', 'http://hda2.jux.in/foto/2013/54.jpg'),
('958c9e00-87fb-11e7-bb31-be2e44b06b34', 'Akmaluddin Fadhilah', 'Laki-laki', 'BANDUNG', '0000-00-00', 'Jalan Ciburial No. 27 RT 01/ RW 01 Dago Atas Bandung', '85314854274', 'stevenchau', 'http://hda2.jux.in/foto/2013/55.jpg'),
('958c9ebe-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Iqbal Pandailing Widodo', 'Laki-laki', 'Pemalang', '0000-00-00', 'pondok lokapala', '82129974694', '@Pandailing', 'http://hda2.jux.in/foto/2013/56.jpg'),
('958ca5da-87fb-11e7-bb31-be2e44b06b34', 'Mochamad Azmi Fauzan', 'Laki-laki', 'bandung', '0000-00-00', '-', '81572130230', 'afauzan', 'http://hda2.jux.in/foto/2013/57.jpg'),
('958ca90e-87fb-11e7-bb31-be2e44b06b34', 'Ashila Lunafisa', 'Perempuan', 'Klaten', '0000-00-00', 'jl.caringin kost anugerah no.06 jatinangor', '081210343374', 'ashilalunafisa', 'http://hda2.jux.in/foto/2013/58.jpg'),
('958ca9e0-87fb-11e7-bb31-be2e44b06b34', 'Aldi Maulana', 'Laki-laki', 'Bandung', '0000-00-00', '', '85220797790', 'ID : poundang', 'http://hda2.jux.in/foto/2013/59.jpg'),
('958caaa8-87fb-11e7-bb31-be2e44b06b34', 'Hilmi Wijaksana', 'Laki-laki', 'Bandung', '0000-00-00', 'ciseke besar', '82219151215', 'hilmiwi', 'http://hda2.jux.in/foto/2013/60.jpg'),
('958cab66-87fb-11e7-bb31-be2e44b06b34', 'Rifky Fachry Muchamad', 'Laki-laki', 'Bandung', '0000-00-00', '', '', 'fierce25', 'http://hda2.jux.in/foto/2013/61.jpg'),
('958cac24-87fb-11e7-bb31-be2e44b06b34', 'Delia Hayatul Millah', 'Perempuan', 'Purwakarta', '0000-00-00', 'Pondok Mutiara Gang Mawar 5 Dusun Sukamanah Desa Hegarmanah', '89527303513', 'deliahm', 'http://hda2.jux.in/foto/2014/01.jpg'),
('958cace2-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Azhari Marpaung', 'Laki-laki', 'Bengkulu', '0000-00-00', 'Pondok Abah Uni, Sayang, Jatinangor', '81224472996', 'Ariimarpaung', 'http://hda2.jux.in/foto/2014/02.jpg'),
('958caff8-87fb-11e7-bb31-be2e44b06b34', 'Cahyo Suluk', 'Laki-laki', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2014/03.jpg'),
('958cb0d4-87fb-11e7-bb31-be2e44b06b34', 'Mohammad Ghifari Yusuf', 'Laki-laki', 'Bogor', '0000-00-00', 'Wisma Regina, Jln. Kampung Geulis No. 30 Cikeruh, Jatinangor', '87873032107', 'mghifariy', 'http://hda2.jux.in/foto/2014/04.jpg'),
('958cb1a6-87fb-11e7-bb31-be2e44b06b34', 'Rifqi Aditya Riadhi', 'Laki-laki', 'Subang', '0000-00-00', 'Gg Mawar 2 No. 68 Jatinangor', '81221983394', 'rifqiriadhi', 'http://hda2.jux.in/foto/2014/05.jpg'),
('958cb26e-87fb-11e7-bb31-be2e44b06b34', 'Faizal imam', 'Laki-laki', 'Cirebon', '0000-00-00', 'Pondok surya - hegarmanah', '816000000000', 'Faizalimam11', 'http://hda2.jux.in/foto/2014/06.jpg'),
('958cb32c-87fb-11e7-bb31-be2e44b06b34', 'Andhika Haeruman Santoso', 'Laki-laki', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2014/07.jpg'),
('958cb3f4-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140008.JPG'),
('958cb4b2-87fb-11e7-bb31-be2e44b06b34', 'Ikma Dwikie Elvana', 'Perempuan', 'cianjur', '0000-00-00', 'Kampung geulis, pondok aldila', '82115425769', 'Ikmadwikie', 'http://hda2.jux.in/foto/2014/09.jpg'),
('958cb7fa-87fb-11e7-bb31-be2e44b06b34', 'Chafidz Maulana', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok RE no.45, Jln. Kol Achmad Syam no.76A Cikeruh, Jatinangor, Sumedang', '81387440062', 'chafidzlennon', 'http://hda2.jux.in/foto/2014/10.jpg'),
('958cb8cc-87fb-11e7-bb31-be2e44b06b34', 'Reinhard Aditya Petradi', 'Laki-laki', '', '0000-00-00', 'Pondok GBT, Hegarmanah,', '8888326003', 'reinhardaditya', 'http://hda2.jux.in/foto/2014/11.jpg'),
('958cb994-87fb-11e7-bb31-be2e44b06b34', 'Nabila Dwi Cahyani', 'Perempuan', 'Bogor', '0000-00-00', 'Pondok atika ciseke besar', '81313268274', 'chyndc', 'http://hda2.jux.in/foto/2014/12.jpg'),
('958cba5c-87fb-11e7-bb31-be2e44b06b34', 'yunilucki siswantari', 'Perempuan', 'bajubang', '0000-00-00', 'jalan ciseke besar pondok sakinah 2 no kamar 119 desa cikeruh, jatinangor, sumedang, jawa barat', '81368308600', 'yunilucki', 'http://hda2.jux.in/foto/2014/13.jpg'),
('958cbb1a-87fb-11e7-bb31-be2e44b06b34', 'Ghaitsa Ryherfa', 'Perempuan', 'Cirebon', '0000-00-00', 'Pondok sakinah 2, ciseke besar', '85724124133', 'ghaitsaryherfa', 'http://hda2.jux.in/foto/2014/14.jpg'),
('958cbbd8-87fb-11e7-bb31-be2e44b06b34', 'Fajar Satria', 'Laki-laki', 'Payakumbuh', '0000-00-00', 'Pondok Angsana -Ciseke', '82170389378', 'fajarpyk', 'http://hda2.jux.in/foto/2014/15.jpg'),
('958cbf48-87fb-11e7-bb31-be2e44b06b34', 'Risal Falah', 'Laki-laki', 'Cimahi', '0000-00-00', 'Jalan Cikuda-Cileles No.35 Dusun Narongtong RT01/RW02', '85860141147', 'risalfa', 'http://hda2.jux.in/foto/2014/16.jpg'),
('958cc02e-87fb-11e7-bb31-be2e44b06b34', 'Hafiz Aditra', 'Laki-laki', 'Batusangkar', '0000-00-00', 'Ciseke', '82214449117', 'Aditra99', 'http://hda2.jux.in/foto/2014/17.jpg'),
('958cc100-87fb-11e7-bb31-be2e44b06b34', 'Alfian Rizki Afuwwu', 'Laki-laki', 'Bekasi', '0000-00-00', 'Pondok RE, Jatinangor', '85210391166', 'Hellscythe.alfian', 'http://hda2.jux.in/foto/2014/18.jpg'),
('958cc1be-87fb-11e7-bb31-be2e44b06b34', 'Arief Huda Setyanto', 'Laki-laki', 'Semarang', '0000-00-00', '  Kamar 1 Kost Zulni Puri Indah Blok A1 no.4 Jl. Kol. Achmad Syam Kec. Jatinangor, Kab. Sumedang 65383', '81389430321', 'ariefhuda20', 'http://hda2.jux.in/foto/2014/19.jpg'),
('958cc27c-87fb-11e7-bb31-be2e44b06b34', 'rifki muhammad', 'Laki-laki', 'Bogor', '0000-00-00', 'Pondok RE Kamar 12 - Jl.Kolonel Achmad Syam', '85864850164', '4140035383', 'http://hda2.jux.in/foto/2014/20.jpg'),
('958cc344-87fb-11e7-bb31-be2e44b06b34', 'Ferina dewi andreina', 'Perempuan', 'bandung', '0000-00-00', 'Komplek taman raflesia bandung soekarno hatga', '89658683742', '2,11E+17', 'http://hda2.jux.in/foto/2014/21.jpg'),
('958cc402-87fb-11e7-bb31-be2e44b06b34', 'Gustara Sapto Ajie', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Sakinah II, Ciseke Besar', '81283806287', 'gustttara', 'http://hda2.jux.in/foto/2014/22.jpg'),
('958cc6f0-87fb-11e7-bb31-be2e44b06b34', 'Hilda Fardiah Daniah', 'Perempuan', 'Ciamis', '0000-00-00', 'Pondok Putri Isaku Iki Ciseke Besar no.  230 Dusun Warung Kalde RT/RW 03/03 Desa Cikeruh Kec. Jatinangor, Kab. Sumedang, Jawa Barat 45363', '82219292504', 'hfd24', 'http://hda2.jux.in/foto/2014/23.jpg'),
('958cc7cc-87fb-11e7-bb31-be2e44b06b34', 'Rio Nur Ardiansyah', 'Laki-laki', 'Pandeglang', '0000-00-00', 'Pondok Semi kp. Cisaladah rt 04 rw 08, kel. Hegarmanah, kec. Jatinangor, Sumedang', '82214459640', 'rionardians', 'http://hda2.jux.in/foto/2014/24.jpg'),
('958cc894-87fb-11e7-bb31-be2e44b06b34', 'Regina Dewi Sofyana', 'Perempuan', 'Tasikmalaya', '0000-00-00', 'Pondok putri anissa - ciseke besar', '82117591358', 'Rgnads', 'http://hda2.jux.in/foto/2014/25.jpg'),
('958cc952-87fb-11e7-bb31-be2e44b06b34', 'Nabila Putri Suriani', 'Perempuan', 'Padang', '0000-00-00', 'Pondok Meranti 2 Ciseke Besar', '85263800043', 'nabilaputris4', 'http://hda2.jux.in/foto/2014/26.jpg'),
('958cca10-87fb-11e7-bb31-be2e44b06b34', 'Mohamad Dean Aji Wibowo', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl. Hegarmanah Pondok Ria Asri no. 4 RT 01/03 Ds. Hegarmanah Kec. Jatinangor Kab. Sumedang 45363', '82214459550', 'deanleonhart', 'http://hda2.jux.in/foto/2014/27.jpg'),
('958ccace-87fb-11e7-bb31-be2e44b06b34', 'Febryani Pertiwi Puteri', 'Perempuan', 'Tasikmalaya', '0000-00-00', 'Pondok Atika, Jl. Ciseke Besar No. 133, Jatinangor, Kab. Sumedang 45363', '81322938874', 'febypertiwi', 'http://hda2.jux.in/foto/2014/28.jpg'),
('958ccb8c-87fb-11e7-bb31-be2e44b06b34', 'Hilmi Luthfiansyah', 'Laki-laki', 'Majalengka', '0000-00-00', 'Pondok Puspasari, Jl. Kolonel Ahmad Syam (Sayang) Jatinangor, Sumedang', '89684246111', 'hilmiluthfiansyah', 'http://hda2.jux.in/foto/2014/29.jpg'),
('958cce98-87fb-11e7-bb31-be2e44b06b34', 'Hafizh Arkan', 'Laki-laki', 'Sigli', '0000-00-00', 'Pondok Esa, No. 229, Ciseke, Cikeruh, Kec. Jatinangor, Kab. Sumedang', '81260612902', 'hafizhkhan', 'http://hda2.jux.in/foto/2014/30.jpg'),
('958ccf7e-87fb-11e7-bb31-be2e44b06b34', 'Aini Novianty', 'Perempuan', 'Pasuruan', '0000-00-00', 'Pondok bharata sebrang puskesmas jatinangor Jalan raya jatinangor sumedang KM 21 Nomor 189 RT/RW 3/2 Desa Hegarmanah kecamatan jatinangor kab sumedang kode pos 45363', '87724859151', 'ainielmo', 'http://hda2.jux.in/foto/2014/31.jpg'),
('958cd03c-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140032.JPG'),
('958cd0fa-87fb-11e7-bb31-be2e44b06b34', 'Ridwan ibrahim', 'Laki-laki', 'sumedang', '0000-00-00', '-', '89656725186', 'ridwani347', 'http://hda2.jux.in/foto/2014/33.jpg'),
('958cd1b8-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Wijaya Adisaputra', 'Laki-laki', 'Kuningan', '0000-00-00', 'Pondok Saung Ambu Jl. ciseke RT04 RW03 Desa cikeruh kec. Jatinangor, Kab. Sumedang, Jawa Barat - 45363', '85759774970', 'mwijayaa', 'http://hda2.jux.in/foto/2014/34.jpg'),
('958cd280-87fb-11e7-bb31-be2e44b06b34', 'Cici Anisa Rahmah', 'Perempuan', 'Ciamis', '0000-00-00', 'pondok sally ciseke', '81313637927', 'cicianisa', 'http://hda2.jux.in/foto/2014/35.jpg'),
('958cd55a-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Ikhwan Yoza', 'Laki-laki', '', '0000-00-00', 'Pondok Saung Ambu, Jl.Ciseke RT.04 RW.03, Desa Cikeruh, Jatinangor', '8975440348', 'ikhwanyoza', 'http://hda2.jux.in/foto/2014/36.jpg'),
('958cd62c-87fb-11e7-bb31-be2e44b06b34', 'M Sabiq R', 'Laki-laki', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2014/37.jpg'),
('958cd6f4-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Sabiq Rahmatullah', 'Laki-laki', 'Kota Sukabumi', '0000-00-00', 'saung ambu ciseke besar', '85603333454', 'sabiqsa', 'http://hda2.jux.in/foto/2014/38.jpg'),
('958cd9f6-87fb-11e7-bb31-be2e44b06b34', 'Aditya Pratama', 'Laki-laki', 'Way Jepara', '0000-00-00', 'Dusun caringin desa sayang', '81320602904', 'aditya290', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140039.JPG'),
('958cdb0e-87fb-11e7-bb31-be2e44b06b34', 'Dede Tarmidi', 'Laki-laki', 'Indramayu', '0000-00-00', 'Jalan Caringin No 39 RT : 01 RW : 13 Desa Sayang Kecamatan Jatinangor Kabupaten Sumedang', '85871159990', 'dede.tarmidi', 'http://hda2.jux.in/foto/2014/40.jpg'),
('958cdbd6-87fb-11e7-bb31-be2e44b06b34', 'Muhammad farid adli', 'Laki-laki', 'sungai laban', '0000-00-00', 'Sayang', '85274734562', 'M.farid.adli', 'http://hda2.jux.in/foto/2014/41.jpg'),
('958cdc9e-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140042.JPG'),
('958ce05e-87fb-11e7-bb31-be2e44b06b34', 'Ryan Adam', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Baraya, Jalan Kol. Ahmad Syam', '8986257751', 'ryanadam4', 'http://hda2.jux.in/foto/2014/43.jpg'),
('958ce14e-87fb-11e7-bb31-be2e44b06b34', 'Dimas Desvianto', 'Laki-laki', 'Purwakarta', '0000-00-00', 'Pondok sakinah 2, Ciseke Besar', '85798932995', 'dimasdesvianto', 'http://hda2.jux.in/foto/2014/44.jpg'),
('958ce20c-87fb-11e7-bb31-be2e44b06b34', 'Abdul Rahman Hakim', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Rinjani, Cisaladah, desa hegarmanah, Jatinangor (deket jembatan cincin)', '85715566514', 'monkeymaann', 'http://hda2.jux.in/foto/2014/45.jpg'),
('958ce2d4-87fb-11e7-bb31-be2e44b06b34', 'Yemima Damayanti Simanungkalit', 'Perempuan', 'Pematangsiantar', '0000-00-00', 'Jln Ciseke Besar No. 256 Pondok Fenori', '85275285690', 'emitets', 'http://hda2.jux.in/foto/2014/46.jpg'),
('958ce39c-87fb-11e7-bb31-be2e44b06b34', 'Fransiskus Leo Bimantara', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok GBT Hegarmanah', '81321912087', 'leobim', 'http://hda2.jux.in/foto/2014/47.jpg'),
('958ce45a-87fb-11e7-bb31-be2e44b06b34', 'Fadhliyah Rahmah Natsir', 'Perempuan', 'Kendari', '0000-00-00', 'Jl. Raya Jatinangor no 146', '82292831944', 'fnatsir96', 'http://hda2.jux.in/foto/2014/48.jpg'),
('958ce7b6-87fb-11e7-bb31-be2e44b06b34', 'Ibrahim Yahya', 'Laki-laki', 'Padang Sidimpuan', '0000-00-00', 'Pondok Reiza, Jl. Kampung Geulis, Desa Cikeruh, Kec. Jatinangor, Kab. Sumedang', '81262408769', 'daydreamer_7', 'http://hda2.jux.in/foto/2014/49.jpg'),
('958ce8a6-87fb-11e7-bb31-be2e44b06b34', 'Hidayaturrahman', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'pondok arghi jalan ciseke kecil RT 02 RW 02 Hegarmanah Jatinangor, Kota Sumedang, Jawa Barat 45363  ', '82214466553', 'dayathr', 'http://hda2.jux.in/foto/2014/50.jpg'),
('958ce978-87fb-11e7-bb31-be2e44b06b34', 'Ahmad Mujahid Abdurrahman', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok Averous - Sayang, Ds. Cikeruh Kec. Jatinangor', '82219118993', 'ahmadbindani', 'http://hda2.jux.in/foto/2014/51.jpg'),
('958cea36-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140052.JPG'),
('958ceafe-87fb-11e7-bb31-be2e44b06b34', 'Samba Nugraha ', 'Laki-laki', 'Cimahi ', '0000-00-00', 'Pondok Joglo,  Ciseke', '82214467615', 'sambanf', 'http://hda2.jux.in/foto/2014/53.jpg'),
('958ced1a-87fb-11e7-bb31-be2e44b06b34', 'Ridha Septia Hidayah', 'Perempuan', 'Jakarta', '0000-00-00', 'Pondok fenori jalan ciseke no 256 rt 3 rw 3, jatinangor', '85821670823', 'riekyun09', 'http://hda2.jux.in/foto/2014/54.jpg'),
('958cedf6-87fb-11e7-bb31-be2e44b06b34', 'Daniel Nainggolan', 'Laki-laki', 'Porsea', '0000-00-00', 'Gentramanah', '81222449864', 'daniel_fn', 'http://hda2.jux.in/foto/2014/55.jpg'),
('958cf0e4-87fb-11e7-bb31-be2e44b06b34', 'Agung Kurniawan', 'Laki-laki', 'Solok', '0000-00-00', 'Griya Santosa, Jl. Cikuda, Jatinangor', '82391258008', 'agungka', 'http://hda2.jux.in/foto/2014/56.jpg'),
('958cf1ca-87fb-11e7-bb31-be2e44b06b34', 'Raka Karim', '', '', '0000-00-00', 'Pondok Reiza, No. 24, Jl. Kampung Geulis, Jatinangor', '87875087258', 'rakakarim', 'http://hda2.jux.in/foto/2014/57.jpg'),
('958cf292-87fb-11e7-bb31-be2e44b06b34', 'Fahmi Surya Nugraha', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok Esa, Ciseke Besar', '85863819739', 'fahmisryn', 'http://hda2.jux.in/foto/2014/58.jpg'),
('958cf35a-87fb-11e7-bb31-be2e44b06b34', 'Satria Megananda Purnama', 'Laki-laki', 'Bandung', '0000-00-00', 'janati park cluster 3 blok d7', '82119696608', 'satriaamp', 'http://hda2.jux.in/foto/2014/59.jpg'),
('958cf418-87fb-11e7-bb31-be2e44b06b34', 'Khairil Azmi Ashari', 'Laki-laki', 'Medan', '0000-00-00', 'Pondok Esa Jl. Ciseke no.229', '82214467300', 'KhaAzAs', 'http://hda2.jux.in/foto/2014/60.jpg'),
('958cf4d6-87fb-11e7-bb31-be2e44b06b34', 'Alfan Zuhdi', 'Laki-laki', 'Bangkinang', '0000-00-00', 'Anggrek, Jalan Kol. Ahmad Syam', '87781095753', 'alfanzuhdi', 'http://hda2.jux.in/foto/2014/61.jpg'),
('958cf878-87fb-11e7-bb31-be2e44b06b34', 'Eka Qolbu Mochammad Sidik', 'Laki-laki', 'Bandung', '0000-00-00', 'Komp. Cibolerang G 30, Kelurahan Margahayu Utara, Kecamatan Babakan Ciparay, Kota Bandung', '81321737249', 'ekaqolbu', 'http://hda2.jux.in/foto/2014/62.jpg'),
('958cf968-87fb-11e7-bb31-be2e44b06b34', 'ilyas abduttawab', 'Laki-laki', 'Jakarta', '0000-00-00', 'anggrek', '81210670822', 'ilyasabdut', 'http://hda2.jux.in/foto/2014/63.jpg'),
('958cfa26-87fb-11e7-bb31-be2e44b06b34', 'Firsan Arifin', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok Esa, Ciseke Besar', '8112235773', 'firsanarifin', 'http://hda2.jux.in/foto/2014/64.jpg'),
('958cfaee-87fb-11e7-bb31-be2e44b06b34', 'Dzikra D', 'Perempuan', 'Bandung', '0000-00-00', 'Idem', '87729881991', 'Bioeve', 'http://hda2.jux.in/foto/2014/65.jpg'),
('958cfbac-87fb-11e7-bb31-be2e44b06b34', 'Rizky Pratama Mulyana', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl Melati 2 No 16 Bumi Rancaekek Kencana, Kab. Bandung', '81231461515', 'rizkypmulyana', 'http://hda2.jux.in/foto/2014/66.jpg'),
('958cfc6a-87fb-11e7-bb31-be2e44b06b34', 'Ahmad Rizki', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'Pondok Malaka Indah, Jl. Kolonel Achmad Syam, Desa Sayang, Jatinangor', '81320166130', 'qmetalcore', 'http://hda2.jux.in/foto/2014/67.jpg'),
('958cfd32-87fb-11e7-bb31-be2e44b06b34', 'Ryan Zein Sembada', 'Laki-laki', 'Sumedang', '0000-00-00', 'Pondokan Kurnia', '82119162806', 'ryanzeins', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2014/140810140068.JPG'),
('958d012e-87fb-11e7-bb31-be2e44b06b34', 'William Rahman', 'Laki-laki', 'Pangkalan bun', '0000-00-00', 'Gg mawar, kristal biru', '81218099866', 'willyrahman', 'http://hda2.jux.in/foto/2014/69.jpg'),
('958d02e6-87fb-11e7-bb31-be2e44b06b34', 'Asep Nur Muhammad', 'Laki-laki', 'Majalengka', '0000-00-00', 'Ciseke Besar', '81220058838', 'sevnur_', 'http://hda2.jux.in/foto/2014/70.jpg'),
('958d0476-87fb-11e7-bb31-be2e44b06b34', 'Hamdani', '', '', '0000-00-00', 'Sayang', '81261881291', 'D14781478', 'http://hda2.jux.in/foto/2014/71.jpg'),
('958d064c-87fb-11e7-bb31-be2e44b06b34', 'Diki Novtrianda', 'Laki-laki', 'Bengkulu', '0000-00-00', 'Pondok RE Jl.Kol Achmad Syam no.76A Ds.Cikeruh,Jatinangor', '85758264025', '', 'http://hda2.jux.in/foto/2014/72.jpg'),
('958d07be-87fb-11e7-bb31-be2e44b06b34', 'Mohammad Gilang Akbar Hikmawan', 'Laki-laki', 'Cianjur', '0000-00-00', 'Janati Park Cluster 2 G8', '85846357529', 'hikmawangilang', 'http://hda2.jux.in/foto/2015/01.jpg'),
('958d0926-87fb-11e7-bb31-be2e44b06b34', 'Adi Purnama', 'Laki-laki', 'Ciamis', '0000-00-00', 'Ciseke Bawah Jatinangor', '895000000000', 'adisabit', 'http://hda2.jux.in/foto/2015/02.jpg'),
('958d0aa2-87fb-11e7-bb31-be2e44b06b34', 'Ilfan Ali Pandi', 'Laki-laki', 'Tasikmalaya', '0000-00-00', 'Gg. Manunggal Dusun Gentramanah Ds. Hegarmanah ', '83827875375', 'ilfanalipandi', 'http://hda2.jux.in/foto/2015/03.jpg'),
('958d10c4-87fb-11e7-bb31-be2e44b06b34', 'Alvin Atthariq', 'Laki-laki', 'Padang', '0000-00-00', 'Jl.Ciseke no 321,Kosan Puri Bunda', '82285242850', 'alvinatthariq', 'http://hda2.jux.in/foto/2015/04.jpg'),
('958d1240-87fb-11e7-bb31-be2e44b06b34', 'Yodie Ikhwana', 'Laki-laki', 'padang', '0000-00-00', 'sayang, puri indah blok B5 no. 27', '81316170072', 'dieikhwana', 'http://hda2.jux.in/foto/2015/05.jpg'),
('958d1380-87fb-11e7-bb31-be2e44b06b34', 'Edwyne Farah Febrinda', 'Perempuan', 'Jakarta', '0000-00-00', 'Jl. Sayang (kost casa de la madre)', '82188202331', 'Edwynefarah', 'http://hda2.jux.in/foto/2015/06.jpg'),
('958d14fc-87fb-11e7-bb31-be2e44b06b34', 'Naufal Nurfikri Alwan', 'Laki-laki', 'Sukabumi', '0000-00-00', 'Caringin Garden ', '85798966458', 'naufalnurfikri27', 'http://hda2.jux.in/foto/2015/07.jpg'),
('958d1664-87fb-11e7-bb31-be2e44b06b34', 'Fikri firdaus', 'Laki-laki', 'Banjar', '0000-00-00', 'Jl ahmad syam .pondok kecapi 7 ', '82217363307', 'Fikrifirdaus1', 'http://hda2.jux.in/foto/2015/08.jpg'),
('958d17cc-87fb-11e7-bb31-be2e44b06b34', 'Syafiqah Husna', 'Perempuan', 'Bogor', '0000-00-00', 'Pondok Aisyah Gg. Mawar 3 ', '81313462186', 'syafiqahh13', 'http://hda2.jux.in/foto/2015/09.jpg'),
('958d1cf4-87fb-11e7-bb31-be2e44b06b34', 'Fikri M Nur Zaman', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl Kolonel Ahmad Syam Komplek Puri Indah Blok. A2 No. 12', '82228885989', 'fikrimnz', 'http://hda2.jux.in/foto/2015/10.jpg'),
('958d1e7a-87fb-11e7-bb31-be2e44b06b34', 'Andy Anggara', 'Laki-laki', 'Kuningan', '0000-00-00', 'Pondok JM Hegarmanah', '629000000000', 'andyanggara', 'http://hda2.jux.in/foto/2015/11.jpg'),
('958d1f4c-87fb-11e7-bb31-be2e44b06b34', 'Dicky Abdul Baki', 'Laki-laki', 'Tasikmalaya', '0000-00-00', 'Jalan Kol. Ahmad Syam No.37 (Pondok Ray kamar 2.8), Desa Cikeruh, Kecamatan Jatinangor, Sumedang', '81912887111', 'dicky_abd', 'http://hda2.jux.in/foto/2015/12.jpg'),
('958d2014-87fb-11e7-bb31-be2e44b06b34', 'Algifari Resayahya', 'Laki-laki', 'Kuningan', '0000-00-00', 'Wisma Kasep, Kampung Geulis, Jatinangor', '81224617550', 'algifarir', 'http://hda2.jux.in/foto/2015/13.jpg'),
('958d20d2-87fb-11e7-bb31-be2e44b06b34', 'Dwiki Nurkurniawan Satya Putra', 'Laki-laki', 'Yogyakarta', '0000-00-00', 'Hegarmanah', '85694419450', 'dwiki-48', 'http://hda2.jux.in/foto/2015/14.jpg'),
('958d21ae-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Rifky Suryantono', 'Laki-laki', 'Jakarta', '0000-00-00', 'jln ciseke kecil, pondok laksana 3, kamar A7(lantai 3)', '82298648161', 'rifkysu', 'http://hda2.jux.in/foto/2015/15.jpg'),
('958d25aa-87fb-11e7-bb31-be2e44b06b34', 'Syafira predeisyanti', 'Perempuan', 'Cimahi', '0000-00-00', 'Wisma Handayani, Jl. Raya Jatinangor Blok Warung Kalde RT 01 RW 01 No. 139', '85222480753', 'syafirap', 'http://hda2.jux.in/foto/2015/16.jpg'),
('958d276c-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/17.jpg'),
('958d291a-87fb-11e7-bb31-be2e44b06b34', 'Nizariansyah Agung ', 'Laki-laki', 'Jakarta ', '0000-00-00', 'Kp.geulis,Rumah Kuning. 001', '81296761997', 'nizariansyah ', 'http://hda2.jux.in/foto/2015/18.jpg'),
('958d2a64-87fb-11e7-bb31-be2e44b06b34', 'Tyara Salsabila', 'Perempuan', 'Kuningan', '0000-00-00', 'Jl. Warung Kalde, Pondok Silaturahmi, Gang Al-Amin 1 RT 03/02, Desa Cikeruh, Kec. Jatinangor, Kab. Sumedang 45363', '87777497306', 'tyarasalsa', 'http://hda2.jux.in/foto/2015/19.jpg'),
('958d2b40-87fb-11e7-bb31-be2e44b06b34', 'windy putri shabrina', 'Perempuan', 'Bogor', '0000-00-00', 'pondok resti ciseke besar', '87770070385', 'winduputris', 'http://hda2.jux.in/foto/2015/20.jpg'),
('958d2c08-87fb-11e7-bb31-be2e44b06b34', 'Teguh Prio Setia ', 'Laki-laki', 'Subang', '0000-00-00', 'Gg. Mawar V Pondok Teratai Biru 1 ', '87822733452', 'teguhpriosetia', 'http://hda2.jux.in/foto/2015/21.jpg'),
('958d2db6-87fb-11e7-bb31-be2e44b06b34', 'Hilmi Aziz Noor', 'Laki-laki', 'Majalengka', '0000-00-00', 'Jl Raya Jatinangor no 341, cikuda', '82219114097', '779707', 'http://hda2.jux.in/foto/2015/22.jpg'),
('958d31bc-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Rizki', 'Laki-laki', 'Karawang', '0000-00-00', 'Janati Park Cluster 2 blok G8', '89622721716', 'muriz8', 'http://hda2.jux.in/foto/2015/23.jpg'),
('958d32a2-87fb-11e7-bb31-be2e44b06b34', 'Cipto Tri Utomo', 'Laki-laki', 'Bandung', '0000-00-00', '-', '85721855955', 'cipredevie7', 'http://hda2.jux.in/foto/2015/24.jpg'),
('958d3374-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/25.jpg'),
('958d3432-87fb-11e7-bb31-be2e44b06b34', 'Multahadi Qisman', 'Laki-laki', 'Cirebon', '0000-00-00', 'Pondok surya', '89670592613', 'Qismancakep', 'http://hda2.jux.in/foto/2015/26.jpg'),
('958d34fa-87fb-11e7-bb31-be2e44b06b34', 'Bayu Roma Subekti', 'Laki-laki', 'Bekasi', '0000-00-00', 'Pondok 3 saudara, hegarmanah', '81908639308', 'bayuroma', 'http://hda2.jux.in/foto/2015/27.jpg'),
('958d35b8-87fb-11e7-bb31-be2e44b06b34', 'Fadel Chaidar Fachru', 'Laki-laki', 'Kuningan', '0000-00-00', 'Caringin', '81946857889', 'fadelchaidarf', 'http://hda2.jux.in/foto/2015/28.jpg'),
('958d3680-87fb-11e7-bb31-be2e44b06b34', 'Nurul ilma asfiya nashruddin', 'Perempuan', 'Sumedang', '0000-00-00', 'cikeruh', '82295980432', 'nurulilmaan', 'http://hda2.jux.in/foto/2015/29.jpg'),
('958d3a86-87fb-11e7-bb31-be2e44b06b34', 'Mochammad Agung Alfarisi', 'Laki-laki', 'Garut', '0000-00-00', 'Janati Park Cluster 2 blok G-8', '85793011257', 'mogung_kahn', 'http://hda2.jux.in/foto/2015/30.jpg'),
('958d3b58-87fb-11e7-bb31-be2e44b06b34', 'Ikhwanul Murtadlo Nuruzzaman', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok Surya Hegarmanah No 2', '81910081404', 'ikhwanul.mn', 'http://hda2.jux.in/foto/2015/31.jpg'),
('958d4166-87fb-11e7-bb31-be2e44b06b34', 'Dela Rosa Kusuma', 'Perempuan', 'Bekasi', '0000-00-00', 'Awani Studento', '87897726773', '03dela', 'http://hda2.jux.in/foto/2015/32.jpg'),
('958d42d8-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2015/140810150033.JPG'),
('958d43b4-87fb-11e7-bb31-be2e44b06b34', 'Gilang Nusantara Barry Putra', 'Laki-laki', 'Jakarta', '0000-00-00', 'Janati Park blok G No.8', '87711210332', 'xenonia33', 'http://hda2.jux.in/foto/2015/34.jpg'),
('958d4486-87fb-11e7-bb31-be2e44b06b34', 'Yuda Aprimulyana', 'Laki-laki', 'Cimahi', '0000-00-00', 'Jalan Sentral RT 05 RW 05 No 179 Cibabat Cimahi Utara Kota Cimahi', '83829292997', 'yudha_aprimulyana', 'http://hda2.jux.in/foto/2015/35.jpg'),
('958d483c-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Aqwam Himami', 'Laki-laki', 'Bandung', '0000-00-00', '-', '85884509710', 'aqwamhimami', 'http://hda2.jux.in/foto/2015/36.jpg'),
('958d4922-87fb-11e7-bb31-be2e44b06b34', 'Hidayatul Fakhri', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'Pondok arghi ciseke kecil', '85264620624', 'h_fakhri', 'http://hda2.jux.in/foto/2015/37.jpg'),
('958d49e0-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/38.jpg'),
('958d4abc-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/39.jpg'),
('958d4b8e-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fawwaz Izzuddin', 'Laki-laki', 'Bandung', '0000-00-00', 'Jln. Cijawura Girang V No.31', '85720434258', 'kaitoupaw', 'http://hda2.jux.in/foto/2015/40.jpg'),
('958d4c56-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Yusrizan', 'Laki-laki', 'Bandung', '0000-00-00', 'Jalan Raya Jatinangor perumahan janati park blok g no 8', '85759944047', 'myusrizan', 'http://hda2.jux.in/foto/2015/41.jpg'),
('958d4d1e-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/42.jpg'),
('958d502a-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2015/140810150043.JPG'),
('958d511a-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Agung Aditya', 'Laki-laki', 'Kuningan', '0000-00-00', 'pondok ria asri, hegarmanah', '629000000000', 'lichagungaditya', 'http://hda2.jux.in/foto/2015/44.jpg'),
('958d51d8-87fb-11e7-bb31-be2e44b06b34', 'Ahmad Jihan Atqia', 'Laki-laki', 'Bandung', '0000-00-00', 'JM PUTRA', '81220184941', 'ahmadja', 'http://hda2.jux.in/foto/2015/45.jpg'),
('958d52a0-87fb-11e7-bb31-be2e44b06b34', 'Aulia Ghassani Nabila', 'Perempuan', 'Bandung', '0000-00-00', 'pondok syamira', '88218011090', 'auliaghassani', 'http://hda2.jux.in/foto/2015/46.jpg'),
('958d53cc-87fb-11e7-bb31-be2e44b06b34', 'Irfan Muhammad Wildani', 'Laki-laki', 'Bandung', '0000-00-00', '-', '8156022332', 'imwildani', 'http://hda2.jux.in/foto/2015/47.jpg'),
('958d54b2-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fathur Ghazzani', 'Laki-laki', 'Medan', '0000-00-00', 'Jl. Raya Jatinangor no. 78 Apartemen Easton Park kamar 0206', '87766004525', 'maztur', 'http://hda2.jux.in/foto/2015/48.jpg'),
('958d57d2-87fb-11e7-bb31-be2e44b06b34', 'Irfan', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'Jl. Ciseke rt 5 rw 3 no 326 Desa Cikeruh, Jatinangor', '8973518006', 'vaanjul', 'http://hda2.jux.in/foto/2015/49.jpg'),
('958d58ae-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Zharfan Pasca Hadiyan', 'Laki-laki', 'Bandung', '0000-00-00', 'Jalan Raya Barat No 90 Cicalengka', '81320180984', 'zharfanpascaa', 'http://hda2.jux.in/foto/2015/50.jpg'),
('958d5976-87fb-11e7-bb31-be2e44b06b34', 'Yovie Latiawan Sudrajat', 'Laki-laki', '', '0000-00-00', 'Dsn. Cijeruk 03/01 Desa Cijeruk Kec. Pamulihan Kab. Sumedang', '81223023086', 'ylsudrajat', 'http://hda2.jux.in/foto/2015/51.jpg'),
('958d5a34-87fb-11e7-bb31-be2e44b06b34', 'vina nur fitriani', 'Perempuan', 'Bandung', '0000-00-00', 'jalan sayang', '81320910304', 'vinanfitriani', 'http://hda2.jux.in/foto/2015/52.jpg'),
('958d5af2-87fb-11e7-bb31-be2e44b06b34', 'Rivaldi Ridhla Julviar', 'Laki-laki', 'Bandung ', '0000-00-00', 'Ria Asri RUmah Belakang', '87823882398', 'rivaldiridhlaj', 'http://hda2.jux.in/foto/2015/53.jpg'),
('958d5bb0-87fb-11e7-bb31-be2e44b06b34', 'Ragil Ananta', 'Laki-laki', 'jakarta', '0000-00-00', 'panorama H/42', '81331703750', 'ragilanantaa', 'http://hda2.jux.in/foto/2015/54.jpg'),
('958d5c6e-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2015/55.jpg'),
('958d6006-87fb-11e7-bb31-be2e44b06b34', 'Farhan Purnama Adjie', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Neglasari I No. 19 Ujungberung, Bandung', '85793232514', 'farhan_ajie', 'http://hda2.jux.in/foto/2015/56.jpg'),
('958d6100-87fb-11e7-bb31-be2e44b06b34', 'Fazlur Rahman', 'Laki-laki', 'Bandung', '0000-00-00', 'Jalan Caringin No. 20, Jatinangor, Sayang, Sumedang, Kabupaten Sumedang, Jawa Barat 45363', '85659206770', 'fazlur_rahman', 'http://hda2.jux.in/foto/2015/57.jpg'),
('958d61c8-87fb-11e7-bb31-be2e44b06b34', 'Arie Brian', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'Hegarmanah', '81994208984', 'lightflame', 'http://hda2.jux.in/foto/2015/58.jpg'),
('958d6286-87fb-11e7-bb31-be2e44b06b34', 'Dimas Fadli Nugraha', 'Laki-laki', 'Bandung', '0000-00-00', 'sama', '81214166292', 'dfn19', 'http://hda2.jux.in/foto/2015/59.jpg'),
('958d634e-87fb-11e7-bb31-be2e44b06b34', 'Yoshe Zaneta', 'Perempuan', 'Jakarta', '0000-00-00', 'Denayu (Jl. Sayang)', '8989311711', 'yoshezaneta', 'http://hda2.jux.in/foto/2015/60.jpg'),
('958d640c-87fb-11e7-bb31-be2e44b06b34', 'Rispansah Sakti Rusidiawan', 'Laki-laki', 'Subang', '0000-00-00', 'Gentramanah  No. 21 Rt 03/02  Ds. Hegarmanah  Kec. Jatinangor  Kab. Sumedang.', '88218477588', 'rispansyah', 'http://hda2.jux.in/foto/2015/61.jpg'),
('958d677c-87fb-11e7-bb31-be2e44b06b34', 'Agung Teja Pratama', 'Laki-laki', 'Bekasi', '0000-00-00', 'Hegarmanah', '89630861910', 'atepagung', 'http://hda2.jux.in/foto/2015/62.jpg'),
('958d6862-87fb-11e7-bb31-be2e44b06b34', 'Muhamad Ihsan Kamil', 'Laki-laki', 'Ciamis', '0000-00-00', 'Jalan Cikeruh Belakang Kantin Jatinangor Rumah Cuci Passpud', '628000000000', 'mhmdhsnkml', 'http://hda2.jux.in/foto/2015/63.jpg'),
('958d6934-87fb-11e7-bb31-be2e44b06b34', 'Fatan Aufa Ahdiy', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Cempaka, Jl. Cisaladah RT 04/07 Desa Hegarmanah, Kec. Jatinangor, Kab. Sumedang, Jawa Barat 45363', '628000000000', 'fatanisti', 'http://hda2.jux.in/foto/2015/64.jpg'),
('958d69f2-87fb-11e7-bb31-be2e44b06b34', 'Azmi farras miw', 'Laki-laki', 'Cianjur', '0000-00-00', 'Ciseke', '89686931837', 'azmifarras', 'http://hda2.jux.in/foto/2015/65.jpg'),
('958d6ab0-87fb-11e7-bb31-be2e44b06b34', 'Pandji Saeful', 'Laki-laki', 'Bandung', '0000-00-00', '-', '89607025212', 'pandjisa', 'http://hda2.jux.in/foto/2015/66.jpg'),
('958d6b6e-87fb-11e7-bb31-be2e44b06b34', 'Evita Naomi Rosnauli Sirait', 'Perempuan', 'Bekasi', '0000-00-00', 'Ciseke Besar, Cikeruh, Jatinangor', '82110572456', 'evnaomirs', 'http://hda2.jux.in/foto/2015/67.jpg'),
('958d6c36-87fb-11e7-bb31-be2e44b06b34', 'Sufyan Saori', 'Laki-laki', 'Cirebon', '0000-00-00', 'Rumah belakang pondok ria asri, hegarmanah, jatinangor', '87729813117', 'nbl97', 'http://hda2.jux.in/foto/2015/68.jpg'),
('958d6fba-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Umar Fadhlullah', 'Laki-laki', 'Bandung', '0000-00-00', 'Jalan Sayang', '82282820408', 'ufadhlullah', 'http://hda2.jux.in/foto/2015/69.jpg'),
('958d70b4-87fb-11e7-bb31-be2e44b06b34', 'Fikri Muhammad Iqbal', 'Laki-laki', 'Tasikmalaya', '0000-00-00', 'Jln. Sayang no 702, RT/RW 03/06, Gedung A Lt1 No 6, Kampung Gajah, Desa Cikeruh, Kecamatan Jatinangor, Kabupaten Sumedang', '82127300773', 'rexpectz', 'http://hda2.jux.in/foto/2015/70.jpg'),
('958d7172-87fb-11e7-bb31-be2e44b06b34', 'Mohamad Lazuardi Mahardika', 'Laki-laki', 'Jakarta', '0000-00-00', 'Awani Studento E-2.2', '8112000900', 'AlphaX0415', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2015/140810150071.JPG'),
('958d723a-87fb-11e7-bb31-be2e44b06b34', 'Denny Febry Prayogo', 'Laki-laki', 'Tangerang', '0000-00-00', 'Jalan Ciseke Besar Pondok Sakinah 2 No.106', '085691388200', 'dennyfebry', 'http://hda2.jux.in/foto/2015/72.jpg'),
('958d72f8-87fb-11e7-bb31-be2e44b06b34', 'Zharfan Nugraha Permadi', 'Laki-laki', 'Bandung', '0000-00-00', '-', '83821378430', 'Zharfannp_', 'http://hda2.jux.in/foto/2015/73.jpg'),
('958d73b6-87fb-11e7-bb31-be2e44b06b34', 'Angga Kresnabayu', 'Laki-laki', 'Cirebon', '0000-00-00', 'Kos Cemerlang, Dusun Ciseke RT/RW 03/03, Desa Cikeruh, Kec. Jatinangor, Kab. Sumedang', '82226759976', 'angkres', 'http://hda2.jux.in/foto/2016/01.jpg'),
('958d747e-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160002.JPG'),
('958d780c-87fb-11e7-bb31-be2e44b06b34', 'Tasya Amanda Adinegara', 'Perempuan', 'Bandung', '0000-00-00', '-', '85723505577', 'achaadinegara', 'http://hda2.jux.in/foto/2016/03.jpg'),
('958d791a-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Ahsan Nurrijal', 'Laki-laki', 'Sukabumi', '0000-00-00', 'Griya Bandung Indah Blok E1 No.10', '85864468331', 'schavelaar33', 'http://hda2.jux.in/foto/2016/04.jpg'),
('958d7ab4-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160005.JPG'),
('958d7c30-87fb-11e7-bb31-be2e44b06b34', 'Fajar Adiyansyah Rahiq', 'Laki-laki', 'Baso', '0000-00-00', 'Griya Wisuda No.118, RT03/RW03,Ciseke Besar,Jatinangor', '85365405020', 'fajarrahiq', 'http://hda2.jux.in/foto/2016/06.jpg'),
('958d7db6-87fb-11e7-bb31-be2e44b06b34', 'Fauzi Faruq Nabbani', 'Laki-laki', 'Tasikmalaya', '0000-00-00', 'Jl.cisaladah pondok mandiri', '89687774919', 'Fauzifaruqn', 'http://hda2.jux.in/foto/2016/07.jpg'),
('958d7f0a-87fb-11e7-bb31-be2e44b06b34', 'Afifah Kho''eriah', 'Perempuan', 'Cirebon', '0000-00-00', 'Asrama Padjadjaran 2 Unpad', '89695101506', 'Afifahkhoeriah', 'http://hda2.jux.in/foto/2016/08.jpg'),
('958d8054-87fb-11e7-bb31-be2e44b06b34', 'Raditya Prirahmadian', 'Laki-laki', 'Kuningan', '0000-00-00', 'Pondok Ria Asri No. 109, Jalan Hegarmanah RT/RW 1/3 No. 4, Desa Cikeruh, Kecamatan Jatinangor, Kabupatem Sumedang, Jawa Barat', '82295108710', 'radityaaap', 'http://hda2.jux.in/foto/2016/09.jpg'),
('958d857c-87fb-11e7-bb31-be2e44b06b34', 'Reynaldi Noer Rizki', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl. Ciseke no.257 RT/RW 004/003 Cikeruh,Jatinangor,Sumedang,Jawa Barat 45363', '8563858098', 'reynaldinr', 'http://hda2.jux.in/foto/2016/10.jpg');
INSERT INTO `profile_kating` (`id_user`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `alamat_kos`, `no_hp`, `id_line`, `link_foto`) VALUES
('958d869e-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fariz', 'Laki-laki', 'Padang panjang', '0000-00-00', 'Pondok Villa Merah, Sayang\r', '82386607503', 'muhammadfariz13', 'http://hda2.jux.in/foto/2016/11.jpg'),
('958d8766-87fb-11e7-bb31-be2e44b06b34', 'Kevin A.A.J. Waworuntu', 'Laki-laki', 'Bukittinggi', '0000-00-00', 'Wisma Interaktif', '82214628932', 'kevinaajw', 'http://hda2.jux.in/foto/2016/12.jpg'),
('958d882e-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Raihan Akbar', 'Laki-laki', 'Jakarta', '0000-00-00', 'Cisaladah, kampung cincin, Pondok nirina ', '89650097446', 'raihan_707', 'http://hda2.jux.in/foto/2016/13.jpg'),
('958d8900-87fb-11e7-bb31-be2e44b06b34', 'Sachi Hongo', 'Laki-laki', 'Jakarta', '0000-00-00', 'Cisaladah ujung-Jatinangor', '85268425930', 'sachihongo99', 'http://hda2.jux.in/foto/2016/14.jpg'),
('958d89c8-87fb-11e7-bb31-be2e44b06b34', 'Dzakia Rayhana', 'Perempuan', 'Bekasi', '0000-00-00', 'Wisma nugraha sayang', '81285645242', 'dzkryhn', 'http://hda2.jux.in/foto/2016/15.jpg'),
('958d8a86-87fb-11e7-bb31-be2e44b06b34', 'Fikri Ikhsan', 'Laki-laki', 'Padang', '0000-00-00', 'Wisma Interaktifjl cisaladah no 369 rt 04/rw 07 hegarmanah,jatinangor', '85263917794', 'f428', 'http://hda2.jux.in/foto/2016/16.jpg'),
('958d8f9a-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Yusuf Alfianto', 'Laki-laki', 'Grobogan', '0000-00-00', 'Pondok samolo. Jl kolonel ahmad syam. Rt 3 rw 4. Desa ciawi, kelurahan cikeruh. Jatinangor\nKode pos 45363', '87711286270', 'yusufalfianto_', 'http://hda2.jux.in/foto/2016/17.jpg'),
('958d909e-87fb-11e7-bb31-be2e44b06b34', 'Erlangga Riyyan Nugraha', 'Laki-laki', 'Bandung', '0000-00-00', 'Perum IKOPIN Blok C No. 24', '87823366030', 'rlangga_', 'http://hda2.jux.in/foto/2016/18.jpg'),
('958d9166-87fb-11e7-bb31-be2e44b06b34', 'Herizal Kurniawan', 'Laki-laki', 'Padang', '0000-00-00', 'D''Roemahku Ciseke Besar\r', '85364088599', 'hrz_', 'http://hda2.jux.in/foto/2016/19.jpg'),
('958d9238-87fb-11e7-bb31-be2e44b06b34', 'Hasna Karimah', 'Perempuan', 'Tangerang', '0000-00-00', 'Pondok Az-Zahra, Jl. Kol. Achmad Syam Jatinangor, Sumedang', '82298515256', 'karimahasnaa', 'http://hda2.jux.in/foto/2016/20.jpg'),
('958d9300-87fb-11e7-bb31-be2e44b06b34', 'Ilham Kusuma Aji', 'Laki-laki', 'Garut', '0000-00-00', 'Jalan Caringin no.8A (wisma boulevard 2) Jatinangor - Sumedang', '82182600612', 'ilhamkusumaaji', 'http://hda2.jux.in/foto/2016/21.jpg'),
('958d93c8-87fb-11e7-bb31-be2e44b06b34', 'Intan Pratiwi', 'Perempuan', 'Simpang Batu Hampar', '0000-00-00', 'Asrama 2 Padjadjaran', '82386018579', 'intaannpratiwii', 'http://hda2.jux.in/foto/2016/22.jpg'),
('958d9486-87fb-11e7-bb31-be2e44b06b34', 'Shaleh Husen Attamimi', 'Laki-laki', 'Bandung', '0000-00-00', 'JL. Sindangkasih No.30 Antapani Bandung', '81395244474', 'shalehatta33', 'http://hda2.jux.in/foto/2016/23.jpg'),
('958d97ce-87fb-11e7-bb31-be2e44b06b34', 'Paquita Putri Ramadhianti', 'Perempuan', 'Cimahi', '0000-00-00', 'Jl Simpang no 67/B, Cimahi', '87821826686', 'paquitaputri', 'http://hda2.jux.in/foto/2016/24.jpg'),
('958d98a0-87fb-11e7-bb31-be2e44b06b34', 'Teguh Riandi Pratama', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Cikuda no 21', '81222682490', 'teguhrnd', 'http://hda2.jux.in/foto/2016/25.jpg'),
('958d9968-87fb-11e7-bb31-be2e44b06b34', 'Syifa Fauziyah Nurul Islam', 'Perempuan', 'bandung', '0000-00-00', '-', '87822135403', 'syifa0828', 'http://hda2.jux.in/foto/2016/26.jpg'),
('958d9a30-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Viqri Febryan', 'Laki-laki', 'Pekanbaru', '0000-00-00', 'Jalan Kolonel Ahmad Syam no.13 RT/RW 02/02 Cikeruh,Sumedang', '82283109346', 'viqrifebryan', 'http://hda2.jux.in/foto/2016/27.jpg'),
('958d9aee-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Fahmi Irfananda', 'Laki-laki', 'Pekalongan', '0000-00-00', 'Jln Jend A Yani 909 Bandung', '82218161697', 'irfanan', 'http://hda2.jux.in/foto/2016/28.jpg'),
('958d9bb6-87fb-11e7-bb31-be2e44b06b34', 'Alif Naufal Hakim', 'Laki-laki', 'Bandung', '0000-00-00', 'Jalan cibatu mulya 2,No. 2 blok H lama', '81222810786', 'alifnaufalh', 'http://hda2.jux.in/foto/2016/29.jpg'),
('958d9c74-87fb-11e7-bb31-be2e44b06b34', 'Adnan Januar Yunaz', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl. Ciseke no. 31', '81370748901', 'despairado', 'http://hda2.jux.in/foto/2016/30.jpg'),
('958da016-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Nur Anbiya Pohan', 'Laki-laki', 'Jakarta', '0000-00-00', 'perumahan puri indah jatinangor jalan sayang blok C6 no.16, sumedang', '81297884125', 'anbiyapohan', 'http://hda2.jux.in/foto/2016/31.jpg'),
('958da0de-87fb-11e7-bb31-be2e44b06b34', 'Mochamad Fa''izin Ahsan', 'Laki-laki', 'Bandung', '0000-00-00', 'Jln.GKPN no 34 Cibeusi', '87778628883', 'faizin11', 'http://hda2.jux.in/foto/2016/32.jpg'),
('958da20a-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Naufal Monoarfa', 'Laki-laki', 'Depok', '0000-00-00', 'Jln Hegarmanah No 12 RT 2 RW 3 Jatinangor Sumedang', '85718803408', 'mrmonoarfa', 'http://hda2.jux.in/foto/2016/33.jpg'),
('958da2e6-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160034.JPG'),
('958da3ae-87fb-11e7-bb31-be2e44b06b34', 'Santo Joosten Malau', 'Laki-laki', 'Medan', '0000-00-00', 'Jl Sayang Perumahan Ikopin Blok C no 24', '82167492312', 'santojoosten', 'http://hda2.jux.in/foto/2016/35.jpg'),
('958da480-87fb-11e7-bb31-be2e44b06b34', 'Malik Zulfikar Gantina', 'Laki-laki', 'Bandung', '0000-00-00', '-', '81563433507', 'zulfikarg', 'http://hda2.jux.in/foto/2016/36.jpg'),
('958da818-87fb-11e7-bb31-be2e44b06b34', 'Rafidghadah Damarta', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl raya jatinangor no 150', '81574142222', 'rafidghadah', 'http://hda2.jux.in/foto/2016/37.jpg'),
('958da908-87fb-11e7-bb31-be2e44b06b34', 'Satrio Sadrakh Allesandro', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. PSM Dalam 1 no. 95', '89613603028', 'satrio_88io', 'http://hda2.jux.in/foto/2016/38.jpg'),
('958dabf6-87fb-11e7-bb31-be2e44b06b34', 'Yaumi Hadi Maulana', 'Laki-laki', 'Bandung', '0000-00-00', 'Nataka Residence', '81224085197', 'yaumi08', 'http://hda2.jux.in/foto/2016/39.jpg'),
('958dad22-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Jordiansyah', 'Laki-laki', 'Bandung', '0000-00-00', 'Kos Hj Pepen - Ciseke Besar', '81297532902', 'm.jordi', 'http://hda2.jux.in/foto/2016/40.jpg'),
('958dadf4-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://hda2.jux.in/foto/2016/41.jpg'),
('958daebc-87fb-11e7-bb31-be2e44b06b34', 'Aditya Rizky Fadillah', 'Laki-laki', 'Bandung', '0000-00-00', 'Pulang-pergi rumah', '82318585855', 'adityaarizkyf', 'http://hda2.jux.in/foto/2016/42.jpg'),
('958daf84-87fb-11e7-bb31-be2e44b06b34', 'Fidriyanto Rizkillah', 'Laki-laki', 'Jakarta', '0000-00-00', 'Wisma Sawerigading, Jl. Caringin Nomor 24', '81293168889', 'rezyfr', 'http://hda2.jux.in/foto/2016/43.jpg'),
('958db362-87fb-11e7-bb31-be2e44b06b34', 'Bening Kusumahati', 'Perempuan', 'Magetan', '0000-00-00', 'Pondok Valencia Jl. Cisaladah RT03 RW07 Desa Hegarmanah kec. Jatinangor kab. Sumedang Jawa barat 45363', '81563535201', 'beningk', 'http://hda2.jux.in/foto/2016/44.jpg'),
('958db452-87fb-11e7-bb31-be2e44b06b34', 'Januar Lazuardi', 'Laki-laki', 'Bandung', '0000-00-00', 'Griya Jatinangor 2 Jl. Palem 9 blok A15 no. 3', '82240763483', 'januarlazuardi', 'http://hda2.jux.in/foto/2016/45.jpg'),
('958db51a-87fb-11e7-bb31-be2e44b06b34', 'hilya tsaniya', 'Perempuan', 'padang', '0000-00-00', 'Pondok lestari 159, ciseke besar rw 3 rt 3 cikeruh, jatinangor', '83180557693', 'hilya_tsaniya', 'http://hda2.jux.in/foto/2016/46.jpg'),
('958db5d8-87fb-11e7-bb31-be2e44b06b34', 'Syafira Fitra Annisa', 'Perempuan', 'Pekanbaru', '0000-00-00', 'Kost Fenori, Jl. Ciseke\r', '85271937646', 'syafitra99', 'http://hda2.jux.in/foto/2016/47.jpg'),
('958db6b4-87fb-11e7-bb31-be2e44b06b34', 'Baby Cattleya Gustina Permatagama', 'Perempuan', 'Bandung', '0000-00-00', '-', '83822098269', 'becgp', 'http://hda2.jux.in/foto/2016/48.jpg'),
('958db77c-87fb-11e7-bb31-be2e44b06b34', 'Adryan Luthfi Faiz', 'Laki-laki', 'Jakarta', '0000-00-00', 'Dsn. Neglasari RT 04/11 Hegarmanah Jatinangor Sumedang (Red House)', '8987817332', 'iyonadryanlf', 'http://hda2.jux.in/foto/2016/49.jpg'),
('958db844-87fb-11e7-bb31-be2e44b06b34', 'Balar Nyalasivaa', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Subang 14 no 39 Antapani Bandung ', '81932028049', 'albaryaaln', 'http://hda2.jux.in/foto/2016/50.jpg'),
('958dbc22-87fb-11e7-bb31-be2e44b06b34', 'Zaenal Muttaqien', 'Laki-laki', 'Bandung', '0000-00-00', 'Pondok Kita', '81322587732', 'muttaqienzae', 'http://hda2.jux.in/foto/2016/51.jpg'),
('958dbcfe-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160052.JPG'),
('958dbdd0-87fb-11e7-bb31-be2e44b06b34', 'Vega savera yuana', 'Perempuan', 'banda aceh', '0000-00-00', 'Kampung geulis', '85262456235', 'Vegayuana', 'http://hda2.jux.in/foto/2016/53.jpg'),
('958dbe98-87fb-11e7-bb31-be2e44b06b34', 'Ibnu Ahsani', 'Laki-laki', 'Jakarta', '0000-00-00', 'Jl. Lapangan Sepak Bola RT 003/05,  Desa Cikeruh, Jatinangor ', '85946260642', 'ibnu.ahsani', 'http://hda2.jux.in/foto/2016/54.jpg'),
('958dbf60-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Rifqy Aulia Akbar', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Raya jatinangor no. 138', '85798193065', 'seth7x', 'http://hda2.jux.in/foto/2016/55.jpg'),
('958dcb54-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Ihza Triyanto', 'Laki-laki', 'Jakarta', '0000-00-00', 'Pondok Pribumi, RT 001/05, Pondok Ranggon, Cipayung, Jakarta Timur', '81212862858', 'ihzariyanto', 'http://hda2.jux.in/foto/2016/56.jpg'),
('958dd00e-87fb-11e7-bb31-be2e44b06b34', 'Shofiyyah Nadhiroh', 'Perempuan', 'Jakarta', '0000-00-00', 'Pondok Yulie, Cisaladah RT02 RW07, Hegarmanah, Jatinangor, Sumedang, Kode Pos 45363', '82299285050', 'shofiyyahnadhiroh2', 'http://hda2.jux.in/foto/2016/57.jpg'),
('958dd126-87fb-11e7-bb31-be2e44b06b34', 'Daffa Alief Rana', 'Laki-laki', 'Lhokseumawe ', '0000-00-00', 'Cikuda', '82165120020', 'daffaliefr', 'http://hda2.jux.in/foto/2016/58.jpg'),
('958dd1ee-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160059.JPG'),
('958dd2c0-87fb-11e7-bb31-be2e44b06b34', 'Beryl Cleary Hermanto', 'Laki-laki', 'Cimahi', '0000-00-00', 'Pondok Natasha, Ciseke Kecil, Jatinagor, Sumedang', '81223353153', 'real1vis', 'http://hda2.jux.in/foto/2016/60.jpg'),
('958dd388-87fb-11e7-bb31-be2e44b06b34', 'Eko Fajar Putra', 'Laki-laki', 'Malang', '0000-00-00', 'Dusun Mekar Asih RT 001 RW 013 Desa Hegarmanah Jatinangor', '8112252627', 'fajarputrae', 'http://hda2.jux.in/foto/2016/61.jpg'),
('958dd450-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Islam Taufikurahman', 'Laki-laki', 'Bandung', '0000-00-00', 'Jl. Golf Barat XVI No. 11 RT 05 RW 12 Kelurahan Sukamiskin Kecamatan Arcamanik', '82214023544', 'muham_istau', 'http://hda2.jux.in/foto/2016/62.jpg'),
('958dd522-87fb-11e7-bb31-be2e44b06b34', 'Gitra Elang Khanti', 'Laki-laki', 'Padang', '0000-00-00', 'Pondok Salsabila (depan IPDN)', '81372797268', 'elangkhanti', 'http://hda2.jux.in/foto/2016/63.jpg'),
('958dd87e-87fb-11e7-bb31-be2e44b06b34', 'Bariq Mbani', 'Laki-laki', 'Cimahi', '0000-00-00', 'Jl. Mendut Raya M.70 (saat ini)', '83829992262', 'bariqmbani', 'http://hda2.jux.in/foto/2016/64.jpg'),
('958dd96e-87fb-11e7-bb31-be2e44b06b34', 'Patricia Joanne', 'Perempuan', 'Jakarta', '0000-00-00', 'Wisma Mayangsari, Jl. Lapang Bola Belakang SD RT.03/05, Cikeruh, Kec. Jatinangor, Kabupaten Sumedang, Jawa Barat 45363', '81932698624', 'realicejoanne', 'http://hda2.jux.in/foto/2016/65.jpg'),
('958dda40-87fb-11e7-bb31-be2e44b06b34', '-', '', '', '0000-00-00', '', '', '', 'http://media.unpad.ac.id/photo/mahasiswa/140810/2016/140810160066.JPG'),
('958ddafe-87fb-11e7-bb31-be2e44b06b34', 'Muhammad Rafif Abieza Pradhana', 'Laki-laki', 'Bandar Lampung', '0000-00-00', 'Jl. Raya jatinangor no. 135 cikeruh', '8157190174', 'Abiezapradhana', 'http://hda2.jux.in/foto/2016/67.jpg'),
('958ddbc6-87fb-11e7-bb31-be2e44b06b34', 'Melati S Abisay', 'Perempuan', 'Waropen PAPUA', '0000-00-00', 'Aspad 2', '81248349861', '81248349861', 'http://hda2.jux.in/foto/2016/7001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile_maba`
--

CREATE TABLE `profile_maba` (
  `id_user` varchar(255) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat_kos` text,
  `no_hp` varchar(12) DEFAULT NULL,
  `id_line` varchar(20) DEFAULT NULL,
  `link_foto` text,
  `motto_hidup` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(255) NOT NULL,
  `npm` char(12) DEFAULT NULL,
  `password` text,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `npm`, `password`, `email`, `role`) VALUES
('958c2132-87fb-11e7-bb31-be2e44b06b34', 'admin', 'bukanadminadmin', 'cbshimatif@gmail.com', 'admin'),
('958c26b4-87fb-11e7-bb31-be2e44b06b34', '140810120001', '140810120001', '', '2012'),
('958c27cc-87fb-11e7-bb31-be2e44b06b34', '140810120002', '140810120002', '', '2012'),
('958c289e-87fb-11e7-bb31-be2e44b06b34', '140810120003', '140810120003', '', '2012'),
('958c295c-87fb-11e7-bb31-be2e44b06b34', '140810120004', '140810120004', '', '2012'),
('958c2a24-87fb-11e7-bb31-be2e44b06b34', '140810120005', '140810120005', '', '2012'),
('958c2ae2-87fb-11e7-bb31-be2e44b06b34', '140810120006', '140810120006', '', '2012'),
('958c2f4c-87fb-11e7-bb31-be2e44b06b34', '140810120007', '140810120007', '', '2012'),
('958c303c-87fb-11e7-bb31-be2e44b06b34', '140810120008', '140810120008', '', '2012'),
('958c310e-87fb-11e7-bb31-be2e44b06b34', '140810120009', '140810120009', '', '2012'),
('958c31c2-87fb-11e7-bb31-be2e44b06b34', '140810120010', '140810120010', '', '2012'),
('958c3280-87fb-11e7-bb31-be2e44b06b34', '140810120011', '140810120011', '', '2012'),
('958c333e-87fb-11e7-bb31-be2e44b06b34', '140810120012', '140810120012', '', '2012'),
('958c33fc-87fb-11e7-bb31-be2e44b06b34', '140810120013', '140810120013', '', '2012'),
('958c383e-87fb-11e7-bb31-be2e44b06b34', '140810120014', '140810120014', '', '2012'),
('958c396a-87fb-11e7-bb31-be2e44b06b34', '140810120015', '140810120015', '', '2012'),
('958c3a3c-87fb-11e7-bb31-be2e44b06b34', '140810120016', '140810120016', '', '2012'),
('958c3b04-87fb-11e7-bb31-be2e44b06b34', '140810120017', '140810120017', '', '2012'),
('958c3bd6-87fb-11e7-bb31-be2e44b06b34', '140810120018', '140810120018', '', '2012'),
('958c3c94-87fb-11e7-bb31-be2e44b06b34', '140810120019', '140810120019', '', '2012'),
('958c3d52-87fb-11e7-bb31-be2e44b06b34', '140810120020', '140810120020', '', '2012'),
('958c4108-87fb-11e7-bb31-be2e44b06b34', '140810120021', '140810120021', '', '2012'),
('958c4266-87fb-11e7-bb31-be2e44b06b34', '140810120022', '140810120022', '', '2012'),
('958c434c-87fb-11e7-bb31-be2e44b06b34', '140810120023', '140810120023', '', '2012'),
('958c4414-87fb-11e7-bb31-be2e44b06b34', '140810120024', '140810120024', '', '2012'),
('958c44c8-87fb-11e7-bb31-be2e44b06b34', '140810120025', '140810120025', '', '2012'),
('958c4590-87fb-11e7-bb31-be2e44b06b34', '140810120026', '140810120026', '', '2012'),
('958c4914-87fb-11e7-bb31-be2e44b06b34', '140810120027', '140810120027', '', '2012'),
('958c49fa-87fb-11e7-bb31-be2e44b06b34', '140810120028', '140810120028', '', '2012'),
('958c4ac2-87fb-11e7-bb31-be2e44b06b34', '140810120029', '140810120029', '', '2012'),
('958c4b80-87fb-11e7-bb31-be2e44b06b34', '140810130001', '140810130001', '', '2013'),
('958c4c3e-87fb-11e7-bb31-be2e44b06b34', '140810130002', '140810130002', '', '2013'),
('958c4cfc-87fb-11e7-bb31-be2e44b06b34', '140810130003', '140810130003', '', '2013'),
('958c4dba-87fb-11e7-bb31-be2e44b06b34', '140810130004', '140810130004', '', '2013'),
('958c50ee-87fb-11e7-bb31-be2e44b06b34', '140810130005', '140810130005', '', '2013'),
('958c51c0-87fb-11e7-bb31-be2e44b06b34', '140810130006', '140810130006', '', '2013'),
('958c527e-87fb-11e7-bb31-be2e44b06b34', '140810130007', '140810130007', '', '2013'),
('958c533c-87fb-11e7-bb31-be2e44b06b34', '140810130008', '140810130008', '', '2013'),
('958c5404-87fb-11e7-bb31-be2e44b06b34', '140810130009', '140810130009', '', '2013'),
('958c54c2-87fb-11e7-bb31-be2e44b06b34', '140810130010', '140810130010', '', '2013'),
('958c585a-87fb-11e7-bb31-be2e44b06b34', '140810130011', '140810130011', '', '2013'),
('958c5968-87fb-11e7-bb31-be2e44b06b34', '140810130012', '140810130012', '', '2013'),
('958c5a26-87fb-11e7-bb31-be2e44b06b34', '140810130013', '140810130013', '', '2013'),
('958c5ae4-87fb-11e7-bb31-be2e44b06b34', '140810130014', '140810130014', '', '2013'),
('958c5ba2-87fb-11e7-bb31-be2e44b06b34', '140810130015', '140810130015', '', '2013'),
('958c5c60-87fb-11e7-bb31-be2e44b06b34', '140810130016', '140810130016', '', '2013'),
('958c5d28-87fb-11e7-bb31-be2e44b06b34', '140810130017', '140810130017', '', '2013'),
('958c60d4-87fb-11e7-bb31-be2e44b06b34', '140810130018', '140810130018', '', '2013'),
('958c61ba-87fb-11e7-bb31-be2e44b06b34', '140810130019', '140810130019', '', '2013'),
('958c628c-87fb-11e7-bb31-be2e44b06b34', '140810130020', '140810130020', '', '2013'),
('958c6354-87fb-11e7-bb31-be2e44b06b34', '140810130021', '140810130021', '', '2013'),
('958c641c-87fb-11e7-bb31-be2e44b06b34', '140810130022', '140810130022', '', '2013'),
('958c64e4-87fb-11e7-bb31-be2e44b06b34', '140810130023', '140810130023', '', '2013'),
('958c65a2-87fb-11e7-bb31-be2e44b06b34', '140810130024', '140810130024', '', '2013'),
('958c6a84-87fb-11e7-bb31-be2e44b06b34', '140810130025', '140810130025', '', '2013'),
('958c6c00-87fb-11e7-bb31-be2e44b06b34', '140810130026', '140810130026', '', '2013'),
('958c6d5e-87fb-11e7-bb31-be2e44b06b34', '140810130027', '140810130027', '', '2013'),
('958c736c-87fb-11e7-bb31-be2e44b06b34', '140810130028', '140810130028', '', '2013'),
('958c74fc-87fb-11e7-bb31-be2e44b06b34', '140810130029', '140810130029', '', '2013'),
('958c7664-87fb-11e7-bb31-be2e44b06b34', '140810130030', '140810130030', '', '2013'),
('958c7be6-87fb-11e7-bb31-be2e44b06b34', '140810130031', '140810130031', '', '2013'),
('958c7dd0-87fb-11e7-bb31-be2e44b06b34', '140810130032', '140810130032', '', '2013'),
('958c7f2e-87fb-11e7-bb31-be2e44b06b34', '140810130033', '140810130033', '', '2013'),
('958c8014-87fb-11e7-bb31-be2e44b06b34', '140810130034', '140810130034', '', '2013'),
('958c80e6-87fb-11e7-bb31-be2e44b06b34', '140810130035', '140810130035', '', '2013'),
('958c81ae-87fb-11e7-bb31-be2e44b06b34', '140810130036', '140810130036', '', '2013'),
('958c8276-87fb-11e7-bb31-be2e44b06b34', '140810130037', '140810130037', '', '2013'),
('958c8604-87fb-11e7-bb31-be2e44b06b34', '140810130038', '140810130038', '', '2013'),
('958c8712-87fb-11e7-bb31-be2e44b06b34', '140810130039', '140810130039', '', '2013'),
('958c87d0-87fb-11e7-bb31-be2e44b06b34', '140810130040', '140810130040', '', '2013'),
('958c888e-87fb-11e7-bb31-be2e44b06b34', '140810130041', '140810130041', '', '2013'),
('958c8a6e-87fb-11e7-bb31-be2e44b06b34', '140810130042', '140810130042', '', '2013'),
('958c8b54-87fb-11e7-bb31-be2e44b06b34', '140810130043', '140810130043', '', '2013'),
('958c8c1c-87fb-11e7-bb31-be2e44b06b34', '140810130044', '140810130044', '', '2013'),
('958c9068-87fb-11e7-bb31-be2e44b06b34', '140810130045', '140810130045', '', '2013'),
('958c91ee-87fb-11e7-bb31-be2e44b06b34', '140810130046', '140810130046', '', '2013'),
('958c9374-87fb-11e7-bb31-be2e44b06b34', '140810130047', '140810130047', '', '2013'),
('958c952c-87fb-11e7-bb31-be2e44b06b34', '140810130048', '140810130048', '', '2013'),
('958c9626-87fb-11e7-bb31-be2e44b06b34', '140810130049', '140810130049', '', '2013'),
('958c96ee-87fb-11e7-bb31-be2e44b06b34', '140810130050', '140810130050', '', '2013'),
('958c9acc-87fb-11e7-bb31-be2e44b06b34', '140810130051', '140810130051', '', '2013'),
('958c9bb2-87fb-11e7-bb31-be2e44b06b34', '140810130052', '140810130052', '', '2013'),
('958c9c7a-87fb-11e7-bb31-be2e44b06b34', '140810130053', '140810130053', '', '2013'),
('958c9d42-87fb-11e7-bb31-be2e44b06b34', '140810130054', '140810130054', '', '2013'),
('958c9e00-87fb-11e7-bb31-be2e44b06b34', '140810130055', '140810130055', '', '2013'),
('958c9ebe-87fb-11e7-bb31-be2e44b06b34', '140810130056', '140810130056', '', '2013'),
('958ca5da-87fb-11e7-bb31-be2e44b06b34', '140810130057', '140810130057', '', '2013'),
('958ca90e-87fb-11e7-bb31-be2e44b06b34', '140810130058', '140810130058', '', '2013'),
('958ca9e0-87fb-11e7-bb31-be2e44b06b34', '140810130059', '140810130059', '', '2013'),
('958caaa8-87fb-11e7-bb31-be2e44b06b34', '140810130060', '140810130060', '', '2013'),
('958cab66-87fb-11e7-bb31-be2e44b06b34', '140810130061', '140810130061', '', '2013'),
('958cac24-87fb-11e7-bb31-be2e44b06b34', '140810140001', '140810140001', '', '2014'),
('958cace2-87fb-11e7-bb31-be2e44b06b34', '140810140002', '140810140002', '', '2014'),
('958caff8-87fb-11e7-bb31-be2e44b06b34', '140810140003', '140810140003', '', '2014'),
('958cb0d4-87fb-11e7-bb31-be2e44b06b34', '140810140004', '140810140004', '', '2014'),
('958cb1a6-87fb-11e7-bb31-be2e44b06b34', '140810140005', '140810140005', '', '2014'),
('958cb26e-87fb-11e7-bb31-be2e44b06b34', '140810140006', '140810140006', '', '2014'),
('958cb32c-87fb-11e7-bb31-be2e44b06b34', '140810140007', '140810140007', '', '2014'),
('958cb3f4-87fb-11e7-bb31-be2e44b06b34', '140810140008', '140810140008', '', '2014'),
('958cb4b2-87fb-11e7-bb31-be2e44b06b34', '140810140009', '140810140009', '', '2014'),
('958cb7fa-87fb-11e7-bb31-be2e44b06b34', '140810140010', '140810140010', '', '2014'),
('958cb8cc-87fb-11e7-bb31-be2e44b06b34', '140810140011', '140810140011', '', '2014'),
('958cb994-87fb-11e7-bb31-be2e44b06b34', '140810140012', '140810140012', '', '2014'),
('958cba5c-87fb-11e7-bb31-be2e44b06b34', '140810140013', '140810140013', '', '2014'),
('958cbb1a-87fb-11e7-bb31-be2e44b06b34', '140810140014', '140810140014', '', '2014'),
('958cbbd8-87fb-11e7-bb31-be2e44b06b34', '140810140015', '140810140015', '', '2014'),
('958cbf48-87fb-11e7-bb31-be2e44b06b34', '140810140016', '140810140016', '', '2014'),
('958cc02e-87fb-11e7-bb31-be2e44b06b34', '140810140017', '140810140017', '', '2014'),
('958cc100-87fb-11e7-bb31-be2e44b06b34', '140810140018', '140810140018', '', '2014'),
('958cc1be-87fb-11e7-bb31-be2e44b06b34', '140810140019', '140810140019', '', '2014'),
('958cc27c-87fb-11e7-bb31-be2e44b06b34', '140810140020', '140810140020', '', '2014'),
('958cc344-87fb-11e7-bb31-be2e44b06b34', '140810140021', '140810140021', '', '2014'),
('958cc402-87fb-11e7-bb31-be2e44b06b34', '140810140022', '140810140022', '', '2014'),
('958cc6f0-87fb-11e7-bb31-be2e44b06b34', '140810140023', '140810140023', '', '2014'),
('958cc7cc-87fb-11e7-bb31-be2e44b06b34', '140810140024', '140810140024', '', '2014'),
('958cc894-87fb-11e7-bb31-be2e44b06b34', '140810140025', '140810140025', '', '2014'),
('958cc952-87fb-11e7-bb31-be2e44b06b34', '140810140026', '140810140026', '', '2014'),
('958cca10-87fb-11e7-bb31-be2e44b06b34', '140810140027', '140810140027', '', '2014'),
('958ccace-87fb-11e7-bb31-be2e44b06b34', '140810140028', '140810140028', '', '2014'),
('958ccb8c-87fb-11e7-bb31-be2e44b06b34', '140810140029', '140810140029', '', '2014'),
('958cce98-87fb-11e7-bb31-be2e44b06b34', '140810140030', '140810140030', '', '2014'),
('958ccf7e-87fb-11e7-bb31-be2e44b06b34', '140810140031', '140810140031', '', '2014'),
('958cd03c-87fb-11e7-bb31-be2e44b06b34', '140810140032', '140810140032', '', '2014'),
('958cd0fa-87fb-11e7-bb31-be2e44b06b34', '140810140033', '140810140033', '', '2014'),
('958cd1b8-87fb-11e7-bb31-be2e44b06b34', '140810140034', '140810140034', '', '2014'),
('958cd280-87fb-11e7-bb31-be2e44b06b34', '140810140035', '140810140035', '', '2014'),
('958cd55a-87fb-11e7-bb31-be2e44b06b34', '140810140036', '140810140036', '', '2014'),
('958cd62c-87fb-11e7-bb31-be2e44b06b34', '140810140037', '140810140037', '', '2014'),
('958cd6f4-87fb-11e7-bb31-be2e44b06b34', '140810140038', '140810140038', '', '2014'),
('958cd9f6-87fb-11e7-bb31-be2e44b06b34', '140810140039', '140810140039', '', '2014'),
('958cdb0e-87fb-11e7-bb31-be2e44b06b34', '140810140040', '140810140040', '', '2014'),
('958cdbd6-87fb-11e7-bb31-be2e44b06b34', '140810140041', '140810140041', '', '2014'),
('958cdc9e-87fb-11e7-bb31-be2e44b06b34', '140810140042', '140810140042', '', '2014'),
('958ce05e-87fb-11e7-bb31-be2e44b06b34', '140810140043', '140810140043', '', '2014'),
('958ce14e-87fb-11e7-bb31-be2e44b06b34', '140810140044', '140810140044', '', '2014'),
('958ce20c-87fb-11e7-bb31-be2e44b06b34', '140810140045', '140810140045', '', '2014'),
('958ce2d4-87fb-11e7-bb31-be2e44b06b34', '140810140046', '140810140046', '', '2014'),
('958ce39c-87fb-11e7-bb31-be2e44b06b34', '140810140047', '140810140047', '', '2014'),
('958ce45a-87fb-11e7-bb31-be2e44b06b34', '140810140048', '140810140048', '', '2014'),
('958ce7b6-87fb-11e7-bb31-be2e44b06b34', '140810140049', '140810140049', '', '2014'),
('958ce8a6-87fb-11e7-bb31-be2e44b06b34', '140810140050', '140810140050', '', '2014'),
('958ce978-87fb-11e7-bb31-be2e44b06b34', '140810140051', '140810140051', '', '2014'),
('958cea36-87fb-11e7-bb31-be2e44b06b34', '140810140052', '140810140052', '', '2014'),
('958ceafe-87fb-11e7-bb31-be2e44b06b34', '140810140053', '140810140053', '', '2014'),
('958ced1a-87fb-11e7-bb31-be2e44b06b34', '140810140054', '140810140054', '', '2014'),
('958cedf6-87fb-11e7-bb31-be2e44b06b34', '140810140055', '140810140055', '', '2014'),
('958cf0e4-87fb-11e7-bb31-be2e44b06b34', '140810140056', '140810140056', '', '2014'),
('958cf1ca-87fb-11e7-bb31-be2e44b06b34', '140810140057', '140810140057', '', '2014'),
('958cf292-87fb-11e7-bb31-be2e44b06b34', '140810140058', '140810140058', '', '2014'),
('958cf35a-87fb-11e7-bb31-be2e44b06b34', '140810140059', '140810140059', '', '2014'),
('958cf418-87fb-11e7-bb31-be2e44b06b34', '140810140060', '140810140060', '', '2014'),
('958cf4d6-87fb-11e7-bb31-be2e44b06b34', '140810140061', '140810140061', '', '2014'),
('958cf878-87fb-11e7-bb31-be2e44b06b34', '140810140062', '140810140062', '', '2014'),
('958cf968-87fb-11e7-bb31-be2e44b06b34', '140810140063', '140810140063', '', '2014'),
('958cfa26-87fb-11e7-bb31-be2e44b06b34', '140810140064', '140810140064', '', '2014'),
('958cfaee-87fb-11e7-bb31-be2e44b06b34', '140810140065', '140810140065', '', '2014'),
('958cfbac-87fb-11e7-bb31-be2e44b06b34', '140810140066', '140810140066', '', '2014'),
('958cfc6a-87fb-11e7-bb31-be2e44b06b34', '140810140067', '140810140067', '', '2014'),
('958cfd32-87fb-11e7-bb31-be2e44b06b34', '140810140068', '140810140068', '', '2014'),
('958d012e-87fb-11e7-bb31-be2e44b06b34', '140810140069', '140810140069', '', '2014'),
('958d02e6-87fb-11e7-bb31-be2e44b06b34', '140810140070', '140810140070', '', '2014'),
('958d0476-87fb-11e7-bb31-be2e44b06b34', '140810140071', '140810140071', '', '2014'),
('958d064c-87fb-11e7-bb31-be2e44b06b34', '140810140072', '140810140072', '', '2014'),
('958d07be-87fb-11e7-bb31-be2e44b06b34', '140810150001', '140810150001', '', '2015'),
('958d0926-87fb-11e7-bb31-be2e44b06b34', '140810150002', '140810150002', '', '2015'),
('958d0aa2-87fb-11e7-bb31-be2e44b06b34', '140810150003', '140810150003', '', '2015'),
('958d10c4-87fb-11e7-bb31-be2e44b06b34', '140810150004', '140810150004', '', '2015'),
('958d1240-87fb-11e7-bb31-be2e44b06b34', '140810150005', '140810150005', '', '2015'),
('958d1380-87fb-11e7-bb31-be2e44b06b34', '140810150006', '140810150006', '', '2015'),
('958d14fc-87fb-11e7-bb31-be2e44b06b34', '140810150007', '140810150007', '', '2015'),
('958d1664-87fb-11e7-bb31-be2e44b06b34', '140810150008', '140810150008', '', '2015'),
('958d17cc-87fb-11e7-bb31-be2e44b06b34', '140810150009', '140810150009', '', '2015'),
('958d1cf4-87fb-11e7-bb31-be2e44b06b34', '140810150010', '140810150010', '', '2015'),
('958d1e7a-87fb-11e7-bb31-be2e44b06b34', '140810150011', '140810150011', '', '2015'),
('958d1f4c-87fb-11e7-bb31-be2e44b06b34', '140810150012', '140810150012', '', '2015'),
('958d2014-87fb-11e7-bb31-be2e44b06b34', '140810150013', '140810150013', '', '2015'),
('958d20d2-87fb-11e7-bb31-be2e44b06b34', '140810150014', '140810150014', '', '2015'),
('958d21ae-87fb-11e7-bb31-be2e44b06b34', '140810150015', '140810150015', '', '2015'),
('958d25aa-87fb-11e7-bb31-be2e44b06b34', '140810150016', '140810150016', '', '2015'),
('958d276c-87fb-11e7-bb31-be2e44b06b34', '140810150017', '140810150017', '', '2015'),
('958d291a-87fb-11e7-bb31-be2e44b06b34', '140810150018', '140810150018', '', '2015'),
('958d2a64-87fb-11e7-bb31-be2e44b06b34', '140810150019', '140810150019', '', '2015'),
('958d2b40-87fb-11e7-bb31-be2e44b06b34', '140810150020', '140810150020', '', '2015'),
('958d2c08-87fb-11e7-bb31-be2e44b06b34', '140810150021', '140810150021', '', '2015'),
('958d2db6-87fb-11e7-bb31-be2e44b06b34', '140810150022', '140810150022', '', '2015'),
('958d31bc-87fb-11e7-bb31-be2e44b06b34', '140810150023', '140810150023', '', '2015'),
('958d32a2-87fb-11e7-bb31-be2e44b06b34', '140810150024', '140810150024', '', '2015'),
('958d3374-87fb-11e7-bb31-be2e44b06b34', '140810150025', '140810150025', '', '2015'),
('958d3432-87fb-11e7-bb31-be2e44b06b34', '140810150026', '140810150026', '', '2015'),
('958d34fa-87fb-11e7-bb31-be2e44b06b34', '140810150027', '140810150027', '', '2015'),
('958d35b8-87fb-11e7-bb31-be2e44b06b34', '140810150028', '140810150028', '', '2015'),
('958d3680-87fb-11e7-bb31-be2e44b06b34', '140810150029', '140810150029', '', '2015'),
('958d3a86-87fb-11e7-bb31-be2e44b06b34', '140810150030', '140810150030', '', '2015'),
('958d3b58-87fb-11e7-bb31-be2e44b06b34', '140810150031', '140810150031', '', '2015'),
('958d4166-87fb-11e7-bb31-be2e44b06b34', '140810150032', '140810150032', '', '2015'),
('958d42d8-87fb-11e7-bb31-be2e44b06b34', '140810150033', '140810150033', '', '2015'),
('958d43b4-87fb-11e7-bb31-be2e44b06b34', '140810150034', '140810150034', '', '2015'),
('958d4486-87fb-11e7-bb31-be2e44b06b34', '140810150035', '140810150035', '', '2015'),
('958d483c-87fb-11e7-bb31-be2e44b06b34', '140810150036', '140810150036', '', '2015'),
('958d4922-87fb-11e7-bb31-be2e44b06b34', '140810150037', '140810150037', '', '2015'),
('958d49e0-87fb-11e7-bb31-be2e44b06b34', '140810150038', '140810150038', '', '2015'),
('958d4abc-87fb-11e7-bb31-be2e44b06b34', '140810150039', '140810150039', '', '2015'),
('958d4b8e-87fb-11e7-bb31-be2e44b06b34', '140810150040', '140810150040', '', '2015'),
('958d4c56-87fb-11e7-bb31-be2e44b06b34', '140810150041', '140810150041', '', '2015'),
('958d4d1e-87fb-11e7-bb31-be2e44b06b34', '140810150042', '140810150042', '', '2015'),
('958d502a-87fb-11e7-bb31-be2e44b06b34', '140810150043', '140810150043', '', '2015'),
('958d511a-87fb-11e7-bb31-be2e44b06b34', '140810150044', '140810150044', '', '2015'),
('958d51d8-87fb-11e7-bb31-be2e44b06b34', '140810150045', '140810150045', '', '2015'),
('958d52a0-87fb-11e7-bb31-be2e44b06b34', '140810150046', '140810150046', '', '2015'),
('958d53cc-87fb-11e7-bb31-be2e44b06b34', '140810150047', '140810150047', '', '2015'),
('958d54b2-87fb-11e7-bb31-be2e44b06b34', '140810150048', '140810150048', '', '2015'),
('958d57d2-87fb-11e7-bb31-be2e44b06b34', '140810150049', '140810150049', '', '2015'),
('958d58ae-87fb-11e7-bb31-be2e44b06b34', '140810150050', '140810150050', '', '2015'),
('958d5976-87fb-11e7-bb31-be2e44b06b34', '140810150051', '140810150051', '', '2015'),
('958d5a34-87fb-11e7-bb31-be2e44b06b34', '140810150052', '140810150052', '', '2015'),
('958d5af2-87fb-11e7-bb31-be2e44b06b34', '140810150053', '140810150053', '', '2015'),
('958d5bb0-87fb-11e7-bb31-be2e44b06b34', '140810150054', '140810150054', '', '2015'),
('958d5c6e-87fb-11e7-bb31-be2e44b06b34', '140810150055', '140810150055', '', '2015'),
('958d6006-87fb-11e7-bb31-be2e44b06b34', '140810150056', '140810150056', '', '2015'),
('958d6100-87fb-11e7-bb31-be2e44b06b34', '140810150057', '140810150057', '', '2015'),
('958d61c8-87fb-11e7-bb31-be2e44b06b34', '140810150058', '140810150058', '', '2015'),
('958d6286-87fb-11e7-bb31-be2e44b06b34', '140810150059', '140810150059', '', '2015'),
('958d634e-87fb-11e7-bb31-be2e44b06b34', '140810150060', '140810150060', '', '2015'),
('958d640c-87fb-11e7-bb31-be2e44b06b34', '140810150061', '140810150061', '', '2015'),
('958d677c-87fb-11e7-bb31-be2e44b06b34', '140810150062', '140810150062', '', '2015'),
('958d6862-87fb-11e7-bb31-be2e44b06b34', '140810150063', '140810150063', '', '2015'),
('958d6934-87fb-11e7-bb31-be2e44b06b34', '140810150064', '140810150064', '', '2015'),
('958d69f2-87fb-11e7-bb31-be2e44b06b34', '140810150065', '140810150065', '', '2015'),
('958d6ab0-87fb-11e7-bb31-be2e44b06b34', '140810150066', '140810150066', '', '2015'),
('958d6b6e-87fb-11e7-bb31-be2e44b06b34', '140810150067', '140810150067', '', '2015'),
('958d6c36-87fb-11e7-bb31-be2e44b06b34', '140810150068', '140810150068', '', '2015'),
('958d6fba-87fb-11e7-bb31-be2e44b06b34', '140810150069', '140810150069', '', '2015'),
('958d70b4-87fb-11e7-bb31-be2e44b06b34', '140810150070', '140810150070', '', '2015'),
('958d7172-87fb-11e7-bb31-be2e44b06b34', '140810150071', '140810150071', '', '2015'),
('958d723a-87fb-11e7-bb31-be2e44b06b34', '140810150072', '140810150072', '', '2015'),
('958d72f8-87fb-11e7-bb31-be2e44b06b34', '140810150073', '140810150073', '', '2015'),
('958d73b6-87fb-11e7-bb31-be2e44b06b34', '140810160001', '140810160001', '', '2016'),
('958d747e-87fb-11e7-bb31-be2e44b06b34', '140810160002', '140810160002', '', '2016'),
('958d780c-87fb-11e7-bb31-be2e44b06b34', '140810160003', '140810160003', '', '2016'),
('958d791a-87fb-11e7-bb31-be2e44b06b34', '140810160004', '140810160004', '', '2016'),
('958d7ab4-87fb-11e7-bb31-be2e44b06b34', '140810160005', '140810160005', '', '2016'),
('958d7c30-87fb-11e7-bb31-be2e44b06b34', '140810160006', '140810160006', '', '2016'),
('958d7db6-87fb-11e7-bb31-be2e44b06b34', '140810160007', '140810160007', '', '2016'),
('958d7f0a-87fb-11e7-bb31-be2e44b06b34', '140810160008', '140810160008', '', '2016'),
('958d8054-87fb-11e7-bb31-be2e44b06b34', '140810160009', '140810160009', '', '2016'),
('958d857c-87fb-11e7-bb31-be2e44b06b34', '140810160010', '140810160010', '', '2016'),
('958d869e-87fb-11e7-bb31-be2e44b06b34', '140810160011', '140810160011', '', '2016'),
('958d8766-87fb-11e7-bb31-be2e44b06b34', '140810160012', '140810160012', '', '2016'),
('958d882e-87fb-11e7-bb31-be2e44b06b34', '140810160013', '140810160013', '', '2016'),
('958d8900-87fb-11e7-bb31-be2e44b06b34', '140810160014', '140810160014', '', '2016'),
('958d89c8-87fb-11e7-bb31-be2e44b06b34', '140810160015', '140810160015', '', '2016'),
('958d8a86-87fb-11e7-bb31-be2e44b06b34', '140810160016', '140810160016', '', '2016'),
('958d8f9a-87fb-11e7-bb31-be2e44b06b34', '140810160017', '140810160017', '', '2016'),
('958d909e-87fb-11e7-bb31-be2e44b06b34', '140810160018', '140810160018', '', '2016'),
('958d9166-87fb-11e7-bb31-be2e44b06b34', '140810160019', '140810160019', '', '2016'),
('958d9238-87fb-11e7-bb31-be2e44b06b34', '140810160020', '140810160020', '', '2016'),
('958d9300-87fb-11e7-bb31-be2e44b06b34', '140810160021', '140810160021', '', '2016'),
('958d93c8-87fb-11e7-bb31-be2e44b06b34', '140810160022', '140810160022', '', '2016'),
('958d9486-87fb-11e7-bb31-be2e44b06b34', '140810160023', '140810160023', '', '2016'),
('958d97ce-87fb-11e7-bb31-be2e44b06b34', '140810160024', '140810160024', '', '2016'),
('958d98a0-87fb-11e7-bb31-be2e44b06b34', '140810160025', '140810160025', '', '2016'),
('958d9968-87fb-11e7-bb31-be2e44b06b34', '140810160026', '140810160026', '', '2016'),
('958d9a30-87fb-11e7-bb31-be2e44b06b34', '140810160027', '140810160027', '', '2016'),
('958d9aee-87fb-11e7-bb31-be2e44b06b34', '140810160028', '140810160028', '', '2016'),
('958d9bb6-87fb-11e7-bb31-be2e44b06b34', '140810160029', '140810160029', '', '2016'),
('958d9c74-87fb-11e7-bb31-be2e44b06b34', '140810160030', '140810160030', '', '2016'),
('958da016-87fb-11e7-bb31-be2e44b06b34', '140810160031', '140810160031', '', '2016'),
('958da0de-87fb-11e7-bb31-be2e44b06b34', '140810160032', '140810160032', '', '2016'),
('958da20a-87fb-11e7-bb31-be2e44b06b34', '140810160033', '140810160033', '', '2016'),
('958da2e6-87fb-11e7-bb31-be2e44b06b34', '140810160034', '140810160034', '', '2016'),
('958da3ae-87fb-11e7-bb31-be2e44b06b34', '140810160035', '140810160035', '', '2016'),
('958da480-87fb-11e7-bb31-be2e44b06b34', '140810160036', '140810160036', '', '2016'),
('958da818-87fb-11e7-bb31-be2e44b06b34', '140810160037', '140810160037', '', '2016'),
('958da908-87fb-11e7-bb31-be2e44b06b34', '140810160038', '140810160038', '', '2016'),
('958dabf6-87fb-11e7-bb31-be2e44b06b34', '140810160039', '140810160039', '', '2016'),
('958dad22-87fb-11e7-bb31-be2e44b06b34', '140810160040', '140810160040', '', '2016'),
('958dadf4-87fb-11e7-bb31-be2e44b06b34', '140810160041', '140810160041', '', '2016'),
('958daebc-87fb-11e7-bb31-be2e44b06b34', '140810160042', '140810160042', '', '2016'),
('958daf84-87fb-11e7-bb31-be2e44b06b34', '140810160043', '140810160043', '', '2016'),
('958db362-87fb-11e7-bb31-be2e44b06b34', '140810160044', '140810160044', '', '2016'),
('958db452-87fb-11e7-bb31-be2e44b06b34', '140810160045', '140810160045', '', '2016'),
('958db51a-87fb-11e7-bb31-be2e44b06b34', '140810160046', '140810160046', '', '2016'),
('958db5d8-87fb-11e7-bb31-be2e44b06b34', '140810160047', '140810160047', '', '2016'),
('958db6b4-87fb-11e7-bb31-be2e44b06b34', '140810160048', '140810160048', '', '2016'),
('958db77c-87fb-11e7-bb31-be2e44b06b34', '140810160049', '140810160049', '', '2016'),
('958db844-87fb-11e7-bb31-be2e44b06b34', '140810160050', '140810160050', '', '2016'),
('958dbc22-87fb-11e7-bb31-be2e44b06b34', '140810160051', '140810160051', '', '2016'),
('958dbcfe-87fb-11e7-bb31-be2e44b06b34', '140810160052', '140810160052', '', '2016'),
('958dbdd0-87fb-11e7-bb31-be2e44b06b34', '140810160053', '140810160053', '', '2016'),
('958dbe98-87fb-11e7-bb31-be2e44b06b34', '140810160054', '140810160054', '', '2016'),
('958dbf60-87fb-11e7-bb31-be2e44b06b34', '140810160055', '140810160055', '', '2016'),
('958dcb54-87fb-11e7-bb31-be2e44b06b34', '140810160056', '140810160056', '', '2016'),
('958dd00e-87fb-11e7-bb31-be2e44b06b34', '140810160057', '140810160057', '', '2016'),
('958dd126-87fb-11e7-bb31-be2e44b06b34', '140810160058', '140810160058', '', '2016'),
('958dd1ee-87fb-11e7-bb31-be2e44b06b34', '140810160059', '140810160059', '', '2016'),
('958dd2c0-87fb-11e7-bb31-be2e44b06b34', '140810160060', '140810160060', '', '2016'),
('958dd388-87fb-11e7-bb31-be2e44b06b34', '140810160061', '140810160061', '', '2016'),
('958dd450-87fb-11e7-bb31-be2e44b06b34', '140810160062', '140810160062', '', '2016'),
('958dd522-87fb-11e7-bb31-be2e44b06b34', '140810160063', '140810160063', '', '2016'),
('958dd87e-87fb-11e7-bb31-be2e44b06b34', '140810160064', '140810160064', '', '2016'),
('958dd96e-87fb-11e7-bb31-be2e44b06b34', '140810160065', '140810160065', '', '2016'),
('958dda40-87fb-11e7-bb31-be2e44b06b34', '140810160066', '140810160066', '', '2016'),
('958ddafe-87fb-11e7-bb31-be2e44b06b34', '140810160067', '140810160067', '', '2016'),
('958ddbc6-87fb-11e7-bb31-be2e44b06b34', '140810167001', '140810167001', '', '2016'),
('958ddc84-87fb-11e7-bb31-be2e44b06b34', '140810170001', '140810170001', '', '2017'),
('958ddd4c-87fb-11e7-bb31-be2e44b06b34', '140810170002', '140810170002', '', '2017'),
('958de1f2-87fb-11e7-bb31-be2e44b06b34', '140810170003', '140810170003', '', '2017'),
('958de332-87fb-11e7-bb31-be2e44b06b34', '140810170004', '140810170004', '', '2017'),
('958de418-87fb-11e7-bb31-be2e44b06b34', '140810170005', '140810170005', '', '2017'),
('958de54e-87fb-11e7-bb31-be2e44b06b34', '140810170006', '140810170006', '', '2017'),
('958de648-87fb-11e7-bb31-be2e44b06b34', '140810170007', '140810170007', '', '2017'),
('958de724-87fb-11e7-bb31-be2e44b06b34', '140810170008', '140810170008', '', '2017'),
('958de7ec-87fb-11e7-bb31-be2e44b06b34', '140810170009', '140810170009', '', '2017'),
('958deb66-87fb-11e7-bb31-be2e44b06b34', '140810170010', '140810170010', '', '2017'),
('958dec42-87fb-11e7-bb31-be2e44b06b34', '140810170011', '140810170011', '', '2017'),
('958ded1e-87fb-11e7-bb31-be2e44b06b34', '140810170012', '140810170012', '', '2017'),
('958dede6-87fb-11e7-bb31-be2e44b06b34', '140810170013', '140810170013', '', '2017'),
('958deeb8-87fb-11e7-bb31-be2e44b06b34', '140810170014', '140810170014', '', '2017'),
('958defee-87fb-11e7-bb31-be2e44b06b34', '140810170015', '140810170015', '', '2017'),
('958df32c-87fb-11e7-bb31-be2e44b06b34', '140810170016', '140810170016', '', '2017'),
('958df412-87fb-11e7-bb31-be2e44b06b34', '140810170017', '140810170017', '', '2017'),
('958df4e4-87fb-11e7-bb31-be2e44b06b34', '140810170018', '140810170018', '', '2017'),
('958df61a-87fb-11e7-bb31-be2e44b06b34', '140810170019', '140810170019', '', '2017'),
('958df778-87fb-11e7-bb31-be2e44b06b34', '140810170020', '140810170020', '', '2017'),
('958df8ea-87fb-11e7-bb31-be2e44b06b34', '140810170021', '140810170021', '', '2017'),
('958dfa8e-87fb-11e7-bb31-be2e44b06b34', '140810170022', '140810170022', '', '2017'),
('958e0024-87fb-11e7-bb31-be2e44b06b34', '140810170023', '140810170023', '', '2017'),
('958e020e-87fb-11e7-bb31-be2e44b06b34', '140810170024', '140810170024', '', '2017'),
('958e038a-87fb-11e7-bb31-be2e44b06b34', '140810170025', '140810170025', '', '2017'),
('958e0466-87fb-11e7-bb31-be2e44b06b34', '140810170026', '140810170026', '', '2017'),
('958e0542-87fb-11e7-bb31-be2e44b06b34', '140810170027', '140810170027', '', '2017'),
('958e0614-87fb-11e7-bb31-be2e44b06b34', '140810170028', '140810170028', '', '2017'),
('958e06e6-87fb-11e7-bb31-be2e44b06b34', '140810170029', '140810170029', '', '2017'),
('958e09de-87fb-11e7-bb31-be2e44b06b34', '140810170030', '140810170030', '', '2017'),
('958e0ac4-87fb-11e7-bb31-be2e44b06b34', '140810170031', '140810170031', '', '2017'),
('958e0b8c-87fb-11e7-bb31-be2e44b06b34', '140810170032', '140810170032', '', '2017'),
('958e0c5e-87fb-11e7-bb31-be2e44b06b34', '140810170033', '140810170033', '', '2017'),
('958e0d30-87fb-11e7-bb31-be2e44b06b34', '140810170034', '140810170034', '', '2017'),
('958e0df8-87fb-11e7-bb31-be2e44b06b34', '140810170035', '140810170035', '', '2017'),
('958e0eca-87fb-11e7-bb31-be2e44b06b34', '140810170036', '140810170036', '', '2017'),
('958e1488-87fb-11e7-bb31-be2e44b06b34', '140810170037', '140810170037', '', '2017'),
('958e1582-87fb-11e7-bb31-be2e44b06b34', '140810170038', '140810170038', '', '2017'),
('958e1654-87fb-11e7-bb31-be2e44b06b34', '140810170039', '140810170039', '', '2017'),
('958e1780-87fb-11e7-bb31-be2e44b06b34', '140810170040', '140810170040', '', '2017'),
('958e185c-87fb-11e7-bb31-be2e44b06b34', '140810170041', '140810170041', '', '2017'),
('958e1924-87fb-11e7-bb31-be2e44b06b34', '140810170042', '140810170042', '', '2017'),
('958e1cb2-87fb-11e7-bb31-be2e44b06b34', '140810170043', '140810170043', '', '2017'),
('958e1db6-87fb-11e7-bb31-be2e44b06b34', '140810170044', '140810170044', '', '2017'),
('958e1e88-87fb-11e7-bb31-be2e44b06b34', '140810170045', '140810170045', '', '2017'),
('958e1f5a-87fb-11e7-bb31-be2e44b06b34', '140810170046', '140810170046', '', '2017'),
('958e2022-87fb-11e7-bb31-be2e44b06b34', '140810170047', '140810170047', '', '2017'),
('958e20fe-87fb-11e7-bb31-be2e44b06b34', '140810170048', '140810170048', '', '2017'),
('958e21d0-87fb-11e7-bb31-be2e44b06b34', '140810170049', '140810170049', '', '2017'),
('958e252c-87fb-11e7-bb31-be2e44b06b34', '140810170050', '140810170050', '', '2017'),
('958e261c-87fb-11e7-bb31-be2e44b06b34', '140810170051', '140810170051', '', '2017'),
('958e26ee-87fb-11e7-bb31-be2e44b06b34', '140810170052', '140810170052', '', '2017'),
('958e27c0-87fb-11e7-bb31-be2e44b06b34', '140810170053', '140810170053', '', '2017'),
('958e2892-87fb-11e7-bb31-be2e44b06b34', '140810170054', '140810170054', '', '2017'),
('958e296e-87fb-11e7-bb31-be2e44b06b34', '140810170055', '140810170055', '', '2017'),
('958e2a40-87fb-11e7-bb31-be2e44b06b34', '140810170056', '140810170056', '', '2017'),
('958e2dba-87fb-11e7-bb31-be2e44b06b34', '140810170057', '140810170057', '', '2017'),
('958e2ea0-87fb-11e7-bb31-be2e44b06b34', '140810170058', '140810170058', '', '2017'),
('958e2f72-87fb-11e7-bb31-be2e44b06b34', '140810170059', '140810170059', '', '2017'),
('958e303a-87fb-11e7-bb31-be2e44b06b34', '140810170060', '140810170060', '', '2017'),
('958e310c-87fb-11e7-bb31-be2e44b06b34', '140810170061', '140810170061', '', '2017'),
('958e31de-87fb-11e7-bb31-be2e44b06b34', '140810170062', '140810170062', '', '2017'),
('958e3508-87fb-11e7-bb31-be2e44b06b34', '140810170063', '140810170063', '', '2017'),
('958e35ee-87fb-11e7-bb31-be2e44b06b34', '140810170064', '140810170064', '', '2017'),
('958e36c0-87fb-11e7-bb31-be2e44b06b34', '140810170065', '140810170065', '', '2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id_bk`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `kuis_bk`
--
ALTER TABLE `kuis_bk`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `npm_maba` (`npm_maba`);

--
-- Indexes for table `kuis_panitia`
--
ALTER TABLE `kuis_panitia`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `npm_maba` (`npm_maba`);

--
-- Indexes for table `panitia`
--
ALTER TABLE `panitia`
  ADD PRIMARY KEY (`id_panitia`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `perkenalan_angkatan`
--
ALTER TABLE `perkenalan_angkatan`
  ADD PRIMARY KEY (`id_perkenalan_angkatan`),
  ADD KEY `id_user1` (`id_user1`),
  ADD KEY `id_user2` (`id_user2`);

--
-- Indexes for table `perkenalan_kating`
--
ALTER TABLE `perkenalan_kating`
  ADD PRIMARY KEY (`id_perkenalan_kating`),
  ADD KEY `id_user_maba` (`id_user_maba`),
  ADD KEY `id_user_kating` (`id_user_kating`);

--
-- Indexes for table `profile_kating`
--
ALTER TABLE `profile_kating`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `profile_maba`
--
ALTER TABLE `profile_maba`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `npm` (`npm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id_bk` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuis_bk`
--
ALTER TABLE `kuis_bk`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuis_panitia`
--
ALTER TABLE `kuis_panitia`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panitia`
--
ALTER TABLE `panitia`
  MODIFY `id_panitia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perkenalan_angkatan`
--
ALTER TABLE `perkenalan_angkatan`
  MODIFY `id_perkenalan_angkatan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perkenalan_kating`
--
ALTER TABLE `perkenalan_kating`
  MODIFY `id_perkenalan_kating` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bk`
--
ALTER TABLE `bk`
  ADD CONSTRAINT `bk_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `users` (`npm`);

--
-- Constraints for table `kuis_bk`
--
ALTER TABLE `kuis_bk`
  ADD CONSTRAINT `kuis_bk_ibfk_1` FOREIGN KEY (`npm_maba`) REFERENCES `users` (`npm`);

--
-- Constraints for table `kuis_panitia`
--
ALTER TABLE `kuis_panitia`
  ADD CONSTRAINT `kuis_panitia_ibfk_1` FOREIGN KEY (`npm_maba`) REFERENCES `users` (`npm`);

--
-- Constraints for table `panitia`
--
ALTER TABLE `panitia`
  ADD CONSTRAINT `panitia_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `users` (`npm`);

--
-- Constraints for table `perkenalan_angkatan`
--
ALTER TABLE `perkenalan_angkatan`
  ADD CONSTRAINT `perkenalan_angkatan_ibfk_1` FOREIGN KEY (`id_user1`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `perkenalan_angkatan_ibfk_2` FOREIGN KEY (`id_user2`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `perkenalan_kating`
--
ALTER TABLE `perkenalan_kating`
  ADD CONSTRAINT `perkenalan_kating_ibfk_1` FOREIGN KEY (`id_user_maba`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `perkenalan_kating_ibfk_2` FOREIGN KEY (`id_user_kating`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `profile_kating`
--
ALTER TABLE `profile_kating`
  ADD CONSTRAINT `profile_kating_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `profile_maba`
--
ALTER TABLE `profile_maba`
  ADD CONSTRAINT `profile_maba_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
