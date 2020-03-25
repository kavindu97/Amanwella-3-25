-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 07:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amanwella`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `res_id` int(11) NOT NULL,
  `reservation_type` varchar(255) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `room_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`res_id`, `reservation_type`, `check_in`, `check_out`, `adults`, `children`, `room_count`) VALUES
(1, 'executive_room', '2020-03-02', '2020-03-05', 1, 2, 2),
(2, 'executive_room', '2020-03-03', '2020-03-12', 1, 1, 1),
(3, 'executive_room', '2020-03-04', '2020-03-27', 1, 1, 1),
(4, 'executive_room', '2020-03-03', '2020-03-04', 5, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `mobile` int(11) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `position` varchar(256) NOT NULL,
  `tow` varchar(256) NOT NULL,
  `profile_picture` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `last_name`, `email`, `mobile`, `dob`, `address`, `gender`, `position`, `tow`, `profile_picture`) VALUES
(1, 'jhgjhg', 'jhgjhg', 'jhgjhg', 123, '0000-00-00', 'jhgjhg', 'jhgjhg', 'jhgjhg', 'jhgjhg', 'jhgjhg');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `first_name`, `last_name`, `email`, `mobile`, `dob`, `address`, `gender`, `profile_picture`) VALUES
(1, 'Kavindu', 'Ariyasinghe', 'kavindu@gmail.com', '0719584986', '1997-09-27', 'Matara, Sri Lanka', 'Male', 'Test'),
(2, 'Nimesh', 'Gunathilake', 'nimesh@gmail.com', '0719764849', '1998-09-27', 'Gampaha, Sri Lanka', 'Male', 'Test'),
(3, 'Randil', 'Gurusinghe', 'randil@gmail.com', '0711235686', '1997-07-27', 'Matara, Sri Lanka', 'Male', 'Test'),
(4, 'Kasun', 'Wimalasuriya', 'kasun@gmail.com', '0772584869', '1997-03-27', 'Galle, Sri Lanka', 'Male', 'Test'),
(5, 'Chenuka', 'Sumanasekara', 'chenuka@gmail.com', '0711234986', '2020-02-07', 'Kandy, Sri Lanka', 'Male', 'Test'),
(6, 'Charith', 'Jayakantha', 'charith@gmail.com', '0713221553', '2020-02-19', 'Matara, Sri Lanka', 'Male', 'Test'),
(10, 'Chalaka', 'Jayasinghe', 'chalaka@gmail.com', '0775478665', '1997-06-17', 'Kandy, Sri Lanka', 'Male', ''),
(11, 'Isuru', 'Sahan', 'isuru@gmail.com', '0765386456', '1997-06-10', 'Kandy, Sri Lanka', 'Male', ''),
(12, 'Uvin', 'Tharuka', 'uvini@gmail.com', '0785372543', '1999-06-15', 'Matara, Sri Lanka', 'Male', ''),
(13, 'Kasun', 'Perera', 'perera@gmail.com', '075678456', '1995-06-13', 'Galle, Sri Lanka', 'Male', ''),
(15, 'Nipun', 'Madushan', 'nipun@gmail.com', '0754367541', '1997-06-24', 'Maharagama, Sri Lanka', 'Male', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
