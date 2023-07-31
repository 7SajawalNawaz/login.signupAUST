-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressdetails`
--

CREATE TABLE `addressdetails` (
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp`
--

CREATE TABLE `cp` (
  `selectprogram` varchar(255) NOT NULL DEFAULT 'Bsc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `fathername` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('f','fm') NOT NULL,
  `domicile` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `fathercnic` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `p_o_s` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `firstname`, `lastname`, `fathername`, `dob`, `gender`, `domicile`, `district`, `nationality`, `cnic`, `fathercnic`, `email`, `contact`, `p_o_s`) VALUES
(1, 'm', 'a', 'r', '0000-00-00', '', 'Domicile', 'District', 'Nationality', '', '', '', 0, 'Software Engneering'),
(2, 'cghcgcg', '', '', '0000-00-00', 'f', '', '', '', '', '', '', 0, ''),
(3, 'cghcgcg', '', '', '0000-00-00', 'f', '', '', '', '', '', '', 0, ''),
(4, 'cghcgcg', '', '', '0000-00-00', '', '', '', '', '', '', '', 0, ''),
(5, 'hjk', '', '', '0000-00-00', '', '', '', '', '', '', '', 0, ''),
(6, 'cghcgcg', 'fghfhg', 'rftydg', '0000-00-00', '', 'AJK', 'Haripur', 'Nationality', '', '', '', 0, 'Select A Program'),
(7, '', '', '', '0000-00-00', '', 'Domicile', 'District', 'Nationality', '', '', '', 0, 'Select A Program'),
(8, '', '', '', '0000-00-00', '', 'Domicile', 'District', 'Nationality', '', '', '', 0, 'Select A Program');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Sajawal Nawaz', '1.sajawalnawaz@gmail.com', '46cd5ed1c90308a99718bf57af907f4d', 'user'),
(2, 'Sajawal Nawaz', 'sajawal07nawaz@gmail.com', '867e32ae09050c2a0a0f5b5646cc72d2', 'user'),
(3, 'mubarak', 'mb@yahoo.com', '3917b35f95ac2cf0ec9f71224ee1d0f3', 'admin'),
(4, 'noman', 'nm@gmail.com', '0c1300db57bef58404261cc20c271cd1', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
