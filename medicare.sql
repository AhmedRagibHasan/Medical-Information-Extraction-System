-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 03:13 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `aId` varchar(20) NOT NULL,
  `aPassword` varchar(20) NOT NULL,
  `aName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindb`
--

INSERT INTO `admindb` (`aId`, `aPassword`, `aName`) VALUES
('nasim', 'battelstar', 'TheTimeBug'),
('noman', '123456', 'ConfusedCloud');

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `aId` int(11) NOT NULL,
  `dId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `aDate` varchar(10) DEFAULT NULL,
  `aTime` varchar(20) NOT NULL,
  `aSirial` int(11) DEFAULT NULL,
  `aPlace` varchar(255) DEFAULT NULL,
  `aDeseaseType` varchar(100) DEFAULT NULL,
  `aDetails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`aId`, `dId`, `pId`, `aDate`, `aTime`, `aSirial`, `aPlace`, `aDeseaseType`, `aDetails`) VALUES
(21, 10461, 1515676987, '14-04-2021', '07:00 - 11:30', 1, 'General hospital  , Pirojpur , Barishal', 'Sycratist', 'Brain problem, '),
(23, 10463, 1922313696, '14-04-2021', '10:00 - 13:00', 1, 'General hospital , Meherpur , Khulna', 'General', 'Matha betha'),
(25, 10461, 1922313696, '14-04-2021', '07:00 - 11:30', 2, 'General hospital  , Pirojpur , Barishal', 'Arthopedix', 'pete betha'),
(27, 10487, 1515161617, '14-04-2021', '10:00 - 12:00', 1, 'Ibne Sina , Dhaka , Dhaka', 'Child', 'Brain problem');

-- --------------------------------------------------------

--
-- Table structure for table `doctime`
--

CREATE TABLE `doctime` (
  `dId` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `times` varchar(15) NOT NULL,
  `timee` varchar(10) NOT NULL,
  `divition` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `place` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctime`
--

INSERT INTO `doctime` (`dId`, `day`, `times`, `timee`, `divition`, `district`, `place`) VALUES
('10463', 'Tuesday', '17:06', '21:00', 'Mymensingh', 'Jamalpur', 'efesafsafsdafg'),
('10463', 'Saturday', '08:20', '11:50', 'Khulna', 'Meherpur', 'Sono Lab'),
('10463', 'Saturday', '16:00', '20:00', 'Khulna', 'Meherpur', 'Prime LAb'),
('10463', 'Monday', '08:00', '11:00', 'Khulna', 'Meherpur', 'Sono Lab'),
('10463', 'Monday', '17:00', '19:00', 'Khulna', 'Meherpur', 'Prime LAb'),
('01515676987', 'Monday', '17:00', '19:00', 'Khulna', 'Meherpur', 'Prime LAb'),
('10468', 'Wednesday', '14:00', '15:00', 'Khulna', 'Meherpur', 'General hospital'),
('10468', 'Monday', '03:33', '17:06', '', 'Choose...', ''),
('10468', 'Monday', '16:42', '15:31', 'Khulna', 'Meherpur', 'vdsvdsvdsvdsvdsvdsv'),
('10461', 'Sunday', '07:00', '11:00', 'Barishal', 'Pirojpur', 'General hospital '),
('10461', 'Wednesday', '07:00', '11:30', 'Barishal', 'Pirojpur', 'General hospital '),
('10461', 'Friday', '08:00', '12:00', 'Barishal', 'Pirojpur', 'Noman Clinic'),
('10461', 'Saturday', '14:00', '17:00', 'Barishal', 'Pirojpur', 'Noman Clinic'),
('10461', 'Monday', '15:00', '18:00', 'Barishal', 'Pirojpur', 'Noman Clinic'),
('10461', 'Thursday', '14:00', '18:00', 'Barishal', 'Pirojpur', 'Noman Clinic'),
('10487', 'Saturday', '10:00', '14:00', 'Dhaka', 'Dhaka', 'Ibne Sina'),
('10487', 'Monday', '10:00', '15:00', 'Dhaka', 'Dhaka', 'Ibne Sina'),
('10487', 'Wednesday', '10:00', '12:00', 'Dhaka', 'Dhaka', 'Ibne Sina'),
('10487', 'Saturday', '19:00', '23:00', 'Dhaka', 'Dhaka', 'Ibne Sina'),
('10487', 'Monday', '18:00', '20:00', 'Dhaka', 'Dhaka', 'Ibne Sina'),
('10467', 'Sunday', '07:00', '12:00', 'Dhaka', 'Dhaka', 'Bardem'),
('10467', 'Monday', '19:00', '23:00', 'Dhaka', 'Dhaka', 'Bardem'),
('10467', 'Tuesday', '17:00', '22:00', 'Dhaka', 'Dhaka', 'Bardem'),
('10467', 'Thursday', '08:00', '17:00', 'Dhaka', 'Dhaka', 'Bardem'),
('10463', 'Wednesday', '10:00', '13:00', 'Khulna', 'Meherpur', 'General hospital'),
('10463', 'Wednesday', '17:00', '22:00', 'Khulna', 'Meherpur', 'Prime LAb'),
('10461', 'Wednesday', '19:00', '22:00', 'Barishal', 'Pirojpur', 'General hospital'),
('10461', 'Wednesday', '17:00', '18:00', 'Barishal', 'Pirojpur', 'Sono Lab');

-- --------------------------------------------------------

--
-- Table structure for table `doctordata`
--

CREATE TABLE `doctordata` (
  `dName` varchar(50) NOT NULL,
  `dId` varchar(20) NOT NULL,
  `dImage` varchar(1000) NOT NULL,
  `dPassword` varchar(35) NOT NULL,
  `dDivition` varchar(20) NOT NULL,
  `dDistrict` varchar(20) NOT NULL,
  `dAddress` varchar(80) NOT NULL,
  `dPhoneNo` varchar(15) NOT NULL,
  `dEmail` varchar(50) NOT NULL,
  `dNid` varchar(25) NOT NULL,
  `dSP1` varchar(25) NOT NULL,
  `dSP2` varchar(25) NOT NULL,
  `dSP3` varchar(25) NOT NULL,
  `dAbout` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctordata`
--

INSERT INTO `doctordata` (`dName`, `dId`, `dImage`, `dPassword`, `dDivition`, `dDistrict`, `dAddress`, `dPhoneNo`, `dEmail`, `dNid`, `dSP1`, `dSP2`, `dSP3`, `dAbout`) VALUES
('Xidni Noman', '10477', 'Bro.jpg', '10477', 'Dhaka', 'Dhaka', 'Dhanmondi 27', '01718228277', 'xidni55@gmail.com', '154132132132', 'Woman', 'Woman', 'Child', 'Charming'),
('Rajib Hassan', '10488', 'Rajib vai.jpg', '10488', 'Barishal', 'Barisal', '10/14 SBC ', '01718228277', 'saivi22@gmail.com', '154132132132', 'Gynocologiest', 'Gynocologiest', 'Gynocologiest', 'Charming'),
('Janntul Ferdous Ani', 'ani', 'Ani.jpg', '10483', 'Chittagong', 'Brahmanbaria', '10/14 SBC ', '01718228277', 'ani33@gmail.com', '154132132132', 'General', 'General', 'General', 'Charming'),
('Atikul Islam', 'Atik', 'IMG20181106125743.jpg', '10484', 'Chittagong', 'Chittagong', '10/14 SBC ', '01718228277', 'atik22@gmail.com', '154132132132', 'Sexologiest', 'Sexologiest', 'Sexologiest', 'Charming'),
('Ibrahim KhalilUllah', 'Manik', '72570418_1460834007412985_7194219238985302016_n.jpg', '10474', 'Dhaka', 'Dhaka', 'Dhanmondi 27', '01718228277', 'manik33@gmail.com', '154132132132', 'Gynocologiest', 'Gynocologiest', 'Gynocologiest', 'Charming'),
('Mushfiq Shohan', 'Mushfiq', 'IMG20181106123400.jpg', '10469', 'Mymensingh', 'Mymensingh', '10/14 SBC ', '01718228277', 'shohan@gmail.com', '154132132132', 'Arthopedix', 'Arthopedix', 'Arthopedix', 'Charming'),
('Md Rasedul', 'Rashed', 'IMG20181128144229.jpg', '10460', 'Dhaka', 'Dhaka', 'Dhanmondi 27', '01718228277', 'rasedul77@gmail.com', '154132132132', 'General', 'General', 'Child', 'Charming'),
('Rony Bhuiyan', 'Rony', 'IMG20181202172142.jpg', '10470', 'Dhaka', 'Narayanganj', '10/14 SBC ', '01718228277', 'rony33@gmail.com', '154132132132', 'Sexologiest', 'Sexologiest', 'Sexologiest', 'Charming'),
('Shakil Hassan', 'Shakil', 'IMG20181106111347.jpg', '10489', 'Chittagong', 'Chandpur', '10/14 SBC ', '01718228277', 'sakil33@gmail.com', '154132132132', 'Dental', 'Dental', 'Dental', 'Charming');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `rate` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `pId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `rate`, `time`, `pId`) VALUES
('Nasim', 'nasim15-10463@diu.ed', '5', '14-04-2021', '01515676987'),
('Ragib', 'ragib22@gamil.com', 'Test data', '20-09-2021', '001');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `image`) VALUES
(6, 'Screenshot_11.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `patientdata`
--

CREATE TABLE `patientdata` (
  `pId` varchar(15) NOT NULL,
  `pPassword` varchar(32) DEFAULT NULL,
  `pFirstName` varchar(25) DEFAULT NULL,
  `pLastName` varchar(40) DEFAULT NULL,
  `pDivition` varchar(20) DEFAULT NULL,
  `pDistrict` varchar(30) DEFAULT NULL,
  `pAddress` varchar(100) DEFAULT NULL,
  `pPhoneNo` varchar(20) DEFAULT NULL,
  `pEmail` varchar(50) DEFAULT NULL,
  `pGender` varchar(8) NOT NULL,
  `pDOB` date DEFAULT '1990-01-01',
  `pBlood` varchar(4) NOT NULL,
  `pNationalId` varchar(20) DEFAULT NULL,
  `pAbout` varchar(255) DEFAULT NULL,
  `pCmDisease` varchar(100) DEFAULT NULL,
  `pTotalRepoart` int(11) DEFAULT NULL,
  `pTotalPrescription` int(11) DEFAULT NULL,
  `pTotalSucessfulVisit` int(11) DEFAULT NULL,
  `pTotalUnsucessfulVisit` int(11) DEFAULT NULL,
  `pTotalAppointment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdata`
--

INSERT INTO `patientdata` (`pId`, `pPassword`, `pFirstName`, `pLastName`, `pDivition`, `pDistrict`, `pAddress`, `pPhoneNo`, `pEmail`, `pGender`, `pDOB`, `pBlood`, `pNationalId`, `pAbout`, `pCmDisease`, `pTotalRepoart`, `pTotalPrescription`, `pTotalSucessfulVisit`, `pTotalUnsucessfulVisit`, `pTotalAppointment`) VALUES
('001', '123456', 'Akash', 'hamid', 'Khulna', 'Meherpur', 'Mirpur 1, meherpur', '001', 'edenpilbrow17@gmail.com', 'Male', '2002-12-12', 'A+', '123456', 'no', 'no', 0, 0, 0, 0, 0),
('01515161617', 'ridhon123', 'Ridhon', 'Hasan', 'Khulna', 'Meherpur', 'Middle para , Chandbill, Amjhupi, Meherpur', '01515161617', 'ridhon@gmail.com', 'Male', '1995-12-12', 'B+', '173-15-10465', 'Coli Ja', 'Brain Stuck', 0, 0, 0, 0, 0),
('01515676987', 'thetimebug', 'Md', 'Nasim', 'Khulna', 'Meherpur', 'House No 31, Hospital Para , 7no word ,Meherpur Pouroshova , Meherpur 7100', '01515676987', 'nasim15-10463@diu.edu.bd', '', '1990-01-01', '', '1954423800', 'Try to be fit', 'mental health. ', 0, 0, 0, 0, 0),
('01922313696', 'rumel123', 'Sarwar', 'Hossain', 'Khulna', 'Meherpur', 'chdbill,meherpur.', '01922313696', 'rumel@diu.edu.bd', 'Male', '1995-04-26', 'O+', '009988', 'Osthir', 'low Weight', 0, 0, 0, 0, 0),
('11111', '11111', 'Md ', 'Faisal', 'Dhaka', 'Faridpur', '17/8 Faridpur sadar , faridpur', '11111', 'akash@gmail.com', '', '1990-01-01', '', '5545', 'khubi koste achi', 'khgkhg', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reportdata`
--

CREATE TABLE `reportdata` (
  `rId` int(11) NOT NULL,
  `dId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `rDate` date DEFAULT NULL,
  `rType` varchar(30) DEFAULT NULL,
  `rDetails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempdoctor`
--

CREATE TABLE `tempdoctor` (
  `tdId` varchar(20) NOT NULL,
  `tdKey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `doctordata`
--
ALTER TABLE `doctordata`
  ADD PRIMARY KEY (`dId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientdata`
--
ALTER TABLE `patientdata`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `reportdata`
--
ALTER TABLE `reportdata`
  ADD PRIMARY KEY (`rId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
