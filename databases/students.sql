-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 03:08 AM
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
-- Database: `attendance_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `index_number` varchar(50) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `attended` varchar(3) NOT NULL,
  `total_classes` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `index_number`, `subject_code`, `submission_time`, `attended`, `total_classes`) VALUES
(24, 'thanweer', '5864', 'COM2305', '2025-01-14 16:51:59', '', ''),
(25, 'afnan', '5931', '6576', '2025-01-14 17:44:22', '', ''),
(26, 'hikma', '1234', '6576', '2025-01-14 18:09:10', '', ''),
(27, 'hikma', '1234', '6576', '2025-01-14 18:09:21', '', ''),
(28, 'thanweer M F M', '5864', 'com1234', '2025-01-25 13:49:29', '', ''),
(29, 'Fahim Muhammed Thanweer', '5864', 'Com 2306', '2025-02-06 06:06:07', '', ''),
(30, 'Shakir', '2345', 'Ict 2403', '2025-02-08 05:10:14', '', ''),
(31, 'Fahim Muhammed Thanweer', '5864', 'Com2345', '2025-02-12 10:18:35', '', ''),
(32, 'Fahim Muhammed Thanweer', '5864', 'MAT1234', '2025-02-13 17:41:43', '', ''),
(33, 'Mohomed Fahim', '1234', 'MAT1234', '2025-02-28 12:03:25', '', ''),
(34, 'Mohomed M', '1245', 'MAT1234', '2025-02-28 12:04:23', '', ''),
(35, 'Mohomed Mr', '4456', 'MAT1234', '2025-02-28 12:04:57', '', ''),
(36, 'Mohomed Mrt', '4459', 'MAT1234', '2025-02-28 12:05:20', '', ''),
(37, 'Mohomed Mrtg', '4455', 'MAT1234', '2025-02-28 12:06:26', '', ''),
(38, 'Haadhi', '4452', 'MAT1234', '2025-02-28 12:06:49', '', ''),
(39, 'Ashan', '4453', 'MAT1234', '2025-02-28 12:07:06', '', ''),
(40, 'ffgfg', '4457', 'MAT1234', '2025-02-28 12:08:22', '', ''),
(41, 'Maryam', '2378', 'MAT1234', '2025-02-28 12:09:32', '', ''),
(42, 'Maryam f', '2379', 'MAT1234', '2025-02-28 12:09:56', '', ''),
(43, 'hidhaya', '1456', 'MAT5678', '2025-04-15 02:54:53', '', ''),
(44, 'maryam', '4567', 'BIO8976', '2025-04-15 02:58:36', '', ''),
(45, 'Thanweer', '5861', 'STA2345', '2025-04-15 03:00:06', '', ''),
(46, 'maryam', '9876', 'COM5673', '2025-04-15 03:02:51', '', ''),
(47, 'HiDHAYA MUEEN', '2345', 'MAT1234', '2025-04-19 11:29:51', '', ''),
(48, 'Hishma', '3143', 'STA2345', '2025-04-21 08:59:54', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
