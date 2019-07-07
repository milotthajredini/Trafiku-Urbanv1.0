-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 04:37 PM
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
-- Table structure for table `ankesat`
--

CREATE TABLE `ankesat` (
  `ankesaID` int(11) NOT NULL,
  `Emri` varchar(255) COLLATE latin1_bin NOT NULL,
  `Email` varchar(255) COLLATE latin1_bin NOT NULL,
  `Ankesa` text COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

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

-- --------------------------------------------------------

--
-- Table structure for table `cmimore`
--

CREATE TABLE `cmimore` (
  `cmimoreID` int(11) NOT NULL,
  `Ditore` varchar(255) COLLATE latin1_bin NOT NULL,
  `Javore` varchar(255) COLLATE latin1_bin NOT NULL,
  `Mujore` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `cmimore`
--

INSERT INTO `cmimore` (`cmimoreID`, `Ditore`, `Javore`, `Mujore`) VALUES
(1, '0.40 Cent', '3 Euro', '10 Euro');

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
(1, '06:00 - 07:00', '06:00; 06:15;06:30;06:40;6:50\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '06:45,07:00,07:15,07:25 ,07:35'),
(2, '07:00 - 08:00', '07:07,07:22,07:37,07:52', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;\r\nKosov&euml;-Stacioni Hekurudhor.\r\n', '07:52,08:07,08:22,08:37\r\n'),
(3, '08:00-09:00', '08:07,	08:22,	08:37,	08:52', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '08:52,	09:07,		09:22,	09:37\r\n'),
(4, '09:00-10:00', '09:10,	09:30,	09:50	\r\n\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '09:55,	10:15,	10:35\r\n'),
(5, '10:00-11:00,\r\n', '10:10,	10:30,	10:45\r\n\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '10:55,	11:15,	11:30\r\n'),
(6, '11:00-12:00', '11:00,	11:15,	11;30,	11:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '11:45,	12:00,		12:15,	12:30\r\n'),
(7, '12:00-13:00', '12:00,	12:15,	12:30,	12:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '12:45,	13:00,	13:15,	13:30'),
(8, '13:00-14:00', '13:00,	13:15,	13:30,	13:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '13:45,	14:00,	14:15,	14:30\r\n'),
(9, '14:00-15:00', '14:00,	14:15,	14:30,	14:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '14:45,	15:00, 15:15, 15:30\r\n'),
(10, '15:00-16:00', '15:00,	15:15,	15:30,	15:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '15:45,	16:00,	16:15,	16:30\r\n'),
(11, '16:00-17:00', '16:00,	16:15,	16:30,	16:45\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '16:45,	17:00,	17:15,	17:30\r\n'),
(12, '17:00-18:00', '17:00,	17:15,	17:30,	17:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '17:45,	18:00,	18:15,	18:30\r\n'),
(13, '18:00-19:00', '18:00,	18:15,	18:30,	18:45', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '18:45,	19:00,	19:15,	19:30\r\n'),
(14, '19:00-20:00', '19:00,	19:20,	19:40\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '19:45,	20:05,20:25\r\n'),
(15, '20:00-21:00', '20:40; 20:50\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml; Kosov&euml;-Stacioni Hekurudhor.\r\n', '21:20;	21:30\r\n'),
(16, '21:00-22:00', '21:00;21:15\r\n', 'Fakulteti Teknik,Prishtne-Konviktet- Ministria e Arsirni-Teatri-\'\'Plepat\"-	\"Qafa\"-NEW BORN-Lagjja Dardani-\r\nLakrishte-FSK-ETC-Apollonia-SH.F.M. \"Mihal\r\nGrameno\"-&Ccedil;erdhja-Rrethi-Fush&euml;Kosov&euml;-Stacioni Hekurudhor.\r\n', '21:40;		21:55\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `linja3`
--

CREATE TABLE `linja3` (
  `linjaID` int(11) NOT NULL,
  `Interval Kohor` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja Nga Rrethi Matit` varchar(255) COLLATE latin1_bin NOT NULL,
  `Stacionet` varchar(500) COLLATE latin1_bin NOT NULL,
  `Arritja ne rrethin e Mat` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja3`
--

INSERT INTO `linja3` (`linjaID`, `Interval Kohor`, `Nisja Nga Rrethi Matit`, `Stacionet`, `Arritja ne rrethin e Mat`) VALUES
(1, '06:00-07:00', '06:10,	06:20,	06:40,	06:50\r\n', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '07:10,	07:20,	07:40,	07:50'),
(2, '07:00:-08:00', '07:10,	07:20,	07:40,	07:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '08:10,	08:20,	08:40,	08:50'),
(3, '08:00:-09:00', '08:10,	08:20,	08:40,	08:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '09:10,	09:20,	09:40,	09:50'),
(4, '09:00:-10:00', '09:10,	09:20,	09:40,	09:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '10:10,	10:20,	10:40,	10:50'),
(5, '10:00:-11:00', '10:10,	10:20,	10:40,	10:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '11:10,	11:20,	11:40,	11:50'),
(6, '11:00:-12:00', '11:10,	11:20,	11:40,	11:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '12:10,	12:20,	12:40,	12:50'),
(7, '12:00:-13:00', '12:10,	12:20,	12:40,	12:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '13:10,	13:20,	13:40,	13:50'),
(8, '13:00:-14:00', '13:10,	13:20,	13:40,	13:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '14:10,	14:20,	14:40,	14:50'),
(9, '14:00:-15:00', '14:10,	14:20,	14:40,	14:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '15:10,	15:20,	15:40,	15:50'),
(10, '15:00:-16:00', '15:10,	15:20,	15:40,	15:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '16:10,	16:20,	16:40,	16:50'),
(11, '16:00:-17:00', '16:10,	16:20,	16:40,	16:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '17:10,	17:20,	17:40,	17:50'),
(12, '17:00:-18:00', '17:10,	17:20,	17:40,	17:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '18:10,	18:20,	18:40,	18:50'),
(13, '18:00:-19:00', '18:10,	18:20,	18:40,	18:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '19:10,	19:20,	19:40,	19:50'),
(14, '19:00:-20:00', '19:10,	19:20,	19:40,	19:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '20:10,	20:20,	20:40,	20:50'),
(15, '20:00:-21:00', '20:10,	20:20,	20:40,	20:50', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '21:10,	21:20,	21:40,	21:50 '),
(16, '21:00:-22:00', '21:10,	21:20,	21:40,	21:50 ,22:00', 'Rrethi ne Mat,Rruga \"C\"- rrethi,\"Maxi 24h\"-Rrgua B - Ambulanca,Kodra e diellit -Qendra Tregtare-Konviktet-Rrethi QKUK-Rrethi Flamurit-PTK-Radio Kosova-BQK-Memoriali \"Heroinat\"-Xhamia e Llapi-SHF \"Asmin Vokshi\"-Sharbanet-Ish Tregu i veturave-Pompa \"Alfa Trade\"-Bardhosh te market \"Albi\"-Bardhosh,te kroi fshatit.', '22:00,	22:10,	22:20,	22:30 ,22:45');

-- --------------------------------------------------------

--
-- Table structure for table `linja3c`
--

CREATE TABLE `linja3c` (
  `ID` int(11) NOT NULL,
  `Interval Kohor` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja nga Sinidolli` varchar(255) COLLATE latin1_bin NOT NULL,
  `Stacionet` text COLLATE latin1_bin NOT NULL,
  `Arritja ne koder te Diellit` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja3c`
--

INSERT INTO `linja3c` (`ID`, `Interval Kohor`, `Nisja nga Sinidolli`, `Stacionet`, `Arritja ne koder te Diellit`) VALUES
(1, '06:00-07:00\r\n', '06:30	06:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '07:00,	07:15\r\n'),
(2, '07:00-08:00\r\n', '07:00,	07:15,	07:30,	07:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '07:30,	07:45,	03:00,	08:15\r\n'),
(3, '08:00-09:00\r\n', '08:00,	08:15,	08:30,	08:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '08:30,	08:45,	09:00,	09:15\r\n'),
(4, '09:00-10:00\r\n', '09:00, 09:20, 09:40\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '09:30,  09:50,  10:10\r\n'),
(5, '10:00-11:00\r\n', '10:00,	10:15,	10:3D,	10:45', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '10:30,	10:45,	11:00,	11:15\r\n'),
(6, '11:00-12:00\r\n', '11:00,	11:15,	11:30,	11:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '11:30,	11:45,	12:00,	12:15\r\n'),
(7, '12:00-13:00\r\n', '12:00,	12:15,	12:30,	12:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '12:30	12:45,	13:00,	13:15\r\n'),
(8, '13:00-14:00\r\n', '13:00,	13:15,	13:30,	13:45', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '13:30,	13:45,	14:00,	14:15\r\n'),
(9, '14:00-15:00\r\n', '14:00	14:15,	14:30,	14:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '14:30,	14:45,	15:00,	15:15\r\n'),
(10, '15:00-16:00\r\n', '15:00,	15:15,	15:30,	15:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '15:30,	15:45,	16:00,	16:15'),
(11, '16:00-17:00\r\n', '16:00,	16:15,	15:30,	15:45', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '16:30,	16:45,	17:00,	17:15'),
(12, '17:00-18:00\r\n', '17:00,	17:15,	17:30,	17:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '17:30,	17:45,	18:00,	18:15\r\n'),
(13, '18:00-19:00\r\n', '18:00,	18:15,	18:30,	18:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '18:30,	18:45,	19:00,	19:15\r\n'),
(14, '19:00-20:00\r\n', '19:00,	19:15,	19:30,	19:45\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '19:30,	19:45, 20:00, 20:15\r\n'),
(15, '20:00-21:00\r\n', '20:00,	20:20,	20:40', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '20:30,	20:50,	21:10\r\n'),
(16, '21:00\r\n', '21:00\r\n', 'Sinidoll-Rr.Ibrahim Kelmendi-Ambulanca,Kodra e Trimav-Sharbanet-SH.F\"Asim Vokshi\"-Komuna-Prapa Teatrit-Fakullteti Ekonomik-Konviktet-Fakullteti Teknik-Rruga B-Rrethi Maxi 24h-Kodra e Diellit,afer postes se vogel.', '21:30\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `linja4`
--

CREATE TABLE `linja4` (
  `ID` int(11) NOT NULL,
  `Intervali Kohor` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja Nga Mati` varchar(255) COLLATE latin1_bin NOT NULL,
  `Stacionet` text COLLATE latin1_bin NOT NULL,
  `Arritja ne Germi` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja4`
--

INSERT INTO `linja4` (`ID`, `Intervali Kohor`, `Nisja Nga Mati`, `Stacionet`, `Arritja ne Germi`) VALUES
(1, '06:00  - 07:00 ', '06:00,06:15,06:30,06:40,06:50 ', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', ' 07:00,07:15,07:30,07:40,07:50'),
(2, '07:00  - 08:00 ', '07:00,07:07,07:15,07:22,07:30,07:37,07:45,07:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '08:00,08:07,08:15,08:22,08:30,08:37,08:45,08:52'),
(3, '08:00  - 09:00 ', '08:00,08:07,08:15,08:22,08:30,08:40,08:50', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '09:00,09:07,09:15,09:22,09:30,09:40,09:50'),
(4, '09:00  - 10:00 ', '09:00,09:10,09:20,09:30,09:40,09:50, ', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '10:00,10:10,10:20,10:30,10:40,10:50'),
(5, '10:00  - 11:00 ', '10:00,10:07,10:15,10:22,10:30,10:37,10:45,10:52 ', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '11:00,11:07,11:15,11:22,11:30,11:37,11:45,11:52'),
(6, '11:00  - 12:00 ', '11:00,11:07,11:15,11:22,11:30,11:37,11:45,11:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '12:00, 12:07,12:15,12:22,12:30,12:37,12:45, 12:52'),
(7, '12:00  - 13:00 ', '12-12:00,12:07,12:15,12:22,12:30,12:37,12:45,12:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '13:07,13:15,13:22,13:30,13:37,13:45,13:52'),
(8, '13:00  - 14:00 ', '13:00,13:07,13:15,13:22,13:30,13:37,13:45,13:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '14:00.14:07,14:15,14:22,14:30,14:37,14:45,14:52'),
(9, '14:00  - 15:00 ', '14:00,14:07,14:15,14:22,14:30,14:37,14:45,14:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '15:00.15:07,15:15,15:22,15:30,15:37,15:45,15:52'),
(10, '15:00  - 16:00 ', '15:00.15:07,15:15,15:22,15:30,15:37,15:45,15:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '16:00,16:07,16:15,16:22,16:30,16:40,16:50'),
(11, '16:00  - 17:00 ', '16:00,16:07,16:15,16:22,16:30,16:40,16:50', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '17:00,17:10,17:20,17:30,17:37,17:45,17:52'),
(12, '17:00  - 18:00 ', '17:00,17:10,17:20,17:30,17:37,17:45,17:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '18:00,18:10,18:20,18:30,18:37,18:45,18:52'),
(13, '18:00  - 19:00 ', '18:00,18:10,18:20,18:30,18:37,18:45,18:52', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '19:00.19:07,19:15,19:22,19:30,19:37,19:45,19:52'),
(14, '19:00  - 20:00 ', '19:00,19:10,19:20,19:30,19:40,19:50', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '20:00,20:10,20:20,20:30,20:40,20:50'),
(15, '20:00  - 21:00 ', '20:00,20:10,20:20,20:30,20:45      \r\n', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '20:45,21:00,21:10,21:20,21:30'),
(16, '21:00  - 22:00 ', '21:00,21:15,21:30,21:45,22:00', 'Lagja Mat-SHF \"Mitrush Kuteli\"-Market \"Dreni\"-SHF \"Mileniumi i Tret\"-\"Perparimi\"-Banesa e Bardha-\"Xhambazet\"-Furra \"Qerimi 1\"-Konviktet-Qkuk-Rrethi i Flamurit-Tregu ne Ulpian-Radio Kosova-BQK-Memoriali \"Heroinat\"-QKMF-Komuna-Gjimnazi \"Sami Frasheri\"-Kisha-Taslixhe-SH.M.L Normale-Germi', '21:45,22:00,22:15,22:30,22:45');

-- --------------------------------------------------------

--
-- Table structure for table `linja7c`
--

CREATE TABLE `linja7c` (
  `ID` int(11) NOT NULL,
  `Intervali Kohor` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja nga lagja Kalabri` varchar(255) COLLATE latin1_bin NOT NULL,
  `Stacionet` text COLLATE latin1_bin NOT NULL,
  `Arritja ne Kalabri` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja7c`
--

INSERT INTO `linja7c` (`ID`, `Intervali Kohor`, `Nisja nga lagja Kalabri`, `Stacionet`, `Arritja ne Kalabri`) VALUES
(1, '06:00  - 07:00', '06:30, 06:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', ' 07:00, 07:15'),
(2, '07:00 - 08:00', '07:00, 07:15, 07:30, 07:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', ' 07:40, 07:55, 08:10, 08:25'),
(3, '08:00 - 09:00  ', '08:00, 08:15, 08:30, 08:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', ' 08:40, 08:55, 09:10, 09:25'),
(4, '09:00  -  10:00 ', '09:00, 09:15, 09:30, 09:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '  09:40, 09:55, 10:10, 10:25'),
(5, '10:00 - 11:00 ', '10:00, 10:15, 10:30, 10:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '10:40, 10:55, 11:10, 11:25'),
(6, '11:00 - 12:00  ', '11:00, 11:15, 11:30, 11:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '11:40, 11:55, 12:10, 12:25'),
(7, '12:00 - 13:00   ', '12:00, 12:15, 12:30, 12:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', ' 12:40, 12:55, 13:10, 13:25'),
(8, '13:00  -  14:00  ', '13:00, 13:15, 13:30, 13:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '13:40, 13:55, 14:10, 14:25'),
(9, '14:00  -  15:00  ', '14:00, 14:15, 14:30, 14:45 ', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '14:40, 14:55, 15:10, 15:25'),
(10, '15:00 -  16:00  ', '15:00, 15:15, 15:30, 15:45 ', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '15:40, 15:55, 16:10, 16:25'),
(11, '16:00 -  17:00   ', '16:00, 16:15, 15:30, 15:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '16:40, 16:55, 17:10, 17:25'),
(12, '17:00  - 18:00', '17:00, 17:15, 17:30, 17:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '17:40, 17:55, 18:10, 18:25'),
(13, '18:00 - 19:00   ', '18:00, 18:15, 18:30, 18:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '18:30, 18:45, 19:00, 19:15'),
(14, '19:00 - 20:00', '19:00, 19:15, 19:30, 19:45 ', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '19:30, 19:45, 20:30, 20:15'),
(15, '20:00 - 21:00   ', '20:00, 20:15, 20:30, 20:45', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '20:30, 20:45, 21:00, 21:15'),
(16, '21:00  - 22:00', '21:00', 'Kalabri-\"Banesa e Arabeve\"-Ulpian-Radio Kosova-BQK-Pallati \"Rilindja\"-Bill Klinton-Lakerishte-FSK-Shkolla Ekonomike-Ujesjellsi-Banesat \"Prishtina Star\"-Stacioni I Autobuseve-Qendra \"Dardha\"-\"Banesat e Arabeve\"-Kalabri.', '21:30');

-- --------------------------------------------------------

--
-- Table structure for table `linja15`
--

CREATE TABLE `linja15` (
  `ID` int(11) NOT NULL,
  `Nisja nga Prishtina` varchar(255) COLLATE latin1_bin NOT NULL,
  `Stacionet` text COLLATE latin1_bin NOT NULL,
  `Nisja nga Kecekolla` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linja15`
--

INSERT INTO `linja15` (`ID`, `Nisja nga Prishtina`, `Stacionet`, `Nisja nga Kecekolla`) VALUES
(1, '06:00', 'Xhamia e Llapit,Prishtin-Makovc-Kecekoll-Prishtin', '07:00'),
(2, '11:00', 'Xhamia e Llapit,Prishtin-Makovc-Kecekoll-Prishtin', '12:00'),
(3, '14:00', 'Xhamia e Llapit,Prishtin-Makovc-Kecekoll-Prishtin', '15:00'),
(4, '19:00', 'Xhamia e Llapit,Prishtin-Makovc-Kecekoll-Prishtin', '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `linjaaeroport`
--

CREATE TABLE `linjaaeroport` (
  `ID` int(11) NOT NULL,
  `Nisja Nga Aeroporti` varchar(255) COLLATE latin1_bin NOT NULL,
  `Nisja Nga Stac.Bus-Prishtina` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `linjaaeroport`
--

INSERT INTO `linjaaeroport` (`ID`, `Nisja Nga Aeroporti`, `Nisja Nga Stac.Bus-Prishtina`) VALUES
(1, '4:00,5:00,6:00,7:00,8:00,9:15', '3:00,4:00,5:00,6:00,7:00,8:15'),
(2, '10:,11:00,12:00,13:00,14:00,15:00', '9:15,10:00,11:00,12:00,13:00,14:00'),
(3, '16:00,17:00,18:00,19:00,20:00,21:00', '15:00,16:00,17:00,18:15,19:15,20:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) COLLATE latin1_bin NOT NULL,
  `email` varchar(255) COLLATE latin1_bin NOT NULL,
  `user_type` varchar(255) COLLATE latin1_bin NOT NULL,
  `password` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `user_type`, `password`) VALUES
(1, 'milot', 'milothajredini@gmail.com', 'admin', 'c85a9f065ad35dfc5ef70dae28508a8a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ankesat`
--
ALTER TABLE `ankesat`
  ADD PRIMARY KEY (`ankesaID`);

--
-- Indexes for table `biletat`
--
ALTER TABLE `biletat`
  ADD PRIMARY KEY (`BiletaID`);

--
-- Indexes for table `cmimore`
--
ALTER TABLE `cmimore`
  ADD PRIMARY KEY (`cmimoreID`);

--
-- Indexes for table `linja1`
--
ALTER TABLE `linja1`
  ADD PRIMARY KEY (`Linja1ID`);

--
-- Indexes for table `linja3`
--
ALTER TABLE `linja3`
  ADD PRIMARY KEY (`linjaID`);

--
-- Indexes for table `linja3c`
--
ALTER TABLE `linja3c`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `linja4`
--
ALTER TABLE `linja4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `linja7c`
--
ALTER TABLE `linja7c`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `linja15`
--
ALTER TABLE `linja15`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `linjaaeroport`
--
ALTER TABLE `linjaaeroport`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ankesat`
--
ALTER TABLE `ankesat`
  MODIFY `ankesaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biletat`
--
ALTER TABLE `biletat`
  MODIFY `BiletaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmimore`
--
ALTER TABLE `cmimore`
  MODIFY `cmimoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `linja1`
--
ALTER TABLE `linja1`
  MODIFY `Linja1ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linja3`
--
ALTER TABLE `linja3`
  MODIFY `linjaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linja3c`
--
ALTER TABLE `linja3c`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linja4`
--
ALTER TABLE `linja4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linja7c`
--
ALTER TABLE `linja7c`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `linja15`
--
ALTER TABLE `linja15`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `linjaaeroport`
--
ALTER TABLE `linjaaeroport`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `linjat`
--
ALTER TABLE `linjat`
  MODIFY `LinjatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stacionet`
--
ALTER TABLE `stacionet`
  MODIFY `StacioniID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
