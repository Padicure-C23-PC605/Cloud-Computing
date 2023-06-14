-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 05:12 PM
-- Server version: 5.7.40-google-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padicure_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `howtocure` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `image`, `description`, `howtocure`) VALUES
(1, 'Brown Spot', 'https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg', 'ini Brown Spot', '- Use resistant varieties. \r\n- Contact your local agriculture office for up-to-date lists of varieties available.\r\n- Use fungicides (e.g., iprodione, propiconazole, azoxystrobin, trifloxystrobin, and carbendazim) as seed treatments.\r\n- Treat seeds with hot water (53−54°C) for 10−12 minutes before planting, to control primary infection at the seedling stage. To increase effectiveness of treatment, pre-soak seeds in cold water for eight hours.'),
(2, 'Healthy', 'https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg', 'ini Healthy', 'how to cure healthy'),
(3, 'Hispa', 'https://storage.googleapis.com/cs_padicure/public/items/Hispa.jpg', 'ini Hispa', 'how to cure hispa'),
(4, 'Leaf Blast', 'https://storage.googleapis.com/cs_padicure/public/items/LeafBlast.jpg', 'ini Leaf Blast', 'how to cure leaf blast');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `image`, `createdAt`) VALUES
(3, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-1b174cea-09f2-11ee-9c1b-e33b29460dcd-Hispa.jpg', '2023-06-13 13:56:35'),
(4, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-4e79b586-09f3-11ee-830d-6df54eea6317-abcd.png', '2023-06-13 14:05:11'),
(5, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-61885182-09f3-11ee-8a3a-6df54eea6317-Hispa.jpg', '2023-06-13 14:05:41'),
(6, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-936044d0-09f3-11ee-9c37-8ddf1935a51e-LeafBlast.jpg', '2023-06-13 14:07:07'),
(7, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-ababb9a2-09f3-11ee-9c37-8ddf1935a51e-Healthy.jpg', '2023-06-13 14:07:46'),
(8, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-e9c42ab4-09fb-11ee-b296-71188a320e8a-WhatsApp%20Image%202023-06-07%20at%2021.40.02.jpeg', '2023-06-13 15:06:47'),
(9, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-08dffa72-09fc-11ee-b296-71188a320e8a-padi.jpg', '2023-06-13 15:07:38'),
(10, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-12968478-09fc-11ee-b296-71188a320e8a-rice-hispa-rice-1553250919.jpg', '2023-06-13 15:07:54'),
(11, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-1fae931c-09fc-11ee-b296-71188a320e8a-padi.jpg', '2023-06-13 15:08:16'),
(12, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-625b9e6c-09fc-11ee-b296-71188a320e8a-rice-hispa-rice-1553250919.jpg', '2023-06-13 15:10:08'),
(13, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-7f0e2002-09fc-11ee-b296-71188a320e8a-padi_coklat.jpg', '2023-06-13 15:10:56'),
(14, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-134a4048-09fd-11ee-b296-71188a320e8a-202306134314217820226515804.jpg', '2023-06-13 15:15:05'),
(15, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-272c0880-09fd-11ee-b296-71188a320e8a-20230613.jpg', '2023-06-13 15:15:38'),
(16, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-314b40a6-09fd-11ee-b296-71188a320e8a-202306137264056795852120401.jpg', '2023-06-13 15:15:55'),
(17, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-3454beda-09fd-11ee-b296-71188a320e8a-202306135030499951420231866.jpg', '2023-06-13 15:16:00'),
(18, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-36e6ba0e-09fd-11ee-b296-71188a320e8a-202306138736359030890202415.jpg', '2023-06-13 15:16:05'),
(19, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-39536fbc-09fd-11ee-b296-71188a320e8a-202306139104111676200351427.jpg', '2023-06-13 15:16:09'),
(20, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-3c8141aa-09fd-11ee-b296-71188a320e8a-20230613396827279400701241.jpg', '2023-06-13 15:16:14'),
(21, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-4ee1a1d2-09fd-11ee-b296-71188a320e8a-image_processing20220902-2740614-ate1ws.jpg', '2023-06-13 15:16:45'),
(22, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-f49cbf6c-0a1b-11ee-b07f-393bdf6fc41f-abcd.png', '2023-06-13 18:56:09'),
(23, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-98360f38-0a90-11ee-b69b-6d42fb69dfb3-abcd.png', '2023-06-14 08:51:06'),
(24, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-253fccfa-0a93-11ee-9b9b-c1ca8915c73c-abcd.png', '2023-06-14 09:09:21'),
(25, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-3a8ac8d0-0a93-11ee-929a-c1ca8915c73c-Hispa.jpg', '2023-06-14 09:09:56'),
(26, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-2f78b93e-0a9d-11ee-9e7f-5f6834a1bccf-Hispa.jpg', '2023-06-14 10:21:13'),
(27, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-3c518b4a-0a9d-11ee-99e1-5f6834a1bccf-abcd.jpg', '2023-06-14 10:21:33'),
(28, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-fa3f1744-0aa2-11ee-a900-8f53d00ba080-abcd.jpg', '2023-06-14 11:02:41'),
(29, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-44fa2972-0aa8-11ee-b43b-8f1c11699417-202306141544463520547248536.jpg', '2023-06-14 11:40:34'),
(30, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-3369b424-0aa9-11ee-b7bb-5bfa351ac0ed-WhatsApp%20Image%202023-06-07%20at%2021.40.02.jpeg', '2023-06-14 11:47:14'),
(31, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-badfdd98-0aa9-11ee-b7bb-5bfa351ac0ed-padi.jpg', '2023-06-14 11:51:00'),
(32, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-f7151710-0aa9-11ee-a231-5bfa351ac0ed-202306145854545258856782251.jpg', '2023-06-14 11:52:41'),
(33, 'https://storage.googleapis.com/cs_padicure/public/uploads/padicure-f9e4c832-0aa9-11ee-a231-5bfa351ac0ed-spk.png', '2023-06-14 11:52:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
