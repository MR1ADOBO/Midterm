-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 08:38 AM
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
-- Database: `mcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentID` varchar(25) NOT NULL,
  `doctorID` varchar(25) NOT NULL,
  `patientID` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `doctorID`, `patientID`, `date`, `time`) VALUES
('10001', '12045', '0001', 'Oct. 10', '1:30'),
('10002', '12305', '0002', 'Jan. 10', '7:50');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billID` varchar(25) NOT NULL,
  `patientID` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `paymentstatus` varchar(25) NOT NULL,
  `paymentDate` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billID`, `patientID`, `amount`, `paymentstatus`, `paymentDate`) VALUES
('10101', '0001', '12,000', 'Paid', 'Oct. 15'),
('20202', '0002', '20,000', 'Not Paid', 'Jan. 25');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `specialization` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `Mobile` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorID`, `name`, `lastname`, `specialization`, `email`, `Mobile`) VALUES
('12045', 'Sean Nichole', 'Guipo', 'Gaenecologist', 'Guipo@gmail.com', '09665318495'),
('12305', 'Kyle Renzo', 'Alis', 'Dermatologist', 'Alis@gmail.com', '09668657890');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `middle_initial` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `DOB` varchar(25) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `diagnosis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `lastname`, `middle_initial`, `age`, `gender`, `address`, `DOB`, `mobile`, `diagnosis`) VALUES
('0001', 'Rolly', 'Abella', 'G', '19', 'male', 'janiuay,iloilo', '05/20/2005', '0999947724', 'asthma'),
('0002', 'Mark Lester', 'Bachoco', 'I', '19', 'male', 'Ticud, La Paz', '05/20/2005', '09664328792', 'bone fracture');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` varchar(25) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `fullname`, `mobile`, `email`, `password`) VALUES
('34513', 'Kyle Renzo Alis', '09668657890', 'Alis@gmail.com', 'Alis1161'),
('34512', 'Sean Nichole Guipo', '09665318495', 'Guipo@gmail.com', 'Guipo1161');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD UNIQUE KEY `doctorID` (`doctorID`),
  ADD UNIQUE KEY `patientID` (`patientID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD UNIQUE KEY `patientID` (`patientID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorID`),
  ADD UNIQUE KEY `Mobile` (`Mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
