-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 03:07 AM
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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `comment`, `submitted_at`) VALUES
(1, 'fahimthanweer09@gmail.com', 'wwjwjenwjdbqnsdb', '2025-04-19 02:52:57'),
(2, 'fahimthanweer09@gmail.com', 'hi buddy', '2025-04-19 02:54:37'),
(3, 'fahimthanweer09@gmail.com', 'heloo hi how are you , hope u are fine\r\n', '2025-04-19 02:56:15'),
(4, 'fahimthanweer09@gmail.com', 'wbewhbe', '2025-04-19 03:00:04'),
(5, 'fahimthanweer09@gmail.com', 'heloo guys', '2025-04-19 03:00:40'),
(6, 'fahimthanweer09@gmail.com', 'eeeeeeeeee', '2025-04-19 03:04:45'),
(7, 'fahimthanweer09@gmail.com', 'qeeeeeeeeeeee', '2025-04-19 03:06:28'),
(8, 'fahimthanweer09@gmail.com', 'm,,,,,,,,,,,', '2025-04-19 03:07:54'),
(9, 'fahimthanweer09@gmail.com', 'kjkjk', '2025-04-19 03:13:28'),
(10, 'fahimthanweer09@gmail.com', 'wwwwwwwwwwwwwwwwwwwwww', '2025-04-19 03:15:09'),
(11, 'fahimthanweer09@gmail.com', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2025-04-19 03:15:50'),
(12, 'fahimthanweer09@gmail.com', '22222222222222222222222222222', '2025-04-19 03:16:27'),
(13, 'fahimthanweer09@gmail.com', 'hi baba', '2025-04-19 11:26:34'),
(14, 'fahimthanweer09@gmail.com', 'hi , I love You Hishma\r\nH!$#/\\/\\@', '2025-04-19 11:28:26'),
(15, 'fahimthanweer09@gmail.com', 'hgghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-04-19 16:23:24'),
(16, '', '', '2025-04-21 05:28:53'),
(17, 'fahimthanweer09@gmail.com', 'sdkddddddddddddddddddddd', '2025-04-21 05:30:39'),
(18, 'fahimthanweer09@gmail.com', 'nnnnnnnnnnnnnnnnnnnnnnn', '2025-04-21 08:56:39'),
(19, '', '', '2025-04-21 10:00:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
