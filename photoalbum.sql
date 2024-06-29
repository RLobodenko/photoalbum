-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 29, 2024 at 10:26 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoalbum`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `description`, `created_at`, `image`) VALUES
(8, '231', '123321', '2024-06-26 18:45:33', 'uploads/2022-04-28 22.01.36.jpg'),
(9, '321123', '123123', '2024-06-26 18:45:51', 'uploads/6sGh296-L0M.jpg'),
(10, '123', '123', '2024-06-27 15:37:09', 'uploads/photo_2022-07-31 15.43.59.jpeg'),
(11, '321312312321', '312312321321', '2024-06-29 09:55:29', 'uploads/Starlink_Mission_(47926144123).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `comment`, `created_at`, `name`) VALUES
(1, 4, 'Первый коммент', '2024-06-29 09:38:50', 'Иван'),
(2, 4, 'фывапфывап', '2024-06-29 09:40:40', 'Вася'),
(3, 4, '1233', '2024-06-29 09:44:50', '123'),
(4, 1, '123', '2024-06-29 09:45:07', '123'),
(5, 1, 'asfasf', '2024-06-29 09:47:08', 'xfasdfasf'),
(6, 5, '231312', '2024-06-29 09:55:16', '321132312');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `photo_id`, `type`, `created_at`) VALUES
(1, 1, 'like', '2024-06-28 11:35:11'),
(2, 1, 'like', '2024-06-28 11:36:16'),
(3, 1, 'like', '2024-06-28 11:38:44'),
(4, 1, 'like', '2024-06-28 11:38:50'),
(5, 1, 'like', '2024-06-28 11:41:57'),
(6, 1, 'like', '2024-06-28 11:42:02'),
(7, 1, 'like', '2024-06-28 11:42:03'),
(8, 1, 'like', '2024-06-28 11:42:04'),
(9, 1, 'like', '2024-06-28 11:42:04'),
(10, 1, 'like', '2024-06-28 11:42:04'),
(11, 1, 'like', '2024-06-28 11:42:04'),
(12, 1, 'like', '2024-06-28 11:42:05'),
(13, 1, 'like', '2024-06-28 11:42:05'),
(14, 1, 'like', '2024-06-28 11:42:05'),
(15, 3, 'like', '2024-06-28 11:42:08'),
(16, 3, 'like', '2024-06-28 11:42:08'),
(17, 3, 'like', '2024-06-28 11:42:08'),
(18, 3, 'like', '2024-06-28 11:42:08'),
(19, 3, 'like', '2024-06-28 11:42:09'),
(20, 2, 'like', '2024-06-28 11:43:04'),
(21, 4, 'like', '2024-06-28 11:43:36'),
(22, 4, 'dislike', '2024-06-28 11:49:09'),
(23, 4, 'dislike', '2024-06-28 11:49:11'),
(24, 4, 'dislike', '2024-06-28 11:49:11'),
(25, 4, 'dislike', '2024-06-28 11:49:11'),
(26, 4, 'dislike', '2024-06-28 11:49:12'),
(27, 4, 'dislike', '2024-06-28 11:49:12'),
(28, 4, 'dislike', '2024-06-28 11:49:12'),
(29, 4, 'dislike', '2024-06-28 11:49:13'),
(30, 4, 'dislike', '2024-06-28 11:49:13'),
(31, 4, 'dislike', '2024-06-28 11:49:13'),
(32, 1, 'dislike', '2024-06-28 11:55:41'),
(33, 1, 'dislike', '2024-06-28 11:55:42'),
(34, 1, 'like', '2024-06-28 11:57:42'),
(35, 1, 'like', '2024-06-28 11:57:42'),
(36, 1, 'like', '2024-06-28 11:57:42'),
(37, 3, 'dislike', '2024-06-28 11:57:48'),
(38, 3, 'dislike', '2024-06-28 11:57:48'),
(39, 3, 'dislike', '2024-06-28 11:57:48'),
(40, 3, 'dislike', '2024-06-28 11:57:49'),
(41, 4, 'like', '2024-06-28 11:59:29'),
(42, 4, 'like', '2024-06-28 11:59:29'),
(43, 4, 'like', '2024-06-28 11:59:30'),
(44, 4, 'like', '2024-06-28 11:59:30'),
(45, 4, 'like', '2024-06-28 11:59:30'),
(46, 4, 'like', '2024-06-28 11:59:30'),
(47, 2, 'like', '2024-06-28 11:59:47'),
(48, 2, 'like', '2024-06-28 11:59:47'),
(49, 2, 'like', '2024-06-28 11:59:47'),
(50, 2, 'like', '2024-06-28 11:59:47'),
(51, 2, 'like', '2024-06-28 11:59:48'),
(52, 2, 'like', '2024-06-28 11:59:48'),
(53, 2, 'like', '2024-06-28 11:59:48'),
(54, 2, 'like', '2024-06-28 11:59:48'),
(55, 4, 'like', '2024-06-28 12:02:35'),
(56, 4, 'like', '2024-06-28 12:02:35'),
(57, 4, 'like', '2024-06-28 12:02:35'),
(58, 4, 'like', '2024-06-28 12:02:35'),
(59, 4, 'like', '2024-06-28 12:02:35'),
(60, 4, 'like', '2024-06-28 12:02:35'),
(61, 4, 'like', '2024-06-28 12:02:36'),
(62, 4, 'like', '2024-06-28 12:02:36'),
(63, 4, 'like', '2024-06-28 12:02:36'),
(64, 4, 'like', '2024-06-28 12:02:36'),
(65, 4, 'like', '2024-06-28 12:02:36'),
(66, 4, 'like', '2024-06-28 12:02:36'),
(67, 1, 'like', '2024-06-28 15:57:16'),
(68, 1, 'like', '2024-06-28 15:57:18'),
(69, 1, 'like', '2024-06-28 15:57:19'),
(70, 1, 'like', '2024-06-28 15:57:19'),
(71, 1, 'like', '2024-06-28 15:57:19'),
(72, 1, 'like', '2024-06-28 15:57:19'),
(73, 1, 'like', '2024-06-28 15:57:19'),
(74, 3, 'dislike', '2024-06-28 15:57:28'),
(75, 3, 'dislike', '2024-06-28 15:57:28'),
(76, 3, 'dislike', '2024-06-28 15:57:28'),
(77, 3, 'dislike', '2024-06-28 15:57:28'),
(78, 3, 'dislike', '2024-06-28 15:57:28'),
(79, 3, 'dislike', '2024-06-28 15:57:28'),
(80, 3, 'dislike', '2024-06-28 15:57:29'),
(81, 3, 'dislike', '2024-06-28 15:57:29'),
(82, 3, 'dislike', '2024-06-28 15:57:29'),
(83, 3, 'dislike', '2024-06-28 15:57:29'),
(84, 4, 'like', '2024-06-29 08:53:06'),
(85, 4, 'like', '2024-06-29 08:53:07'),
(86, 4, 'like', '2024-06-29 08:53:07'),
(87, 4, 'like', '2024-06-29 08:53:07'),
(88, 4, 'like', '2024-06-29 08:53:07'),
(89, 4, 'like', '2024-06-29 08:53:08'),
(90, 1, 'like', '2024-06-29 09:45:13'),
(91, 1, 'dislike', '2024-06-29 09:45:14'),
(92, 1, 'like', '2024-06-29 09:47:31'),
(93, 1, 'like', '2024-06-29 09:47:32'),
(94, 1, 'like', '2024-06-29 09:47:32'),
(95, 1, 'like', '2024-06-29 09:47:32'),
(96, 1, 'like', '2024-06-29 09:47:32'),
(97, 1, 'like', '2024-06-29 09:47:32'),
(98, 1, 'like', '2024-06-29 09:47:48'),
(99, 1, 'like', '2024-06-29 09:50:24'),
(100, 1, 'like', '2024-06-29 09:50:27'),
(101, 1, 'like', '2024-06-29 09:50:28'),
(102, 1, 'like', '2024-06-29 09:52:49'),
(103, 1, 'like', '2024-06-29 09:53:06'),
(104, 1, 'like', '2024-06-29 09:53:07'),
(105, 1, 'like', '2024-06-29 09:53:08'),
(106, 1, 'like', '2024-06-29 09:53:09'),
(107, 1, 'dislike', '2024-06-29 09:53:51'),
(108, 1, 'dislike', '2024-06-29 09:53:52'),
(109, 1, 'dislike', '2024-06-29 09:53:52'),
(110, 1, 'like', '2024-06-29 09:53:54'),
(111, 3, 'like', '2024-06-29 09:54:01'),
(112, 3, 'dislike', '2024-06-29 09:54:02'),
(113, 5, 'like', '2024-06-29 09:55:08'),
(114, 5, 'like', '2024-06-29 09:55:09'),
(115, 5, 'like', '2024-06-29 09:55:09'),
(116, 5, 'dislike', '2024-06-29 09:55:10'),
(117, 5, 'dislike', '2024-06-29 09:55:10'),
(118, 5, 'dislike', '2024-06-29 09:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `file_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `album_id`, `title`, `description`, `file_name`, `created_at`) VALUES
(1, 8, 'Фото 1', 'Описание 1', 'uploads/photos/photo_2022-07-31 15.44.02.jpeg', '2024-06-27 09:32:51'),
(2, 8, 'photo 2', 'photo2', 'uploads/photos/photo_2022-07-31 15.44.18.jpeg', '2024-06-27 09:33:16'),
(3, 8, 'photo 3', 'photo 3', 'uploads/photos/2022-04-28 22.03.18.jpg', '2024-06-27 09:34:07'),
(4, 10, '123', '123', 'uploads/photos/photo_2022-07-31 15.44.06.jpeg', '2024-06-27 15:37:45'),
(5, 10, '1233333', '33333', 'uploads/photos/silicon-vally-facts-feat-1.jpg', '2024-06-29 09:55:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
