-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2018 at 08:13 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_children`
--

CREATE TABLE `menu_children` (
  `children_id` int(5) NOT NULL,
  `teks` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `fk_parent_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_children`
--

INSERT INTO `menu_children` (`children_id`, `teks`, `link`, `fk_parent_id`) VALUES
(1, 'iPhone Repair', 'iphone-repair.html', 1),
(2, 'Samsung Repair', 'samsung-repair.html', 2),
(3, 'iPad Repair', 'ipad-repair.html', 1),
(4, 'iMac Repair', 'imac-repair.html', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_parents`
--

CREATE TABLE `menu_parents` (
  `parent_id` int(5) NOT NULL,
  `teks` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `is_parent` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_parents`
--

INSERT INTO `menu_parents` (`parent_id`, `teks`, `link`, `is_parent`) VALUES
(1, 'Apple Repair', '#', 1),
(2, 'Android Repair', '#', 1),
(3, 'Setting', 'setting.html', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_children`
--
ALTER TABLE `menu_children`
  ADD PRIMARY KEY (`children_id`);

--
-- Indexes for table `menu_parents`
--
ALTER TABLE `menu_parents`
  ADD PRIMARY KEY (`parent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
