-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 24, 2020 at 04:45 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitati_md`
--

-- --------------------------------------------------------

--
-- Table structure for table `absolventi`
--

CREATE TABLE `absolventi` (
  `id_absolventi` int(5) NOT NULL,
  `nabsolventi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absolventi`
--

INSERT INTO `absolventi` (`id_absolventi`, `nabsolventi`) VALUES
(1, 3256),
(2, 2780),
(11, 10),
(12, 480),
(13, 256),
(14, 360),
(15, 213),
(16, 111),
(17, 369),
(18, 456),
(19, 299),
(20, 100),
(21, 99),
(22, 250),
(23, 280),
(24, 246),
(25, 160),
(26, 213),
(27, 121),
(28, 339),
(29, 256),
(30, 209),
(31, 140),
(32, 119),
(33, 114);

-- --------------------------------------------------------

--
-- Table structure for table `adrese_web`
--

CREATE TABLE `adrese_web` (
  `id_adresa` int(5) NOT NULL,
  `adresa` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adrese_web`
--

INSERT INTO `adrese_web` (`id_adresa`, `adresa`) VALUES
(11, 'http://fet.utm.md/'),
(12, 'http://feie.utm.md/'),
(13, 'http://fcim.utm.md/'),
(14, 'http://fta.utm.md/'),
(15, 'http://fimit.utm.md/'),
(16, 'http://fua.utm.md/'),
(17, 'http://fcgc.utm.md/'),
(18, 'http://fieb.utm.md/'),
(19, 'http://ftp.utm.md/'),
(22, 'http://usm.md/?page_id=447'),
(23, 'http://chimie.usm.md/'),
(24, 'http://drept.usm.md/'),
(25, 'http://phys.usm.md/'),
(26, 'http://istorie.usm.md/'),
(27, 'http://jurnalism.usm.md/'),
(28, 'http://usm.md/?page_id=1896'),
(29, 'http://litere.md/'),
(30, 'http://fmi.usm.md/'),
(31, 'http://psesas.usm.md/'),
(32, 'http://frispa.usm.md/'),
(33, 'http://fse.usm.md/');

-- --------------------------------------------------------

--
-- Table structure for table `facultati`
--

CREATE TABLE `facultati` (
  `id_facultate` int(5) NOT NULL,
  `id_adresa` int(5) NOT NULL,
  `nume_facultate` varchar(256) NOT NULL,
  `id_universitate` int(5) NOT NULL,
  `id_studenti` int(5) NOT NULL,
  `id_absolventi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facultati`
--

INSERT INTO `facultati` (`id_facultate`, `id_adresa`, `nume_facultate`, `id_universitate`, `id_studenti`, `id_absolventi`) VALUES
(1, 11, 'Facultatea Electronică și Telecomunicații', 1, 11, 11),
(2, 12, 'Facultatea Energetică și Inginerie Electrică', 1, 12, 12),
(3, 13, 'Facultatea Calculatoare, Informatică şi Microelectronică', 1, 13, 13),
(4, 14, 'Facultatea Tehnologia Alimentelor', 1, 14, 14),
(5, 15, 'Facultatea Inginerie Mecanică, Industrială şi Transporturi', 1, 15, 15),
(6, 16, 'Facultatea Urbanism şi Arhitectură', 1, 16, 16),
(7, 17, 'Facultatea Construcţii, Geodezie și Cadastru', 1, 17, 17),
(9, 18, 'Facultatea Inginerie Economică şi Business', 1, 18, 18),
(10, 19, 'Facultatea Textile şi Poligrafie', 1, 19, 19),
(13, 22, 'Facultatea de Biologie și Pedologie', 2, 22, 22),
(14, 23, 'Facultatea de Chimie şi Tehnologie Chimică', 2, 23, 23),
(15, 24, 'Facultatea de Drept', 2, 24, 24),
(16, 25, 'Facultatea de Fizică şi Inginerie', 2, 25, 25),
(17, 26, 'Facultatea de Istorie şi Filosofie', 2, 26, 26),
(18, 27, 'Facultatea de Jurnalism şi Ştiinţe ale Comunicării', 2, 27, 27),
(19, 28, 'Facultatea de Limbi şi Literaturi Străine', 2, 28, 28),
(20, 29, 'Facultatea de Litere', 2, 29, 29),
(21, 30, 'Facultatea de Matematică şi Informatică', 2, 30, 30),
(22, 31, 'Facultatea Psihologie, Ştiinţe ale Educaţiei, Sociologie și Asistență Socială', 2, 31, 31),
(23, 32, 'Facultatea de Relaţii Internaţionale, Ştiinţe Politice şi Administrative', 2, 32, 32),
(24, 33, 'Facultatea de Ştiinţe Economice', 2, 33, 33);

-- --------------------------------------------------------

--
-- Table structure for table `list_universitati`
--

CREATE TABLE `list_universitati` (
  `id_universitate` int(3) NOT NULL,
  `nume_universitate` varchar(50) NOT NULL,
  `id_studenti` int(5) NOT NULL,
  `id_absolventi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_universitati`
--

INSERT INTO `list_universitati` (`id_universitate`, `nume_universitate`, `id_studenti`, `id_absolventi`) VALUES
(1, 'Universitatea Tehnică a Moldovei', 1, 1),
(2, 'Universitatea de Stat a Moldovei', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profesori`
--

CREATE TABLE `profesori` (
  `id_prof` int(11) NOT NULL,
  `titlu_prof` varchar(56) NOT NULL,
  `numar_prof` int(11) NOT NULL,
  `id_universitate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profesori`
--

INSERT INTO `profesori` (`id_prof`, `titlu_prof`, `numar_prof`, `id_universitate`) VALUES
(1, 'Conferențiari universitari, doctori habilitați', 121, 1),
(2, 'Conferențiari universitari, doctori', 715, 1),
(3, 'Lectori universitari, magiștri', 820, 1),
(4, 'Lectori, asistenți universitari', 600, 1),
(6, 'Conferențiari universitari, doctori habilitați', 111, 2),
(7, 'Conferențiari universitari, doctori', 600, 2),
(8, 'Lectori universitari, magiștri', 1000, 2),
(9, 'Lectori, asistenți universitari', 655, 2);

-- --------------------------------------------------------

--
-- Table structure for table `studenti`
--

CREATE TABLE `studenti` (
  `id_studenti` int(5) NOT NULL,
  `studenti_buget` int(5) NOT NULL,
  `studenti_contract` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studenti`
--

INSERT INTO `studenti` (`id_studenti`, `studenti_buget`, `studenti_contract`) VALUES
(1, 4000, 1000),
(2, 3200, 1200),
(11, 30, 20),
(12, 490, 20),
(13, 344, 50),
(14, 144, 100),
(15, 231, 113),
(16, 323, 200),
(17, 432, 121),
(18, 376, 211),
(19, 243, 54),
(20, 221, 180),
(21, 121, 20),
(22, 278, 100),
(23, 390, 78),
(24, 320, 55),
(25, 150, 78),
(26, 131, 13),
(27, 223, 100),
(28, 332, 61),
(29, 176, 211),
(30, 143, 54),
(31, 221, 180),
(32, 101, 40),
(33, 150, 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absolventi`
--
ALTER TABLE `absolventi`
  ADD PRIMARY KEY (`id_absolventi`);

--
-- Indexes for table `adrese_web`
--
ALTER TABLE `adrese_web`
  ADD PRIMARY KEY (`id_adresa`);

--
-- Indexes for table `facultati`
--
ALTER TABLE `facultati`
  ADD PRIMARY KEY (`id_facultate`),
  ADD KEY `id_universitate` (`id_universitate`),
  ADD KEY `id_studenti` (`id_studenti`),
  ADD KEY `id_absolventi` (`id_absolventi`),
  ADD KEY `id_link` (`id_adresa`);

--
-- Indexes for table `list_universitati`
--
ALTER TABLE `list_universitati`
  ADD PRIMARY KEY (`id_universitate`),
  ADD KEY `id_studenti` (`id_studenti`,`id_absolventi`);

--
-- Indexes for table `profesori`
--
ALTER TABLE `profesori`
  ADD PRIMARY KEY (`id_prof`),
  ADD KEY `id_universitate` (`id_universitate`);

--
-- Indexes for table `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id_studenti`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absolventi`
--
ALTER TABLE `absolventi`
  MODIFY `id_absolventi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `adrese_web`
--
ALTER TABLE `adrese_web`
  MODIFY `id_adresa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `facultati`
--
ALTER TABLE `facultati`
  MODIFY `id_facultate` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `list_universitati`
--
ALTER TABLE `list_universitati`
  MODIFY `id_universitate` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profesori`
--
ALTER TABLE `profesori`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studenti`
--
ALTER TABLE `studenti`
  MODIFY `id_studenti` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
