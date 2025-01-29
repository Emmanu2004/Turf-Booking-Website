-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2024 at 02:57 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turfbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `did` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(300) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`did`, `dname`, `status`) VALUES
(1, 'Ernakulam', 1),
(2, 'Thrissur', 1),
(4, 'Thiruvananthapuram', 2);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rfullname` varchar(100) NOT NULL,
  `rcontactno` char(10) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`rid`, `rfullname`, `rcontactno`, `remail`, `rpassword`, `status`) VALUES
(3, 'Antony', '8848761882', 'antony@gmail.com', 'ak47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
CREATE TABLE IF NOT EXISTS `slot` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `stime` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turf`
--

DROP TABLE IF EXISTS `turf`;
CREATE TABLE IF NOT EXISTS `turf` (
  `TID` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(40) NOT NULL,
  `tloc` char(30) NOT NULL,
  `tcontno` int NOT NULL,
  `timage` varchar(150) NOT NULL,
  `tprice` int NOT NULL,
  `temail` char(30) NOT NULL,
  `tpasswrd` int NOT NULL,
  `tdescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `did` int NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `turf`
--

INSERT INTO `turf` (`TID`, `tname`, `tloc`, `tcontno`, `timage`, `tprice`, `temail`, `tpasswrd`, `tdescription`, `status`, `did`) VALUES
(1, 'sky sports', 'koonamavu', 2147483647, 'turf1.jpg', 0, 'aera@gm.com', 12364, '', 2, 0),
(4, 'Sport on', 'Edappally', 2147483647, 'f592683d6002acb7536a41f65b909ae4_e6df342aa8d8.jpg', 0, 'turf@gmail.com', 123654, '', 2, 0),
(2, 'super sports', 'aluva', 1234563291, 'turf2.jpg', 0, 'aera@gm.com', 5555, '', 2, 0),
(3, 'acro sports', 'angamaly', 2147483647, 'turf3.jpg', 0, 'acro@gmail.com', 5646854, '', 2, 0),
(5, 'Dynamo', '1', 2147483647, '63fbba42714e06277e67cbb2f833f038_a0e1ac420ae8494c3a.jpg', 0, 'dynamo@gm.com', 0, '', 2, 0),
(6, 'Dynamo', '1', 2147483647, '889b871ca4ef4ab4a0dbd0cf1e321ea6_4e73053b8b8543c3.jpg', 0, 'dynamo@gm.com', 0, '', 2, 0),
(7, 'kingsports', '', 1234563223, '224718d2ef76ad0a5ceb0937befd1b12_e6c7b3d9489.jpg', 0, 'kingssports@gmail.com', 123652, '', 2, 1),
(8, 'aurasports', 'Edappally', 1234563211, '60c9096cce12c86e139c8529ee76d7be_65ac2ec4307907cb3088.jpg', 0, 'aurasports@gmail.com', 123651, '', 2, 2),
(9, 'gameon', 'kalamassery', 2147483647, '697a5aed62e9bdfd79efc4f04b2f037f_6d924ff8d1ad2bf69d0.jpg', 700, 'playon@gmail.com', 123456, '', 2, 1),
(10, 'letsplay', 'koonamavu', 2147483647, 'a243fd6f70ef90c466acdfc3c0f53365_089092ea22ca59.png', 800, 'letsplay@gmail.com', 2345, '', 2, 1),
(11, 'Anttsports', 'CHAVAKKAD', 2147483647, '63a14ad40774ce8ec1087549e94a86db_19eaac3651da41e08.png', 900, 'anttsports@gmail.com', 2333, '', 2, 2),
(12, 'gv', 'cgh', 2147483647, 'ba73b8910b42807345abb5d501ad21a7_5397783638e.jpg', 600, 'hvuvuy@', 907798, '', 2, 2),
(13, 'PlayOn', 'koonamavu', 2147483647, 'a85e780fe7543fb123642dfd15a8bed9_a899b7553162477.jpg', 800, 'playon@gamail.com', 907723, '', 2, 1),
(14, 'PlayOn', 'aluva', 2147483647, 'df173cfe8cf8c0e6b362e129ee66d176_aa312567f4e2ceb6.jpg', 700, 'playon3@gamail.com', 907729, '', 2, 1),
(15, 'RMsports', 'chavakkad', 2147483647, '2608e7d624a2c562a47804e2229cd21a_58a3c96bee4118c.jpg', 600, 'rm3@gamail.com', 123, '', 2, 2),
(16, 'kingsSports', 'edappally', 2147483647, 'c1c4157ecde7f01811809f319d3beb38_765223cf1cce1eba87.jpg', 1000, 'kingssports@gmail.com', 128987, 'A premium artificial grass turf ideal for football, cricket, and other sports.', 1, 1),
(17, 'ChampionsField', 'Angamaly', 2147483647, '6f3983db3a426c8e34d40240bfaa26a6_5f48c4583b6d9d3dd7.jpg', 600, 'championsfield@gmail.com', 4577, 'Located in the heart of the city, this multi-sport turf is designed for soccer, rugby, and other outdoor sports. ', 1, 1),
(18, 'kingsSports', 'edappally', 2147483647, '8a802c12c8c22f46f3f32b78c1818e47_fec4c1d82b05.jpg', 900, 'kingssports@gmail.com', 0, '', 2, 1),
(19, 'Legendsturf', 'mala', 2147483647, '445d860b28fa6643d64f8fd0353e44f3_e49788a2ed5d74b5a53.jpg', 900, 'legendsturf@gmail.com', 7622, 'This natural grass turf is perfect for training and friendly matches.', 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
