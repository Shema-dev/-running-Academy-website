-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 09:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `2013_road_races`
--

CREATE TABLE `2013_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2013_road_races`
--

INSERT INTO `2013_road_races` (`id`, `name`, `athlete`, `distance`, `time`, `dob`, `date`) VALUES
(4, 'Firgrove', 'Shema', '10km', '34:53', '2023-08-08', '2023-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `2013_time_trial`
--

CREATE TABLE `2013_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2013_time_trial`
--

INSERT INTO `2013_time_trial` (`id`, `month`, `name`, `time`, `dob`) VALUES
(5, 'February', 'Shema', '34:53', '2023-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `2014_road_races`
--

CREATE TABLE `2014_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2014_time_trial`
--

CREATE TABLE `2014_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2015_road_races`
--

CREATE TABLE `2015_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2015_time_trial`
--

CREATE TABLE `2015_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2016_road_races`
--

CREATE TABLE `2016_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2016_time_trial`
--

CREATE TABLE `2016_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2017_road_races`
--

CREATE TABLE `2017_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2017_time_trial`
--

CREATE TABLE `2017_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2018_road_races`
--

CREATE TABLE `2018_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2018_time_trial`
--

CREATE TABLE `2018_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2019_road_races`
--

CREATE TABLE `2019_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2019_time_trial`
--

CREATE TABLE `2019_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2020_road_races`
--

CREATE TABLE `2020_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2020_time_trial`
--

CREATE TABLE `2020_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2021_road_races`
--

CREATE TABLE `2021_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2021_time_trial`
--

CREATE TABLE `2021_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2022_road_races`
--

CREATE TABLE `2022_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2022_time_trial`
--

CREATE TABLE `2022_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2023_road_races`
--

CREATE TABLE `2023_road_races` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `athlete` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `2023_time_trial`
--

CREATE TABLE `2023_time_trial` (
  `id` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `athletes`
--

CREATE TABLE `athletes` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `five` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `fifteen` varchar(255) NOT NULL,
  `half` varchar(255) NOT NULL,
  `full` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `athletes`
--

INSERT INTO `athletes` (`id`, `name`, `dob`, `five`, `ten`, `fifteen`, `half`, `full`, `image`) VALUES
(3, 'Gershon Aziza', '2000-06-23', '15:54', '32:20', '50:20', '1:13:31', '2:48:45', 'FB_IMG_1644427156164.jpg'),
(4, 'Takunda Gadsikwa', '1999-01-23', '15:50', '34:04', '52:30', '1:16:31', '2:54:00', 'IMG-20221213-WA0010.jpg'),
(5, 'Major ', '1999-06-24', '16:30', '34:30', '52:50', '1:16:45', '2:59:59', 'FB_IMG_1641746973238.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Shema', 'shemakwitonda@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2013_road_races`
--
ALTER TABLE `2013_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2013_time_trial`
--
ALTER TABLE `2013_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2014_road_races`
--
ALTER TABLE `2014_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2014_time_trial`
--
ALTER TABLE `2014_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2015_road_races`
--
ALTER TABLE `2015_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2015_time_trial`
--
ALTER TABLE `2015_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2016_road_races`
--
ALTER TABLE `2016_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2016_time_trial`
--
ALTER TABLE `2016_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2017_road_races`
--
ALTER TABLE `2017_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2017_time_trial`
--
ALTER TABLE `2017_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_road_races`
--
ALTER TABLE `2018_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_time_trial`
--
ALTER TABLE `2018_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_road_races`
--
ALTER TABLE `2019_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_time_trial`
--
ALTER TABLE `2019_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_road_races`
--
ALTER TABLE `2020_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_time_trial`
--
ALTER TABLE `2020_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_road_races`
--
ALTER TABLE `2021_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2021_time_trial`
--
ALTER TABLE `2021_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2022_road_races`
--
ALTER TABLE `2022_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2022_time_trial`
--
ALTER TABLE `2022_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2023_road_races`
--
ALTER TABLE `2023_road_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2023_time_trial`
--
ALTER TABLE `2023_time_trial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `athletes`
--
ALTER TABLE `athletes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2013_road_races`
--
ALTER TABLE `2013_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `2013_time_trial`
--
ALTER TABLE `2013_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2014_road_races`
--
ALTER TABLE `2014_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2014_time_trial`
--
ALTER TABLE `2014_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2015_road_races`
--
ALTER TABLE `2015_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2015_time_trial`
--
ALTER TABLE `2015_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2016_road_races`
--
ALTER TABLE `2016_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2016_time_trial`
--
ALTER TABLE `2016_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2017_road_races`
--
ALTER TABLE `2017_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2017_time_trial`
--
ALTER TABLE `2017_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_road_races`
--
ALTER TABLE `2018_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_time_trial`
--
ALTER TABLE `2018_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_road_races`
--
ALTER TABLE `2019_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_time_trial`
--
ALTER TABLE `2019_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_road_races`
--
ALTER TABLE `2020_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_time_trial`
--
ALTER TABLE `2020_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2021_road_races`
--
ALTER TABLE `2021_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2021_time_trial`
--
ALTER TABLE `2021_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2022_road_races`
--
ALTER TABLE `2022_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2022_time_trial`
--
ALTER TABLE `2022_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2023_road_races`
--
ALTER TABLE `2023_road_races`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2023_time_trial`
--
ALTER TABLE `2023_time_trial`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `athletes`
--
ALTER TABLE `athletes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
