-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 12:40 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trafikuurban`
--

-- --------------------------------------------------------

--
-- Table structure for table `biletat`
--

CREATE TABLE `biletat` (
  `BiletaID` int(11) NOT NULL,
  `Emri` varchar(255) COLLATE latin1_bin NOT NULL,
  `Mbiemri` varchar(255) COLLATE latin1_bin NOT NULL,
  `Email` varchar(255) COLLATE latin1_bin NOT NULL,
  `Linja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `biletat`
--

INSERT INTO `biletat` (`BiletaID`, `Emri`, `Mbiemri`, `Email`, `Linja`) VALUES
(1, 'Njomza', 'Hajredini', 'njomzahajredini@gmail.com', 4),
(2, 'Merkur', 'ibishi', 'merkuri00@gmail.com', 4),
(3, 'has', 'hys', 'willi123johnson@gmail.com', 4),
(4, 'Milot', 'Hajredini', 'milothajredini1@gmail.com', 15);

-- --------------------------------------------------------

--
-- Table structure for table `linja1`
--

CREATE TABLE `linja1` (
  `Linja1ID` int(11) NOT NULL,
  `Interval kohor` varchar(500) COLLATE latin1_bin NOT NULL,
  `Nisja Nga Fakullteti` varchar(500) COLLATE latin1_bin NOT NULL,
  `Stacionet` text COLLATE latin1_bin NOT NULL,
  `Arritja Fush Kosov` varchar(500) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja1`
--

INSERT INTO `linja1` (`Linja1ID`, `Interval kohor`, `Nisja Nga Fakullteti`, `Stacionet`, `Arritja Fush Kosov`) VALUES
(1, '06:00 - 07:00', '06:00; 06:15;06:30;06:40;6:50\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '06:45,07:00,07:15,07:25 ,07:35'),
(2, '0:00 - 08:00', '07:07,07:22,07:37,07:52', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '07:52,08:07,08:22,08:37\r\n'),
(3, '08:00-09:00', '08:07,	08:22,	08:37,	08:52', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '08:52,	09:07,		09:22,	09:37\r\n'),
(4, '09:00-10:00', '09:10,	09:30,	09:50	\r\n\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '09:55,	10:15,	10:35\r\n'),
(5, '10:00-11:00,\r\n', '10:10,	10:30,	10:45\r\n\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '10:55,	11:15,	11:30\r\n'),
(6, '11:00-12:00', '11:00,	11:15,	11;30,	11:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '11:45,	12:00,		12:15,	12:30\r\n'),
(7, '12:00-13:00', '12:00,	12:15,	12:30,	12:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '12:45,	13:00,	13:15,	13:30'),
(8, '13:00-14:00', '13:00,	13:15,	13:30,	13:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '13:45,	14:00,	14:15,	14:30\r\n'),
(9, '14:00-15:00', '14:00,	14:15,	14:30,	14:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '14:45,	15:00, 15:15, 15:30\r\n'),
(10, '15:00-16:00', '15:00,	15:15,	15:30,	15:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '15:45,	16:00,	16:15,	16:30\r\n'),
(11, '16:00-17:00', '16:00,	16:15,	16:30,	16:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '16:45,	17:00,	17:15,	17:30\r\n'),
(12, '17:00-18:00', '17:00,	17:15,	17:30,	17:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '17:45,	18:00,	18:15,	18:30\r\n'),
(13, '18:00-19:00', '18:00,	18:15,	18:30,	18:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '18:45,	19:00,	19:15,	19:30\r\n'),
(14, '19:00-20:00', '19:00,	19:20,	19:40\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '19:45,	20:05,20:25\r\n'),
(15, '20:00-21:00', '20:40; 20:50\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '21:20;	21:30\r\n'),
(16, '21:00-22:00', '21:00;21:15\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-Çerdhja-Rrethi-Fushë Kosov6		Stacioni Hekurudhor.\r\n', '21:40;		21:55\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `linjat`
--

CREATE TABLE `linjat` (
  `LinjatID` int(11) NOT NULL,
  `StacionetID` int(11) NOT NULL,
  `Emri` varchar(255) COLLATE latin1_bin NOT NULL,
  `Cmimi` varchar(255) COLLATE latin1_bin NOT NULL,
  `Menyra` varchar(255) COLLATE latin1_bin NOT NULL,
  `created_at` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linjat`
--

INSERT INTO `linjat` (`LinjatID`, `StacionetID`, `Emri`, `Cmimi`, `Menyra`, `created_at`) VALUES
(1, 4, 'Germi', '1 Euro', 'Ditore', '2019-06-25 22:09:11'),
(2, 4, 'Germi', '1 Euro', 'Ditore', '2019-06-25 23:36:28'),
(3, 4, 'Germi', '5 Euro', 'Javore', '2019-06-27 00:26:32'),
(4, 15, 'Keqekoll', '1 Euro', 'Ditore', '2019-06-29 00:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `stacionet`
--

CREATE TABLE `stacionet` (
  `StacioniID` int(11) NOT NULL,
  `Linja` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja` varchar(255) COLLATE latin1_bin NOT NULL,
  `Arritja` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `stacionet`
--

INSERT INTO `stacionet` (`StacioniID`, `Linja`, `Nisja`, `Arritja`) VALUES
(1, '1', 'Prishtinë', 'Fush-Kosovë'),
(2, '3', 'MAT', 'Bardhosh'),
(3, '3C', 'Sinidoll', 'Kodra e Diellit'),
(4, '4', 'MAT', 'Gërmi'),
(5, '7C', 'Kalabri', 'Stacioni Autobusave'),
(6, '15', 'Prishtinë', 'Keçekollë');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biletat`
--
ALTER TABLE `biletat`
  ADD PRIMARY KEY (`BiletaID`);

--
-- Indexes for table `linja1`
--
ALTER TABLE `linja1`
  ADD PRIMARY KEY (`Linja1ID`);

--
-- Indexes for table `linjat`
--
ALTER TABLE `linjat`
  ADD PRIMARY KEY (`LinjatID`);

--
-- Indexes for table `stacionet`
--
ALTER TABLE `stacionet`
  ADD PRIMARY KEY (`StacioniID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biletat`
--
ALTER TABLE `biletat`
  MODIFY `BiletaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `linja1`
--
ALTER TABLE `linja1`
  MODIFY `Linja1ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linjat`
--
ALTER TABLE `linjat`
  MODIFY `LinjatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stacionet`
--
ALTER TABLE `stacionet`
  MODIFY `StacioniID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
