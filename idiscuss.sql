-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 04, 2025 at 01:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.', '2025-06-25 21:02:47'),
(2, 'Javascript', 'JavaScript often abbreviated as JS, is a programming language and core technology of the World Wide Web, alongside HTML and CSS. Ninety-nine percent of websites use JavaScript on the client side for webpage behavior.', '2025-06-25 21:33:48'),
(3, 'Django', 'Django is a high-level Python web framework that enables rapid development of secure and maintainable websites. It handles much of the complexity of web development, allowing developers to focus on building the application logic.', '2025-06-27 19:41:15'),
(4, 'Flask', 'Flask is a lightweight Python web framework that is popular for building web applications and APIs. It\'s known for its simplicity and flexibility, allowing developers to quickly get started and customize their projects.', '2025-06-27 19:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'This is a comment.', 1, 1, '2025-07-18 16:58:12'),
(2, 'Comments are here.', 1, 3, '2025-07-19 10:25:58'),
(3, 'Can Sombody Please fix this.', 2, 2, '2025-07-19 10:38:01'),
(4, 'Can Sombody Please fix this.', 2, 6, '2025-07-19 10:43:26'),
(5, 'Hello', 2, 5, '2025-07-19 10:43:55'),
(6, 'How are you?', 1, 3, '2025-07-19 10:44:11'),
(7, 'ABC', 7, 7, '2025-07-25 13:16:31'),
(8, 'hi', 1, 15, '2025-07-25 15:43:32'),
(9, 'Hi', 1, 16, '2025-07-26 10:52:29'),
(10, 'hkjhkjkj', 10, 17, '2025-07-30 09:53:33'),
(11, 'mn', 11, 17, '2025-07-31 18:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to install Pyaudio.', 'I am not able to install Pyaudio on Macbook.', 1, 6, '2025-07-01 16:08:52'),
(2, 'Unable to use Python.', 'Please help me.', 1, 3, '2025-07-01 16:26:42'),
(3, 'Hi', 'Hello', 1, 3, '2025-07-16 17:44:17'),
(4, 'New Title', 'New Desc', 1, 2, '2025-07-16 17:47:38'),
(5, 'What is PHP?', 'How to learn PHP?', 1, 1, '2025-07-16 18:03:56'),
(6, 'Fetch API is not woring', 'I am into Trouble. My Fetch API is not working.', 2, 4, '2025-07-16 18:05:19'),
(7, 'I am not able to install vs code', 'XYZ', 1, 1, '2025-07-25 13:16:04'),
(8, 'hey this is jay', 'What can i do for you? ', 1, 16, '2025-07-26 10:51:39'),
(9, 'Hey', 'abc', 2, 16, '2025-07-27 11:26:39'),
(10, 'wed not good', '123', 1, 17, '2025-07-30 09:53:23'),
(11, 'jii', 'nmnm', 1, 17, '2025-07-31 18:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'this@test.com', '123', '2025-07-22 15:43:57'),
(2, 'jay@test.com', '$2y$10$UqilD7iL6.auMzqxOSWc3.aLCMwe2QcNPmsnELqh6LT0wuOxI2spK', '2025-07-22 15:44:17'),
(3, 'jk@test.com', '$2y$10$SmP09Vf6DzxuAgRg5oqThulhMPNFabLx/Ly.ynDIQ7PjT.lj74J56', '2025-07-22 15:45:33'),
(4, 'test@test.com', '$2y$10$ywZ2WbwBjepsKEEdk5D6guCJtceCEY3g/eNHFdVc9yAIM24Me3SCy', '2025-07-25 13:14:08'),
(5, 'jk@jk.com', '$2y$10$f3sS.rJNvyUsfyMhI3G3YuZD0F9JFgEk3QM/L2q.TJt9E8TV0Uvpi', '2025-07-25 13:14:34'),
(6, 'kat@123.com', '$2y$10$29rC82dnqeZjlNS6DhQ9e.PVtgOayefSs1fLtulLDf83LKwjfo6CK', '2025-07-25 13:18:29'),
(14, 'hi@123.com', '$2y$10$vf88RDsmXQqJNimUsmXWU.nDmvis/nRxi8uyGFvXx.B3LwC2cLppC', '2025-07-25 14:39:56'),
(15, 'hk@123.com', '$2y$10$A0AmSPxKvMGgtwL7vaj0SOBheINJ9xI.ZiR48dnNaTzf56PIFVsgS', '2025-07-25 15:31:52'),
(16, 'jay', '$2y$10$VTyiicRWkG7AYKwGCaaixOhjd4DIKK/wBAKrjmOxHQ8URUh4l.NFC', '2025-07-26 10:50:49'),
(17, 'khushbu', '$2y$10$f3p43OGErpxQGvzHf//cqeZCW22dRtrH3TGHQd6JN8LOlgsiBopRu', '2025-07-30 09:52:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
