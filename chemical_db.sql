-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 01:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(5, 'adminmk', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(38, 1, 31, 'Iodine 50 gm', 100, 8, 'iodin.png');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `age`, `sex`, `phone`, `email`, `address`, `password`) VALUES
(1, 'employee', 22, 'male', 16161611111, 'mk@gmial.com', 'badda, Dhaka 1212', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'zidan', 25, 'male', 1521509031, '6884887987@gmial.com', 'dhaka', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 0, 'mxn vhxbcv', 'mk@gmial.com', '684684684', 'hcjhscbasjcabs'),
(3, 1, 'mn vulan', 'mk@gmial.com', '684684684', 'good');


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(7, 1, 'zidan', '1611496142', 'mz@gmail.com', 'credit card', '12, 5, Badda, xyz, dhaka, xyz, bangladesh - 1212', 'Iodine 50 gm', 100, '2022-09-18', 'pending'),
(8, 1, 'zidan', '1611496142', 'mz@gmail.com', 'bkash', '12, 5, Badda, xyz, dhaka, xyz, bangladesh - 1212', 'Iodine 50 gm ', 100, '2022-09-18', 'pending');
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `popularity` int(8) DEFAULT NULL,
  `disprice` int(10) DEFAULT NULL,
  `desc` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `popularity`, `disprice`, `desc`) VALUES
(27, 'Calcium Hydroxide CaO or quick lime 100 gm', 'solid', 80, 'png-trcao2.png', NULL, NULL, NULL),
(28, 'HydroChloric Acid HCL 650 ml', 'liquid', 200, 'hcle.png', NULL, NULL, NULL),
(29, 'Hydrogen Gas H2 Compact cylinder 2L', 'gaseous', 300, 'ssh.png', NULL, NULL, NULL),
(30, 'Ammonium Chloride 100 gm', 'solid', 120, 'amonia.png', NULL, NULL, NULL),
(31, 'Iodine 50 gm', 'solid', 100, 'iodin.png', NULL, NULL, NULL),
(32, 'Sulphuric Acid H2SO4 200 ml', 'liquid', 200, 'sulp.png', NULL, NULL, NULL),
(33, 'Sodium Hydroxide or Caustic Soda 500 ml', 'liquid', 300, 'naoHpng.png', NULL, NULL, NULL),
(34, 'Nitrogen Gas N2 cylinder 5L','gaseous',500, 'n2.png', NULL, NULL, NULL),
(35, 'Phenolphthalein indicator 300 ml', 'liquid', 150, 'm652-500g.png', NULL, NULL, NULL),
(36, 'Potassium Chloride KCL 100 gm', 'solid', 50, 'Potassium-Chloride.png', NULL, NULL, NULL),
(37, 'Alkane 80 ml', 'liquid',100, 'Ethane.png', NULL, NULL, NULL),
(40, 'Methyl orange indicator 50 ml', 'liquid', 75, 'me.png', NULL, NULL, NULL),
(41, 'Formaldehyde/Formalin 0-CH2 3L', 'liquid', 300, 'fmd.png', NULL, NULL, NULL),
(42, 'Acetic Acid or Ethanoic Acid 1L', 'liquid', 200, 'thumbnail3.png', NULL, NULL, NULL),
(43, 'Helium gas 4L compact Cylinder', 'gaseous', 500, 'he.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `rating` int(2) NOT NULL,
  `review` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'zidan', 'mz@gmail.com', '1611496142', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '12, 5, Badda, xyz, dhaka, xyz, bangladesh - 1212');

CREATE TABLE `licens` (
  `id` int(100) NOT NULL,
  `license` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `licens`(`id`,`license`) VALUES
(100,12345),
(200,22345);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `licens`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `licens`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
