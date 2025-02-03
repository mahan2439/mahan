-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 10:45 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `summary`, `content`, `image`, `category_id`, `created_at`) VALUES
(4, 'واکنش رسمی دبیرکل AFC به برگزاری بازی‌های ایران در کشور ثالث', 'دبیرکل کنفدراسیون فوتبال آسیا (AFC) درباره پرونده میزبانی تیم‌های ایرانی از حریفان‌شان در رقابت‌های قاره‌ای اظهارنظر کرد.', 'به گزارش خبرگزاری تسنیم، کنفدراسیون فوتبال آسیا می‌گوید با توجه به شرایط سیاسی و مسائل امنیتی موضوع انتقال بازی‌های نمایندگان این کشور به کشور ثالث را در دست بررسی دارد.\r\n\r\nبخوانید\r\nالنصر: درخواست بازی با استقلال در زمین بی‌طرف را نداده‌ایم\r\n\r\nویندزور جان، دبیرکل کنفدراسیون فوتبال آسیا در این باره به روزنامه الریاضیه عربستان گفت: AFC در حال حاضر روی تمامی احتمالات پرونده ایران کار می‌کند. هنوز تصمیم نهایی را در این مورد اتخاذ نکرده‌ایم و به همین دلیل نمی‌توانم توضیح بیشتری بدهم. با این حال تصمیم انتقال بازی‌های خانگی ایران در رقابت‌های آسیایی به کشور ثالت روی میز است.', '1400102219355264924523394.jpg', 1, '2024-10-04 09:05:48'),
(6, 'qqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqq', 'Screenshot 2024-11-14 135154.png', 2, '2024-11-19 13:16:05'),
(7, 'wwwwwwwwww', 'wwwwwwwwwwwwwww', 'wwwwwwwwwww', 'Screenshot 2024-09-27 162559.png', 1, '2024-11-19 13:16:25'),
(8, 'eeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeee', 'Screenshot 2024-10-15 150351.png', 1, '2024-11-19 13:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `image` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `created_at`) VALUES
(27, 'hitman3', 'marhamarhamarhamarhamarhamarha', '20.000', 'Screenshot 2024-11-14 135154.png', '2024-12-02 20:10:30'),
(28, 'mahan', 'mahan ideli 17 tehran shahre qods ', '20.000', 'Screenshot 2024-09-13 153458.png', '2024-12-02 20:47:30'),
(30, 'ali reza', 'alireza 20 sale az tehrane andishe faz 4', '800.000', 'Screenshot 2024-09-13 154642.png', '2024-12-02 20:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `is_admin`, `created_at`) VALUES
(10, 'mahan', '09051759806', 'c4ca4238a0b923820dcc509a6f75849b', 1, '2024-11-28 22:13:53'),
(11, 'mahan', 'mahan24395858', 'c4ca4238a0b923820dcc509a6f75849b', 0, '2024-11-28 22:59:54'),
(12, 'mahan', 'alimahan', 'c4ca4238a0b923820dcc509a6f75849b', 0, '2024-11-29 22:03:28'),
(13, 'mahan', '2146810863', 'c81e728d9d4c2f636f067f89cc14862c', 1, '2024-11-29 22:04:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
