-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 09:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'kobe@gmail.com', '$2y$10$S.ncRbJyBC4ktBKZdHW.4OHmWKIZUQXI7HhzcOSEg/2J5ys0hECR6', '2020-09-08 20:31:45', '2024-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(19, 'IT101', 'BSIT', ' Bachelor of Science in Information Technology', '2024-08-22 04:21:49'),
(20, 'CS102', 'BSCS', 'Bachelor of Science in Computer Science', '2024-08-22 04:22:02'),
(21, 'CE201', 'BSCE', 'Bachelor of Science in Civil Engineering', '2024-08-22 04:22:14'),
(22, 'EE202', 'BSEE', 'Bachelor of Science in Electrical Engineering', '2024-08-22 04:22:25'),
(23, 'ECE203', 'BSECE', 'Bachelor of Science in Electronics and Communications Engineering', '2024-08-22 04:22:38'),
(24, 'MIT308', 'MIT', 'Master in Information Technology', '2024-08-22 04:22:57'),
(25, 'CS306', 'MSCS', 'Master of Science in Computer Science', '2024-08-22 04:23:14'),
(26, 'CS206', 'BSCS-SE', ' Bachelor of Science in Computer Science - Software Engineering', '2024-08-22 04:23:36'),
(27, 'IT307', 'BSIT-Cyber', 'Bachelor of Science in Information Technology - Cybersecurity', '2024-08-22 04:23:48'),
(28, 'ECE308', 'BSECE-DS', 'Bachelor of Science in Electronics and Communications Engineering - Digital Systems', '2024-08-22 04:24:04'),
(29, 'IT205', 'BSIT-Network', 'Bachelor of Science in Information Technology - Network Administration', '2024-08-22 04:24:25'),
(30, 'CS206', 'BSCS-SE', 'Bachelor of Science in Computer Science - Software Engineering', '2024-08-22 04:24:38'),
(31, 'EE202', 'BSEE', 'Bachelor of Science in Electrical Engineering', '2024-08-22 04:25:08'),
(32, 'BSBA101', 'BSBA', 'Bachelor of Science in Business Administration', '2024-08-22 04:25:53'),
(33, 'BSBA-FM103', 'BSBA-FM', ' Bachelor of Science in Business Administration - Financial Management', '2024-08-22 04:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(25, 509, 1, 21000, 1, '2024-08-22', 4, ' Bachelor of Science in Information Technology', 'KSB2024011', 'Sean', 'Kobe', 'Dime', 'Male', 9679215151, 'kobedime@gmail.com', 9679219191, 'Jermaine', 'Brother', 9679213131, 'Philippines', 'Quezon City', '', 1116, 'Philippines', 'Quezon City', '', 1116, '2024-08-22 06:28:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(10, 2, 101, 25000, '2024-08-22 04:09:52'),
(11, 3, 102, 30000, '2024-08-22 04:10:08'),
(12, 4, 203, 40000, '2024-08-22 04:10:21'),
(13, 2, 204, 26000, '2024-08-22 04:10:35'),
(14, 3, 306, 32000, '2024-08-22 04:10:49'),
(15, 4, 407, 42000, '2024-08-22 04:11:02'),
(16, 2, 408, 27000, '2024-08-22 04:12:02'),
(17, 1, 509, 21000, '2024-08-22 04:12:12'),
(18, 3, 510, 31000, '2024-08-22 04:12:24'),
(19, 5, 260, 40000, '2024-08-22 04:12:35'),
(20, 4, 777, 45000, '2024-08-22 04:12:46'),
(21, 4, 667, 30000, '2024-08-22 04:13:00'),
(22, 3, 990, 30000, '2024-08-22 04:13:14'),
(23, 5, 313, 35000, '2024-08-22 04:13:29'),
(24, 1, 889, 10500, '2024-08-22 04:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(29, 42, 'rafael.villanueva@example.com', 0x3a3a31, '', '', '2024-08-22 04:33:40'),
(30, 41, 'isabella.morales@rocketmail.com', 0x3a3a31, '', '', '2024-08-22 04:36:11'),
(31, 40, 'daniel.mendoza@yahoo.com', 0x3a3a31, '', '', '2024-08-22 04:40:28'),
(36, 45, 'kobedime@gmail.com', 0x3a3a31, '', '', '2024-08-22 06:27:22'),
(37, 45, 'kobedime@gmail.com', 0x3a3a31, '', '', '2024-08-22 06:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(33, 'KSB2024001', 'Juan', 'Cruz', 'Santos', 'Male', 639175678901, 'juan.santos@gmail.com', '6b908b785fdba05a6446347dae08d8c5', '2024-08-22 04:01:35', '', ''),
(34, 'KSB2024002', 'Maria', 'Dela Cruz', 'Reyes', 'Female', 639184567890, 'maria.reyes@gmail.com', 'a09bccf2b2963982b34dc0e08d8b582a', '2024-08-22 04:02:14', '', ''),
(35, 'KSB2024003', 'Jose', 'Garcia', 'Lopez', 'Male', 639192345678, 'jose.lopez@gmail.com', 'e5d2ad241ec44cf155bc78ae8d11f715', '2024-08-22 04:02:52', '', ''),
(36, 'KSB2024004', 'Ana', 'Bautista', 'Cruz', 'Female', 639176543210, 'ana.cruz@example.com', '5ad55d96abf0e50647d6de116530d6df', '2024-08-22 04:03:30', '', ''),
(37, 'KSB2024005', 'Michael', 'Fernandez', 'Aquino', 'Male', 639185678901, 'michael.aquino@example.com', '50c22602b70659dde2893f3a2ba0ab82', '2024-08-22 04:04:03', '', ''),
(38, 'KSB2024006', 'Gabriel', 'Lim', 'Castillo', 'Male', 639278912345, 'gabriel.castillo@example.com', '10ddead5bb8bcfaa4d62090acd7cdfb2', '2024-08-22 04:05:01', '', ''),
(39, 'KSB2024007', 'Sofia', 'Gonzales', 'Torres', 'Female', 639263456789, 'sofia.torres@gmail.com', '98cd5d17f0660baca7d652995f0d17b6', '2024-08-22 04:06:17', '', ''),
(40, 'KSB2024008', 'Daniel', 'Santos', 'Mendoza', 'Male', 639171234567, 'daniel.mendoza@yahoo.com', 'd306313ac03787c5f5f41641773bfb9a', '2024-08-22 04:07:10', '', ''),
(41, 'KSB2024009', 'Isabella', 'Reyes', 'Morales', 'Female', 639256789012, 'isabella.morales@rocketmail.com', '2a19bc085beedfd33873400cb9249e4f', '2024-08-22 04:07:47', '', ''),
(42, 'KSB2024010', 'Rafael', 'Dela Rosa', 'Villanueva', 'Male', 639282345670, 'rafael.villanueva@example.com', '31b083bc7281321ea98d3c1bc9701627', '2024-08-22 04:08:22', '', ''),
(45, 'KSB2024011', 'Sean', 'Kobe', 'Dime', 'Male', 9679215151, 'kobedime@gmail.com', '8189d5d4551ef7c14034917663cdedf7', '2024-08-22 06:26:36', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
