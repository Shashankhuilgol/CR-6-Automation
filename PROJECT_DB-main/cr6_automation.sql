-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 06:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr6 automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `item_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`item_name`) VALUES
('CCTV'),
('Drawing table'),
('Fan'),
('PC'),
('Printer'),
('Projector'),
('Student desk'),
('TV'),
('Writing Board');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dno` int(11) NOT NULL,
  `dname` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dno`, `dname`) VALUES
(1, 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(30) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `rno` varchar(30) DEFAULT NULL,
  `vid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `rno`, `vid`) VALUES
('MITM/ISE/226/CCTV010', 'CCTV', '226', NULL),
('MITM/ISE/226/PC097', 'PC', '226', NULL),
('MITM/ISE/226/PC098', 'PC', '226', NULL),
('MITM/ISE/226/PC099', 'PC', '226', NULL),
('MITM/ISE/226/PC100', 'PC', '226', NULL),
('MITM/ISE/226/PC101', 'PC', '226', NULL),
('MITM/ISE/226/PC102', 'PC', '226', NULL),
('MITM/ISE/226/PC103', 'PC', '226', NULL),
('MITM/ISE/226/PC104', 'PC', '226', NULL),
('MITM/ISE/226/PC105', 'PC', '226', NULL),
('MITM/ISE/226/PC106', 'PC', '226', NULL),
('MITM/ISE/226/PC107', 'PC', '226', NULL),
('MITM/ISE/226/PC108', 'PC', '226', NULL),
('MITM/ISE/226/PC109', 'PC', '226', NULL),
('MITM/ISE/226/PC110', 'PC', '226', NULL),
('MITM/ISE/226/PC111', 'PC', '226', NULL),
('MITM/ISE/226/PC112', 'PC', '226', NULL),
('MITM/ISE/226/PC113', 'PC', '226', NULL),
('MITM/ISE/226/PC114', 'PC', '226', NULL),
('MITM/ISE/226/PC115', 'PC', '226', NULL),
('MITM/ISE/226/PC116', 'PC', '226', NULL),
('MITM/ISE/226/PC117', 'PC', '226', NULL),
('MITM/ISE/226/PC118', 'PC', '226', NULL),
('MITM/ISE/226/PC119', 'PC', '226', NULL),
('MITM/ISE/226/PC120', 'PC', '226', NULL),
('MITM/ISE/226/PC121', 'PC', '226', NULL),
('MITM/ISE/226/PC122', 'PC', '226', NULL),
('MITM/ISE/226/PC123', 'PC', '226', NULL),
('MITM/ISE/226/PC124', 'PC', '226', NULL),
('MITM/ISE/226/PC125', 'PC', '226', NULL),
('MITM/ISE/226/PC126', 'PC', '226', NULL),
('MITM/ISE/226/PC127', 'PC', '226', NULL),
('MITM/ISE/226/PC128', 'PC', '226', NULL),
('MITM/ISE/226/PC129', 'PC', '226', NULL),
('MITM/ISE/226/PC130', 'PC', '226', NULL),
('MITM/ISE/226/PC131', 'PC', '226', NULL),
('MITM/ISE/226/PC132', 'PC', '226', NULL),
('MITM/ISE/226/PC133', 'PC', '226', NULL),
('MITM/ISE/226/PC134', 'PC', '226', NULL),
('MITM/ISE/226/PC135', 'PC', '226', NULL),
('MITM/ISE/226/PC136', 'PC', '226', NULL),
('MITM/ISE/226/PC137', 'PC', '226', NULL),
('MITM/ISE/226/PC138', 'PC', '226', NULL),
('MITM/ISE/226/PC139', 'PC', '226', NULL),
('MITM/ISE/226/PC140', 'PC', '226', NULL),
('MITM/ISE/226/PC141', 'PC', '226', NULL),
('MITM/ISE/226/PC142', 'PC', '226', NULL),
('MITM/ISE/226/PC143', 'PC', '226', NULL),
('MITM/ISE/226/PC144', 'PC', '226', NULL),
('MITM/ISE/226/PC145', 'PC', '226', NULL),
('MITM/ISE/226/PC146', 'PC', '226', NULL),
('MITM/ISE/226/PC147', 'PC', '226', NULL),
('MITM/ISE/226/PC148', 'PC', '226', NULL),
('MITM/ISE/226/PC149', 'PC', '226', NULL),
('MITM/ISE/226/PC150', 'PC', '226', NULL),
('MITM/ISE/226/PC151', 'PC', '226', NULL),
('MITM/ISE/226/PC152', 'PC', '226', NULL),
('MITM/ISE/226/PC153', 'PC', '226', NULL),
('MITM/ISE/226/PC154', 'PC', '226', NULL),
('MITM/ISE/226/PC155', 'PC', '226', NULL),
('MITM/ISE/226/PC156', 'PC', '226', NULL),
('MITM/ISE/226/PC157', 'PC', '226', NULL),
('MITM/ISE/227/CCTV011', 'CCTV', '227', NULL),
('MITM/ISE/227/PC158', 'PC', '227', NULL),
('MITM/ISE/227/PC159', 'PC', '227', NULL),
('MITM/ISE/227/PC160', 'PC', '227', NULL),
('MITM/ISE/227/PC161', 'PC', '227', NULL),
('MITM/ISE/227/PC162', 'PC', '227', NULL),
('MITM/ISE/227/PC163', 'PC', '227', NULL),
('MITM/ISE/227/PC164', 'PC', '227', NULL),
('MITM/ISE/227/PC165', 'PC', '227', NULL),
('MITM/ISE/227/PC166', 'PC', '227', NULL),
('MITM/ISE/227/PC167', 'PC', '227', NULL),
('MITM/ISE/227/PC168', 'PC', '227', NULL),
('MITM/ISE/227/PC169', 'PC', '227', NULL),
('MITM/ISE/227/PC170', 'PC', '227', NULL),
('MITM/ISE/227/PC171', 'PC', '227', NULL),
('MITM/ISE/227/PC172', 'PC', '227', NULL),
('MITM/ISE/227/Printer001', 'Printer', '227', NULL),
('MITM/ISE/227/TV001', 'TV', '227', NULL),
('MITM/ISE/228/CCTV011', 'CCTV', '228', NULL),
('MITM/ISE/228/PC173', 'PC', '228', NULL),
('MITM/ISE/229/CCTV004', 'CCTV', '229', NULL),
('MITM/ISE/230/CCTV003', 'CCTV', '230', NULL),
('MITM/ISE/324/CCTV006', 'CCTV', '324', NULL),
('MITM/ISE/325/CCTV005', 'CCTV', '325', NULL),
('MITM/ISE/M002/CCTV014', 'CCTV', 'M002', NULL),
('MITM/ISE/M003/CCTV001', 'CCTV', 'M003', NULL),
('MITM/ISE/M003/CCTV012', 'CCTV', 'M003', NULL),
('MITM/ISE/M003/CCTV13', 'CCTV', 'M003', NULL),
('MITM/ISE/M003/Drawing table001', 'Drawing table', 'M003', NULL),
('MITM/ISE/M003/Fan001', 'Fan', 'M003', NULL),
('MITM/ISE/M003/Fan002', 'Fan', 'M003', NULL),
('MITM/ISE/M003/Fan003', 'Fan', 'M003', NULL),
('MITM/ISE/M003/Fan004', 'Fan', 'M003', NULL),
('MITM/ISE/M003/Projector001', 'Projector', 'M003', NULL),
('MITM/ISE/M003/Student desk001', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk002', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk003', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk004', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk005', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk006', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk007', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk008', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk009', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk010', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk011', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk012', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk013', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk014', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk015', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk016', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Student desk017', 'Student desk', 'M003', NULL),
('MITM/ISE/M003/Writing Board001', 'Writing Board', 'M003', NULL),
('MITM/ISE/M004/CCTV009', 'CCTV', 'M004', NULL),
('MITM/ISE/M004/PC065', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC066', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC067', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC068', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC069', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC070', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC071', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC072', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC073', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC074', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC075', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC076', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC077', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC078', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC079', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC080', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC081', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC082', '', 'M004', NULL),
('MITM/ISE/M004/PC083', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC084', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC085', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC086', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC087', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC088', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC089', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC090', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC091', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC092', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC093', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC094', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC095', 'PC', 'M004', NULL),
('MITM/ISE/M004/PC096', 'PC', 'M004', NULL),
('MITM/ISE/M006/CCTV008', 'CCTV', 'M006', NULL),
('MITM/ISE/M006/PC033', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC034', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC035', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC036', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC037', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC038', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC039', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC040', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC041', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC042', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC043', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC044', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC045', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC046', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC047', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC048', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC049', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC050', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC051', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC052', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC053', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC054', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC055', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC056', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC057', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC058', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC059', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC060', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC061', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC062', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC063', 'PC', 'M006', NULL),
('MITM/ISE/M006/PC064', 'PC', 'M006', NULL),
('MITM/ISE/M008/CCTV007', 'CCTV', 'M008', NULL),
('MITM/ISE/M008/PC001', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC002', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC003', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC004', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC005', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC006', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC007', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC008', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC009', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC010', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC011', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC012', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC013', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC014', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC015', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC016', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC017', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC018', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC019', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC020', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC021', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC022', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC023', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC024', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC025', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC026', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC027', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC028', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC029', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC030', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC031', 'PC', 'M008', NULL),
('MITM/ISE/M008/PC032', 'PC', 'M008', NULL);

--
-- Triggers `item`
--
DELIMITER $$
CREATE TRIGGER `deleteLog` BEFORE DELETE ON `item` FOR EACH ROW INSERT into logs VALUES(null, OLD.item_id,'DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertLog` AFTER INSERT ON `item` FOR EACH ROW INSERT into logs VALUES(null, NEW.item_id, 'INSERTED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateLog` AFTER UPDATE ON `item` FOR EACH ROW INSERT into logs VALUES(null, NEW.item_id,'UPDATED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `item_id`, `action`, `cdate`) VALUES
(2, 'MITM/ISE/008/PC3000', 'INSERTED', '2023-01-30 11:26:19'),
(3, 'MITM/ISE/226/CCTV010', 'UPDATED', '2023-01-30 11:30:15'),
(4, 'MITM/ISE/008/PC3000', 'DELETED', '2023-01-30 11:33:34'),
(5, 'MITM/ISE/M002/CCTV014', 'INSERTED', '2023-01-31 15:45:48'),
(6, 'MITM/ISE/M002/CCTV014', 'UPDATED', '2023-01-31 15:46:55'),
(7, 'MITM/ISE/226/CCTV015', 'INSERTED', '2023-02-06 10:09:50'),
(8, 'MITM/ISE/226/CCTV016', 'INSERTED', '2023-02-06 10:15:45'),
(9, 'MITM/ISE/226/CCTV017', 'INSERTED', '2023-02-06 10:19:10'),
(10, 'MITM/ISE/226/CCTV017', 'UPDATED', '2023-02-06 10:26:53'),
(11, 'MITM/ISE/226/CCTV016', 'UPDATED', '2023-02-06 10:28:44'),
(12, 'MITM/ISE/226/CCTV015', 'DELETED', '2023-02-06 10:33:40'),
(13, 'MITM/ISE/226/CCTV017', 'DELETED', '2023-02-06 10:37:52'),
(14, 'MITM/ISE/226/CCTV016', 'DELETED', '2023-02-06 10:38:13'),
(15, 'MITM/ISE/M002/CCTV014', 'UPDATED', '2023-02-06 10:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `movement`
--

CREATE TABLE `movement` (
  `item_id` varchar(30) DEFAULT NULL,
  `from_rno` varchar(30) DEFAULT NULL,
  `to_rno` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movement`
--

INSERT INTO `movement` (`item_id`, `from_rno`, `to_rno`) VALUES
('MITM/ISE/M003/CCTV13', 'M008', 'M003'),
('MITM/ISE/226/CCTV010', '226', 'M003'),
('MITM/ISE/226/CCTV010', 'M003', '226'),
('MITM/ISE/226/CCTV010', '226', 'M003'),
('MITM/ISE/226/CCTV010', 'M003', '226'),
('MITM/ISE/M002/CCTV014', 'M002', 'M008'),
('MITM/ISE/226/CCTV017', '226', 'scrap'),
('MITM/ISE/226/CCTV016', '226', 'scrap'),
('MITM/ISE/M002/CCTV014', 'M008', 'M002');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rno` varchar(30) NOT NULL,
  `dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rno`, `dno`) VALUES
('226', 1),
('227', 1),
('228', 1),
('229', 1),
('230', 1),
('322', 1),
('323', 1),
('324', 1),
('325', 1),
('327', 1),
('M002', 1),
('M003', 1),
('M004', 1),
('M006', 1),
('M008', 1),
('scrap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'nithin bk', 'bknithin2002@gmail.com', 'pbkdf2:sha256:260000$QwiBWhkVxUOJ38OH$00f382cbac0bfe1a0ff50b4c7de2264be965247457e6f4bc92e4a2136a02a8d0');

-- --------------------------------------------------------

--
-- Table structure for table `vender`
--

CREATE TABLE `vender` (
  `vid` varchar(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `billing` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vender`
--

INSERT INTO `vender` (`vid`, `name`, `billing`) VALUES
('111', 'venkatesh', 'null'),
('222', 'puneeth', 'NULL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`item_name`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `rno` (`rno`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movement`
--
ALTER TABLE `movement`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `from_rno` (`from_rno`),
  ADD KEY `to_rno` (`to_rno`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rno`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender`
--
ALTER TABLE `vender`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`rno`) REFERENCES `room` (`rno`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `vender` (`vid`) ON DELETE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `dept` (`dno`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
