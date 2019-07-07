-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: 2019 年 6 月 13 日 08:40
-- サーバのバージョン： 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsf_d03_db10`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'Ronnie Coleman', 'https://ronniecoleman.net/', '8times One of legends', '2019-06-12 19:11:00'),
(2, 'Arnold Schwarzenegger', 'http://www.schwarzenegger.com/', '7 times I will be back.', '2019-06-13 01:32:06'),
(3, 'Phillip Heath', 'http://www.phillipheath.com/', '7 times The Gift', '2019-06-13 01:33:18'),
(4, 'Dorian Yates', 'https://dynutrition.com/', '6times Unbelievable back', '2019-06-13 01:34:46'),
(5, 'Jay Cutler', 'https://jaycutler.com/', '4 times The Ultimate Beef', '2019-06-13 01:36:10'),
(6, 'Sergio Oliva', 'https://www.oldschoollabs.com/sergio-oliva-myth-part-1/\r\n', '3times ビスケットオリバのモデル', '2019-06-13 01:37:11'),
(7, 'Shawn Rhoden\r\n', 'https://shawnrhoden.com/', 'Last year champ Overcoming dependence on alcohol', '2019-06-13 01:42:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
