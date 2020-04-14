-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 06:23 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_politala`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(200) NOT NULL,
  `verifikasi` int(1) NOT NULL,
  `code_verif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `nama`, `email`, `password`, `verifikasi`, `code_verif`) VALUES
('admin', 'Admin Test 10', 'vectropolitan@gmail.com', '$2y$10$UIFMFR50WLby4r3Ypqvy5u08MWiyCWvOtIWhFulHPV1RXe03jQKvG', 1, '21232f297a57a5a743894a0e4a801fc3'),
('admin2', 'Admin 2', 'ilhamfadlee@gmail.com', '$2y$10$NRSZdUU/6Q8Lg.St.jbWfeuGkf.bfM9VT5f7wgJZL.Q4qHNBhDH4G', 1, 'c84258e9c39059a89ab77d846ddab909');

-- --------------------------------------------------------

--
-- Table structure for table `admin_auth`
--

CREATE TABLE `admin_auth` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_auth`
--

INSERT INTO `admin_auth` (`id`, `code`) VALUES
(1, '$2y$10$MLLulwDv3vRU7saDIEID2uS6woApY/YUeACpC4qfrGh9NGsE/Ccyu'),
(2, '$2y$10$9tw1/3IzZJY2vADditvhxeA4oyoVTqwUvXlmf0QbTEDpr9JaTOfUK'),
(3, '$2y$10$c15ceIMf5eP46D4wMKDDteZkiZT4315hRWGfWAJcOybGPhy22HfE2'),
(4, '$2y$10$6jM.FiTnhsszhVpoOIh2zeTTE6DR.wLP69om8uqv8Et7/F9ROQPC.');

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_kpum`
--

CREATE TABLE `dokumentasi_kpum` (
  `id` int(4) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tipe` int(1) NOT NULL,
  `src` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_pemilihan`
--

CREATE TABLE `dokumentasi_pemilihan` (
  `id` int(4) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tipe` int(1) NOT NULL,
  `src` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumentasi_pemilihan`
--

INSERT INTO `dokumentasi_pemilihan` (`id`, `tahun`, `tipe`, `src`, `file`) VALUES
(1, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-1.jpg'),
(2, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-2.jpg'),
(3, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-3.jpg'),
(4, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-4.jpg'),
(5, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-5.jpg'),
(6, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-6.jpg'),
(7, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-7.jpg'),
(8, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-8.jpg'),
(9, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-9.jpg'),
(10, 2019, 0, 'assets/voting_assets/image/dokumentasi/2019/', 'doc-10.jpg'),
(11, 2019, 1, 'assets/voting_assets/video/', 'doc-1.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `kpum`
--

CREATE TABLE `kpum` (
  `tahun` int(4) NOT NULL,
  `struktur_kepengurusan` varchar(150) NOT NULL,
  `visi` varchar(150) NOT NULL,
  `misi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpum`
--

INSERT INTO `kpum` (`tahun`, `struktur_kepengurusan`, `visi`, `misi`) VALUES
(2015, 'assets/voting_assets/image/kpum/2015/struktur.jpg', 'assets/voting_assets/image/kpum/2015/visi.jpg', 'assets/voting_assets/image/kpum/2015/misi.jpg'),
(2016, 'assets/voting_assets/image/kpum/2016/struktur.jpg', 'assets/voting_assets/image/kpum/2016/visi.jpg', 'assets/voting_assets/image/kpum/2016/misi.jpg'),
(2017, 'assets/voting_assets/image/kpum/2017/struktur.jpg', 'assets/voting_assets/image/kpum/2017/visi.jpg', 'assets/voting_assets/image/kpum/2017/misi.jpg'),
(2018, 'assets/voting_assets/image/kpum/2018/struktur.jpg', 'assets/voting_assets/image/kpum/2018/visi.jpg', 'assets/voting_assets/image/kpum/2018/misi.jpg'),
(2019, 'assets/voting_assets/image/kpum/2019/struktur.jpg', 'assets/voting_assets/image/kpum/2019/visi.jpg', 'assets/voting_assets/image/kpum/2019/misi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `status` varchar(11) NOT NULL,
  `status_value` int(1) NOT NULL,
  `angkatan` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `semester`, `kelas`, `status`, `status_value`, `angkatan`) VALUES
('A1314004', 'AKHMAD MAULANA', 'VI', '6C', 'Aktif', 1, 2017),
('A1314005', 'AKHMAD RIFQI NIZHOMI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315001', 'ACHMAT FATHORROZI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315002', 'ADETIA NAFARIN', 'VI', '6C', 'Aktif', 1, 2017),
('A1315003', 'AFRILIANTI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315004', 'AGUS KRESTIAWAN', 'VI', '6C', 'Aktif', 1, 2017),
('A1315005', 'AHLUN NASIR', 'VI', '6B', 'Aktif', 1, 2017),
('A1315007', 'AHMAD NAWAWI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315008', 'ALFI OKTAVIIASARI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315010', 'AMALIA NURUL HASANAH', 'VI', '6A', 'Aktif', 1, 2017),
('A1315011', 'AMELIA RAHMI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315012', 'AMILIA CAHYA DEWI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315013', 'ANDI PRADANA', 'VI', '6B', 'Aktif', 1, 2017),
('A1315014', 'ANDY MARDIANTO', 'VI', '6A', 'Aktif', 1, 2017),
('A1315015', 'ANETA RUSMILAWATI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315016', 'ANISA ZULIA MUNIFAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315017', 'ANITA', 'VI', '6A', 'Tidak Aktif', 0, 2017),
('A1315018', 'ANTUNG MUKHLISIN', 'VI', '6B', 'Aktif', 1, 2017),
('A1315019', 'ARIP RAHMAN HAKIM', 'VI', '6B', 'Aktif', 1, 2017),
('A1315020', 'ASMILIA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315021', 'AULIA HELDAYANI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315022', 'DENNY YUNIZHAR', 'VI', '6C', 'Aktif', 1, 2017),
('A1315023', 'DEZAN PRATAMA ARYASANDY', 'VI', '6A', 'Aktif', 1, 2017),
('A1315024', 'DHEA MUTIA ANUGERAH', 'VI', '6B', 'Aktif', 1, 2017),
('A1315025', 'DIAS ANGGRAENI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315026', 'DINNY KARTIKA SARI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315027', 'EKO AGUNG IMANTO', 'VI', '6A', 'Aktif', 1, 2017),
('A1315028', 'ELISA DWI ARISNA', 'VI', '6B', 'Aktif', 1, 2017),
('A1315029', 'ELITA MULYANINGRUM', 'VI', '6A', 'Aktif', 1, 2017),
('A1315030', 'EVII ERNAWATI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315031', 'FARIDAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315033', 'HANAFI RATMI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315034', 'HASMILAWATI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315035', 'HETI NINGTIAS', 'VI', '6B', 'Aktif', 1, 2017),
('A1315036', 'HIFZIATUL QIFTIYAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315038', 'INDAH MAULIDA', 'VI', '6B', 'Aktif', 1, 2017),
('A1315039', 'INDRA ROYANA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315040', 'JOKO SUTOPO', 'VI', '6A', 'Aktif', 1, 2017),
('A1315041', 'JUMRANI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315042', 'KAMARIAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315043', 'KARLINA HASTANTI EFFENDI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315045', 'LASTRIANI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315046', 'LIA KUMALA SARI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315047', 'LIDYA PERMATA SARI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315048', 'LINI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315049', 'LUTFI MAGFIROH DENI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315050', 'M. ALFIN RINALDI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315051', 'M. HARY KURNIAWAN', 'VI', '6C', 'Aktif', 1, 2017),
('A1315052', 'MAHFUZAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315053', 'MAIDANI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315054', 'MERRY MARTINI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315055', 'META NUARIDA ROMADONA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315056', 'MINA FARIDA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315057', 'MUHAMMAD ASPIHANI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315058', 'MUHAMMAD FAISAL RIZAL', 'VI', '6B', 'Aktif', 1, 2017),
('A1315059', 'MUHAMMAD HARIS', 'VI', '6B', 'Aktif', 1, 2017),
('A1315060', 'MUHAMMAD RIZANI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315061', 'MUHAMMAD RUSYADI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315063', 'MUKHOFIFIN AKHYANI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315064', 'MUKTI CAHYONO PUTRA', 'VI', '6B', 'Aktif', 1, 2017),
('A1315065', 'MUNAWARAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1315066', 'NOOR ANNISYA', 'VI', '6C', 'Aktif', 1, 2017),
('A1315067', 'NOR RIZKI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315068', 'NORA APRILIYANI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315069', 'NORHIDAYAT', 'VI', '6A', 'Aktif', 1, 2017),
('A1315070', 'NORMELA', 'VI', '6C', 'Aktif', 1, 2017),
('A1315071', 'NUR ANNIDA', 'VI', '6C', 'Aktif', 1, 2017),
('A1315072', 'NUR VIINANDARI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315073', 'NURLITA FEBRIANA PRATIWI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315074', 'NURSAFARIANTI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315075', 'NURUL HIKMAH', 'VI', '6B', 'Aktif', 1, 2017),
('A1315076', 'PRADIKA ARI RAMADANI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315077', 'RESA ISTIANINGSIH', 'VI', '6B', 'Aktif', 1, 2017),
('A1315078', 'RISDA YANTI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315080', 'RIZAL NUUR HEMA', 'VI', '6C', 'Aktif', 1, 2017),
('A1315081', 'RIZKY AMALIA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315082', 'ROBBY JUNIARDI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315083', 'ROSIE PUSPITA EDENI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315084', 'SAFAR', 'VI', '6C', 'Aktif', 1, 2017),
('A1315085', 'SAHRIANI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315086', 'SALFITRI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315087', 'SAMLIYAH', 'VI', '6A', 'Aktif', 1, 2017),
('A1315088', 'SARI MADINAH', 'VI', '6A', 'Aktif', 1, 2017),
('A1315089', 'SARIATI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315090', 'SETIARINI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315091', 'SHINTA DWI PRATIWI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315092', 'SITI ALFIA RAHMAWATI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315093', 'SITI SA\'ADAH', 'VI', '6B', 'Aktif', 1, 2017),
('A1315094', 'SRI LESTARI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315095', 'SYARIFAH ALAWIYAH', 'VI', '6A', 'Aktif', 1, 2017),
('A1315096', 'SYLVIIA TANTINA SETYA NINGRUM', 'VI', '6A', 'Aktif', 1, 2017),
('A1315097', 'TIYAS NUR RISKY', 'VI', '6B', 'Aktif', 1, 2017),
('A1315098', 'TRI MURTI NINGSIH', 'VI', '6B', 'Aktif', 1, 2017),
('A1315099', 'UCI TRI UTAMI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315100', 'UMI HANI', 'VI', '6A', 'Aktif', 1, 2017),
('A1315103', 'WIAN ARISTANTIA RINI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315104', 'WIDIYANTI', 'VI', '6C', 'Aktif', 1, 2017),
('A1315105', 'WIDYA ROSALINA', 'VI', '6C', 'Aktif', 1, 2017),
('A1315106', 'WINDIYANI', 'VI', '6B', 'Aktif', 1, 2017),
('A1315107', 'YOGI RAHMAT PRAYOGO', 'VI', '6B', 'Aktif', 1, 2017),
('A1315108', 'YULIA AGUSTINA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315109', 'YULIANA', 'VI', '6A', 'Aktif', 1, 2017),
('A1315110', 'YUNISKA FITHRIYYAH', 'VI', '6C', 'Aktif', 1, 2017),
('A1316002', 'AFRIZAL HABIBI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316003', 'AGUNG PRATAMA YULIANTO', 'IV', '4A', 'Aktif', 1, 2018),
('A1316004', 'AHMAD FADILLAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316005', 'AHMAD GAPURI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316006', 'AHMAD NAWAWI', 'IV', '4C', 'Aktif', 1, 2018),
('A1316007', 'AKHMAD HABIBIE', 'IV', '4B', 'Aktif', 1, 2018),
('A1316008', 'ALDANIA RHIYANTI TAMBAY', 'IV', '4A', 'Aktif', 1, 2018),
('A1316009', 'ALIVIIA AGIESTA NOVIITASARI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316010', 'AMALIA WANDA AGUSTIN', 'IV', '4B', 'Aktif', 1, 2018),
('A1316011', 'AMANDA IKA ADISTYA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316012', 'APRILIYANA', 'IV', '4C', 'Aktif', 1, 2018),
('A1316013', 'ARIEF MAHDI', 'IV', '4C', 'Aktif', 1, 2018),
('A1316014', 'ARIYATI LESTARI', 'IV', '4C', 'Aktif', 1, 2018),
('A1316017', 'AYU FARADILLAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316018', 'BONIFASIUS TANDI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316020', 'CATUR YUDA PRATAMA', 'IV', '4C', 'Aktif', 1, 2018),
('A1316021', 'DANAR WIDI UTOMO', 'IV', '4C', 'Aktif', 1, 2018),
('A1316022', 'DENDY KRISNADI SAPUTRA', 'IV', '4C', 'Aktif', 1, 2018),
('A1316026', 'EKA WULAN SARI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316028', 'EMILIYANA VIARIDA SHOLEHAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316030', 'ERNI WIDIYA WATI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316031', 'FADEL MUHAMMAD', 'IV', '4A', 'Aktif', 1, 2018),
('A1316033', 'FATHUL JANNAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316035', 'GUSTI MUHAMMAD SYAFII ARRIDHANI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316036', 'HAFIZ ANSARI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316037', 'HANDIKA', 'IV', '4C', 'Aktif', 1, 2018),
('A1316038', 'HARYATI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316039', 'HERIYANTI', 'IV', '4C', 'Aktif', 1, 2018),
('A1316041', 'HERRY SULISTIA HADIKUSUMA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316044', 'ISABELLA YULINSHIA CITRA VIALENTINA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316046', 'JULIAN RIVIALDO MENTENG', 'IV', '4A', 'Aktif', 1, 2018),
('A1316047', 'KADARIYAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316048', 'KURLINASARI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316050', 'LISA FITRIA', 'IV', '4B', 'Aktif', 1, 2018),
('A1316052', 'M. FAHRIAL AGUSTIAN', 'IV', '4A', 'Aktif', 1, 2018),
('A1316055', 'MAHATHIR IBRAHIM', 'IV', '4A', 'Aktif', 1, 2018),
('A1316058', 'MASA EXGELIA DIRHAYU SEPTA RUMA SINTIA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316059', 'MESAYU YUNIZA PUTRI WAHYUDI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316060', 'MIFTAHUL KHAIR', 'IV', '4B', 'Aktif', 1, 2018),
('A1316062', 'MUHAMAD EGA NABHAN', 'IV', '4A', 'Aktif', 1, 2018),
('A1316063', 'MUHAMAD KASTALANI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316064', 'MUHAMMAD ASRORRI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316065', 'MUHAMMAD FADLY RAMADHANA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316066', 'MUHAMMAD FAJAR', 'IV', '4B', 'Aktif', 1, 2018),
('A1316067', 'MUHAMMAD FAJAR BASKHARA', 'IV', '4B', 'Aktif', 1, 2018),
('A1316068', 'MUHAMMAD MASYHURI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316071', 'MUHAMMAD RIFQI RIZHANI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316072', 'MUHAMMAD RIZALDI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316074', 'MUHAMMAD SABANI ACKBAR', 'IV', '4B', 'Aktif', 1, 2018),
('A1316081', 'NANA RUSANA', 'IV', '4B', 'Aktif', 1, 2018),
('A1316083', 'NIA SORAYA', 'IV', '4A', 'Aktif', 1, 2018),
('A1316091', 'PARIDA HASANAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316093', 'RABIATUL ADAWIYAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316094', 'RAHMA NURHAMISAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316096', 'RAKHMILAWATI FAZNUR', 'IV', '4B', 'Aktif', 1, 2018),
('A1316105', 'RIZAL ISKANDAR AL UBAIDAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316107', 'RIZKI HIDAYATULLAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316109', 'RUSIDA RIYANI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316111', 'SAMSIATUL ASRIYAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316113', 'SEPTI SAPUTRI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316114', 'SITI HOTIMAH', 'IV', '4B', 'Aktif', 1, 2018),
('A1316115', 'SITI NUR HALISAH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316117', 'SRI MULYATI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316119', 'SULAIMAN', 'IV', '4A', 'Aktif', 1, 2018),
('A1316123', 'UNI PRATIWI', 'IV', '4A', 'Aktif', 1, 2018),
('A1316124', 'UTAMI RAHAYU NINGSIH', 'IV', '4A', 'Aktif', 1, 2018),
('A1316126', 'WULANDARI', 'IV', '4B', 'Aktif', 1, 2018),
('A1316128', 'YURICE BUNTU', 'IV', '4A', 'Aktif', 1, 2018),
('A1316129', 'YURISMA BAIHAQI', 'IV', '4B', 'Aktif', 1, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `paslon`
--

CREATE TABLE `paslon` (
  `no_urut` int(2) NOT NULL,
  `presma` varchar(50) NOT NULL,
  `wapresma` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `visi` varchar(100) NOT NULL,
  `misi` varchar(100) NOT NULL,
  `jumlah_pemilih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paslon`
--

INSERT INTO `paslon` (`no_urut`, `presma`, `wapresma`, `foto`, `visi`, `misi`, `jumlah_pemilih`) VALUES
(1, 'A1315020', 'A1315022', 'assets/voting_assets/image/paslon/foto/01.jpg', 'assets/voting_assets/image/paslon/visi/01.jpg', 'assets/voting_assets/image/paslon/misi/01.jpg', 37),
(2, 'A1315014', 'A1315017', 'assets/voting_assets/image/paslon/foto/02.jpg', 'assets/voting_assets/image/paslon/visi/02.jpg', 'assets/voting_assets/image/paslon/visi/02.jpg', 58),
(3, 'A1315023', 'A1315004', 'assets/voting_assets/image/paslon/foto/03.jpg', 'assets/voting_assets/image/paslon/visi/03.jpg', 'assets/voting_assets/image/paslon/visi/03.jpg', 123);

-- --------------------------------------------------------

--
-- Table structure for table `pencoblos`
--

CREATE TABLE `pencoblos` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(23) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `password` varchar(200) NOT NULL,
  `verifikasi` int(1) NOT NULL,
  `paslon_pilihan` int(2) NOT NULL,
  `code_verif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pencoblos`
--

INSERT INTO `pencoblos` (`nim`, `nama`, `email`, `jurusan`, `angkatan`, `password`, `verifikasi`, `paslon_pilihan`, `code_verif`) VALUES
('A1314004', 'AKHMAD MAULANA', 'vectropolitan@gmail.com', 'Sistem Komputer', 2017, '$2y$10$HXGiCCiOZga1Yx8aEbYTOepQ31qY8lBlZKhc6herU0NPJZpg1S7G6', 1, 0, 'ab6e2021f478dd5d8d6c101f8f1797f2'),
('A1315015', 'ANETA RUSMILAWATI', 'ilhamfadlee@gmail.com', 'Teknik Informatika', 2017, '$2y$10$.boo8H5WtjFOU7EJtU5oPO/fIWRV7BCY2yJmFeHwnBGbXxSxxBrAu', 1, 0, '1034e8fe86895d5653f4194fd9e0642d');

-- --------------------------------------------------------

--
-- Table structure for table `pending_paslon`
--

CREATE TABLE `pending_paslon` (
  `id` int(11) NOT NULL,
  `nim_presma` varchar(100) NOT NULL,
  `nim_wapresma` varchar(100) NOT NULL,
  `nama_presma` varchar(100) NOT NULL,
  `nama_wapresma` varchar(100) NOT NULL,
  `email_presma` varchar(100) NOT NULL,
  `email_wapresma` varchar(100) NOT NULL,
  `jurusan_presma` varchar(100) NOT NULL,
  `jurusan_wapresma` varchar(100) NOT NULL,
  `angkatan_presma` varchar(100) NOT NULL,
  `angkatan_wapresma` varchar(100) NOT NULL,
  `berkas_presma` varchar(100) NOT NULL,
  `berkas_wapresma` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_paslon`
--

INSERT INTO `pending_paslon` (`id`, `nim_presma`, `nim_wapresma`, `nama_presma`, `nama_wapresma`, `email_presma`, `email_wapresma`, `jurusan_presma`, `jurusan_wapresma`, `angkatan_presma`, `angkatan_wapresma`, `berkas_presma`, `berkas_wapresma`, `status`) VALUES
(1, '0000', '1111', 'Test Presma', 'Test Wapresma', 'testpresma@gmail.com', 'testwapresma@gmail.com', 'Teknik Informatika', 'Teknik Informatika', '2018', '2018', 'LOREM', 'LOREM', '0');

-- --------------------------------------------------------

--
-- Table structure for table `presma`
--

CREATE TABLE `presma` (
  `no_urut` int(2) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presma`
--

INSERT INTO `presma` (`no_urut`, `nim`, `nama`, `jurusan`, `angkatan`, `email`, `file`) VALUES
(1, 'A1315020', 'ASMILIA', 'Sistem Komputer', 2017, 'asmilia@gmail.com', 'lorem'),
(2, 'A1315014', 'ANDY MARDIANTO', 'Teknik Informatika', 2017, 'andy@gmail.com', 'lorem'),
(3, 'A1315023', 'DEZAN PRATAMA ARYASANDY', 'Sistem Informasi', 2017, 'dezan@gmail.com', 'lorem');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `tahun` int(4) NOT NULL,
  `total` int(11) NOT NULL,
  `mencoblos` int(11) NOT NULL,
  `belum_mencoblos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`tahun`, `total`, `mencoblos`, `belum_mencoblos`) VALUES
(2015, 188, 170, 18),
(2016, 190, 155, 35),
(2017, 187, 177, 10),
(2018, 201, 198, 3),
(2019, 171, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vote_rules`
--

CREATE TABLE `vote_rules` (
  `tahun` year(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vote_rules`
--

INSERT INTO `vote_rules` (`tahun`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(2019, '2019-12-01', '2019-12-31', '08:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wapresma`
--

CREATE TABLE `wapresma` (
  `no_urut` int(2) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wapresma`
--

INSERT INTO `wapresma` (`no_urut`, `nim`, `nama`, `jurusan`, `angkatan`, `email`, `file`) VALUES
(1, 'A1315022', 'DENNY YUNIZHAR', 'Sistem Informasi', 2017, 'denny@gmail.com', 'lorem'),
(2, 'A1315017', 'ANITA', 'Diploma Komputer', 2017, 'anita@gmail.com', 'lorem'),
(3, 'A1315004', 'AGUS KRESTIAWAN', 'Sistem Komputer', 2017, 'agus@gmail.com', 'lorem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `admin_auth`
--
ALTER TABLE `admin_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumentasi_kpum`
--
ALTER TABLE `dokumentasi_kpum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumentasi_pemilihan`
--
ALTER TABLE `dokumentasi_pemilihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpum`
--
ALTER TABLE `kpum`
  ADD PRIMARY KEY (`tahun`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`no_urut`);

--
-- Indexes for table `pencoblos`
--
ALTER TABLE `pencoblos`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pending_paslon`
--
ALTER TABLE `pending_paslon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presma`
--
ALTER TABLE `presma`
  ADD PRIMARY KEY (`no_urut`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`tahun`);

--
-- Indexes for table `vote_rules`
--
ALTER TABLE `vote_rules`
  ADD PRIMARY KEY (`tahun`);

--
-- Indexes for table `wapresma`
--
ALTER TABLE `wapresma`
  ADD PRIMARY KEY (`no_urut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_auth`
--
ALTER TABLE `admin_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dokumentasi_kpum`
--
ALTER TABLE `dokumentasi_kpum`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumentasi_pemilihan`
--
ALTER TABLE `dokumentasi_pemilihan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pending_paslon`
--
ALTER TABLE `pending_paslon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
