-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 02:45 PM
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
-- Database: `car_garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ImageID` int(11) NOT NULL,
  `ImageURL` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `KM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ImageID`, `ImageURL`, `Name`, `Price`, `Model`, `KM`) VALUES
(4, 'https://platform.cstatic-images.com/xlarge/in/v2/04c59dce-acd2-5d47-bbe9-158744b5fda6/dba45f2d-ad86-4e67-9aa2-36e5182b72f7/IL_wArJn7lorOFb-2WVW_OpzSdk.jpg', NULL, 977.00, 'New', 986);

-- --------------------------------------------------------

--
-- Table structure for table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `hours` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `day`, `hours`) VALUES
(1, 'Mon', '8:45 - 12:00, 14:00 - 18:00'),
(2, 'Tue', '8:45 - 12:00, 14:00 - 18:00'),
(3, 'Wed', '8:45 - 12:00, 14:00 - 18:00'),
(4, 'Thur', '8:45 - 12:00, 14:00 - 18:00'),
(5, 'Fri', '8:45 - 12:00, 14:00 - 18:00'),
(6, 'Sat', '08:00 - 14:00'),
(7, 'Sun', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `image_path`) VALUES
(12, 'Engine Oil', 'https://parkers-images.bauersecure.com/wp-images/177357/930x620/gettyimages-adding-engine-oil.jpg'),
(14, 'Car Filter', 'https://parkers-images.bauersecure.com/wp-images/177357/1200x800/gettyimages-changing-oil-filter.jpg?mode=max&amp;quality=90&amp;scale=down'),
(16, 'Brakes Work', 'https://di-uploads-pod14.dealerinspire.com/toyotaoforlando/uploads/2020/09/disc-brakes.jpg'),
(17, 'Full Car Service', 'https://cdn.wearemarmalade.co.uk/wam/2020-12/car-service.jpg'),
(18, 'Engine Service', 'https://makautocare.com/wp-content/uploads/2021/01/Engine_Services.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Phone_number` int(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `first_name`, `last_name`, `email`, `address`, `Phone_number`, `message`, `created_at`) VALUES
(2, 'Saqib', 'Waheed', 'saqibitman@gmail.com', 'NO Address', 987654, 'kjakjkjnsxkjnajn', '2024-01-19 14:06:52'),
(3, 'Saqib', 'Waheed', 'saqibitman@gmail.com', 'asnasknklasn', 0, 'nasklnxlkna', '2024-01-19 14:24:43'),
(4, 'Saqib', 'Waheed', 'saqibitman@gmail.com', 'NO Address', 987654, 'saxabkjajasn', '2024-01-19 14:31:02'),
(5, 'saqib', 'waheed', 'saqibbriefcase@gmail.com', 'laskjakb', 987654, 'klnkjnbabasnas', '2024-01-20 08:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_credentials`
--

INSERT INTO `user_credentials` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'administrator'),
(2, 'employee', '213', 'employee'),
(6, 'saqibbriefcase@gmail.com', '$2y$10$b8lswWqzUxtd1TgzKwwaW.Vmwup8PNjm9BKFFg1z96Eh9vQt67N4O', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ImageID`);

--
-- Indexes for table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_credentials`
--
ALTER TABLE `user_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
