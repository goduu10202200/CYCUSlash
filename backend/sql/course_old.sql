-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-10-16 16:33:54
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `course`
--

-- --------------------------------------------------------

--
-- 資料表結構 `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL COMMENT '編號',
  `question_id` int(11) NOT NULL COMMENT '題目編號',
  `answer` int(11) NOT NULL COMMENT '答案',
  `username` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `username`, `created_at`, `updated_at`) VALUES
(11, 1, 0, 2, '2018-09-22 15:23:16', '2018-09-22 15:38:51'),
(12, 2, 0, 2, '2018-09-22 15:23:32', '2018-09-22 15:39:04'),
(13, 5, 1, 2, '2018-09-22 15:39:16', '2018-09-22 15:39:16'),
(14, 7, 4, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(15, 9, 1, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(16, 11, 2, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(17, 10, 1, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(18, 12, 1, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(19, 14, 4, 2, '2018-09-22 15:41:42', '2018-09-22 15:41:42'),
(20, 1, 0, 1, '2018-09-22 15:57:11', '2018-09-22 15:57:11'),
(21, 2, 3, 1, '2018-09-22 15:59:41', '2018-09-22 15:59:41'),
(22, 5, 2, 1, '2018-09-22 15:59:41', '2018-09-22 15:59:41'),
(23, 8, 3, 1, '2018-09-22 15:59:41', '2018-09-22 15:59:41'),
(24, 9, 0, 1, '2018-09-22 15:59:42', '2018-09-22 15:59:42'),
(25, 10, 1, 1, '2018-09-22 15:59:42', '2018-09-22 15:59:42'),
(26, 12, 0, 1, '2018-09-22 15:59:42', '2018-09-22 15:59:42'),
(27, 13, 3, 1, '2018-09-22 15:59:42', '2018-09-22 15:59:42'),
(28, 16, 4, 1, '2018-09-22 15:59:42', '2018-09-22 15:59:42'),
(29, 18, 1, 1, '2018-09-22 15:59:42', '2018-09-22 16:02:43'),
(30, 1, 1, 10, '2018-10-03 14:27:38', '2018-10-03 14:27:38');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` int(1) NOT NULL,
  `department` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `member`
--

INSERT INTO `member` (`id`, `username`, `name`, `gender`, `department`, `created_at`, `updated_at`) VALUES
(1, '10694024', '吳冠興', 1, '建築系', '2018-09-22 05:28:21', '2018-10-03 12:42:58'),
(2, '10694002', '陳芳儀', 0, '資管系', '2018-09-22 05:29:12', '2018-09-22 17:14:47'),
(3, '10694001', '吳伊津', 0, '建築系', '2018-10-03 12:39:29', '2018-10-03 12:42:57'),
(4, '10694003', '丁唯馨', 0, '資管系', '2018-10-03 12:40:53', '2018-10-03 12:40:53'),
(5, '10694004', '忠義真', 0, '資管系', '2018-10-03 12:40:53', '2018-10-03 12:40:53'),
(6, '10694005', '葉思潔', 1, '建築系', '2018-10-03 12:40:53', '2018-10-03 12:42:50'),
(7, '10694006', '郭恬嘉', 1, '資管系', '2018-10-03 12:40:53', '2018-10-03 12:40:53'),
(8, '10694007', '李怡瑩', 0, '資管系', '2018-10-03 12:40:53', '2018-10-03 12:40:53'),
(9, '10694008', '郭雨新', 1, '建築系', '2018-10-03 12:40:53', '2018-10-03 12:42:53'),
(10, '10694009', '丁唯馨', 0, '資管系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(11, '10694010', '卓品如', 0, '機械系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(12, '10694011', '李玉璽', 1, '巨量碩士學程系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(13, '10694012', '王力宏', 0, '巨量碩士學程系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(14, '10694013', '張三', 1, '資管系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(15, '10694014', '胡志明', 1, '資管系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(16, '10694015', '高天賜', 0, '巨量碩士學程系', '2018-10-03 12:42:42', '2018-10-03 12:42:42'),
(17, '10694016', '孫中山', 1, '機械系', '2018-10-03 12:42:42', '2018-10-03 12:42:42');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usernameToid` (`username`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=31;

--
-- 使用資料表 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `usernameToid` FOREIGN KEY (`username`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
