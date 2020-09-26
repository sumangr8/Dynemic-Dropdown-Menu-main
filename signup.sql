-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 10:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(8) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `res_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `s_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `size` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `mobile`, `gender`, `qualification`, `pic`, `path`, `date`, `size`, `status`) VALUES
(1, 'Neha kumari', 'neha@gmail.com', '123', '6203887749', 'Female', 'BCA,MCA', 'neha.png', 'img/neha.png', '0000-00-00', '', 0),
(2, 'bunty kumar', 'bunty12@gmail.com', '852', '', '', '', '', '', '0000-00-00', '', 0),
(4, 'dolly', 'dolly@gmail.com', '123', '', '', '', '', '', '0000-00-00', '', 0),
(9, 'dolly kumari1', 'd@gmail.com', '456', '', '', '', '', '', '0000-00-00', '', 0),
(10, 'suman kumar singh', 'suman@gmail.com', '123', '', '', '', '', '', '0000-00-00', '', 0),
(11, 'kishu kumar', 'kishu1@gmial.com', 'pou', '', '', '', '', '', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `menu_id` varchar(100) DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `menu_id`, `page`) VALUES
(1, 'Home', NULL, 'index.php'),
(2, 'Products', NULL, NULL),
(3, 'Services', NULL, NULL),
(4, 'About', NULL, 'about.php'),
(5, 'Service 1', '3', 'service1.php'),
(6, 'Service2', '3', 'service2.php'),
(7, 'Product1', '2', 'product1.php'),
(8, 'Product2', '2', 'product2.php'),
(9, 'Product3', '2', 'product3.php'),
(10, 'Product4', '2', 'product4.php'),
(11, 'Product5', '2', 'product5.php'),
(12, 'Contact', NULL, 'contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_roll` varchar(100) NOT NULL,
  `std_suname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `std_name`, `std_roll`, `std_suname`) VALUES
(1, 'Neha', '1', 'Kumari'),
(2, 'Micki', '2', 'Kumari'),
(3, 'Ram', '4', 'Kumar'),
(4, 'Rahul 1', '5', 'Kumar'),
(5, 'Sishu 2', '6', 'Rai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
