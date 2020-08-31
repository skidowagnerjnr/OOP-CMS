-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 01:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(2, 'dan@gmail.com', 'dan12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(0, 'Pansite health articles.'),
(1, 'News from your chapter'),
(4, 'YESSSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! I FUCKING DID IT');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT current_timestamp(),
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `content`, `author`, `images`, `dates`, `tags`) VALUES
(7, 1, 'Final test for admin panel', '                                      Final test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panelFinal test for admin panel                                  ', 'Admin Controller', 'IMG_20190830_145920.jpg', '2020-06-14 12:19:48', 'final, test,admin'),
(8, 0, 'CHECKING  UPDATE MODEL!!!', '                                      CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!CHECK UPDATE MODEL!!!                                  ', 'Update Admin', 'IMG_20190913_204531.jpg', '2020-06-14 14:23:09', 'update, admin, model'),
(12, 4, 'CMS COMPLETED!!!!!!! CHECKING FOR FINAL TEST!!!!!!!!!!!!', '                   If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.If you are connected but behind a firewall, check that Firefox has permission to access the Web.                 ', 'Manny Junior', 'IMG_20190913_204219.jpg', '2020-06-15 23:30:05', 'checks, admin, test'),
(13, 1, 'New Weather Update', 'New Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather UpdateNew Weather Update', 'Manny C', 'FB_IMG_1529857457616.jpg', '2020-06-30 21:17:32', 'weather, updates');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
