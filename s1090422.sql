-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-25 15:17:48
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1090422`
--

-- --------------------------------------------------------

--
-- 資料表結構 `re_admin`
--

CREATE TABLE `re_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_admin`
--

INSERT INTO `re_admin` (`id`, `acc`, `pw`) VALUES
(3, 'admin', '1234'),
(4, 'ass', '5546546');

-- --------------------------------------------------------

--
-- 資料表結構 `re_aut`
--

CREATE TABLE `re_aut` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_aut`
--

INSERT INTO `re_aut` (`id`, `text`, `sh`, `rank`) VALUES
(2, '我畢業於德明財經科技大學財務金融系，父母親教育採用民主制度，一切都用溝通來取代打罵，因此遇到爭端時可以冷靜的溝通，盡量不發生衝突，同時我們一家相當和睦。<br>\r\n我最喜歡的一句話是史邁爾說的：「對微小事物的仔細觀察，就是事業、藝術、科學及生命各方面的成功秘訣。」這句話讓我知道小細節的重要性，同時也讓我更注重小細節，另外我喜歡有效率的做事情，會盡可能找出最省時省力的方法完成每一件事。', 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `re_connection`
--

CREATE TABLE `re_connection` (
  `id` int(11) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_connection`
--

INSERT INTO `re_connection` (`id`, `icon`, `text`, `text2`, `href`, `sh`, `rank`) VALUES
(10, 'ion-ios-telephone-outline', '電話', '0981779727', 'tel:0981779727', 1, 3),
(11, 'ion-ios-email-outline', '信箱', 'ts04670223@gmail.com', 'mailto:ts04670223@gmail.com', 1, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `re_education`
--

CREATE TABLE `re_education` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_education`
--

INSERT INTO `re_education` (`id`, `text`, `text2`, `sh`, `rank`) VALUES
(3, '德明財經科技大學', '財務金融系2016年~2020年', 1, 1),
(13, 'dsadassad', 'sdsadsd', 0, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `re_experience`
--

CREATE TABLE `re_experience` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_experience`
--

INSERT INTO `re_experience` (`id`, `text`, `text2`, `sh`, `rank`) VALUES
(3, '水礦科技股份有限公司', '一般行政2019年~2020年', 1, 1),
(10, '泰山職訓局網頁設計', '2020年~2021年<br>在這段期間了解到網頁設計的前後端技術，同時在這段期間也產出自己的作品集，並了解到如何寫程式。', 1, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `re_headshot`
--

CREATE TABLE `re_headshot` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `re_headshot`
--

INSERT INTO `re_headshot` (`id`, `img`, `text`, `sh`, `rank`) VALUES
(1, 'my.jpg', '賴俊宇', 1, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `re_job`
--

CREATE TABLE `re_job` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_job`
--

INSERT INTO `re_job` (`id`, `text`, `text2`, `sh`, `rank`) VALUES
(3, '希望性質', '全職工作', 1, 1),
(13, '希望地點', '台北市', 1, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `re_me`
--

CREATE TABLE `re_me` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_me`
--

INSERT INTO `re_me` (`id`, `text`, `sh`, `rank`) VALUES
(3, '我是賴俊宇<br>興趣:是看書、看電影和寫程式', 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `re_menu`
--

CREATE TABLE `re_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_menu`
--

INSERT INTO `re_menu` (`id`, `text`, `href`, `sh`, `rank`) VALUES
(3, '網站首頁', '#intro', 1, 1),
(18, '自傳', '#aut', 1, 2),
(32, '學歷', '#education', 1, 3),
(33, '經歷', '#experience', 1, 4),
(34, '作品集', '#portfolio', 1, 6),
(36, '聯絡我', '#contact', 1, 7),
(37, '求職條件', '#job', 1, 5);

-- --------------------------------------------------------

--
-- 資料表結構 `re_port`
--

CREATE TABLE `re_port` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sh` int(1) NOT NULL,
  `text2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(2) NOT NULL,
  `href` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `re_port`
--

INSERT INTO `re_port` (`id`, `text`, `img`, `sh`, `text2`, `class`, `rank`, `href`) VALUES
(1, 'illustrator', 'ai1.jpg', 1, '女孩', '3', 1, ''),
(3, 'Photoshop', 'ps1.jpg', 1, '年曆', '3', 2, ''),
(4, 'Photoshop', 'ps2.jpg', 1, '酒標', '3', 3, ''),
(5, 'Photoshop', 'ps3.jpg', 1, '旅遊海報', '3', 4, ''),
(29, 'Css', 'but.JPG', 1, '蝴蝶', '1', 5, 'https://codepen.io/ts04670223/pen/QWEGgbe'),
(30, 'Css', 't.JPG', 1, '表格', '1', 6, 'https://codepen.io/ts04670223/pen/LYNMqvV'),
(31, 'Css', 'w.JPG', 1, '鯨魚動畫', '1', 7, 'https://codepen.io/ts04670223/pen/dyXGZNb'),
(32, 'Illustrator', 'logo.jpg', 1, 'logo設計', '3', 9, ''),
(33, 'Php', 'invoice.JPG', 1, '發票系統', '2', 12, 'https://github.com/ts04670223/invoice'),
(34, 'Illustrator', 'ccss.jpg', 1, '圖標製作', '3', 10, ''),
(36, 'Illustrator', '30animo.jpg', 1, '鋼筆練習', '3', 11, ''),
(44, 'JavaScript', 'hh.JPG', 1, '打地鼠', '1', 8, 'http://220.128.133.15/s1090422/wha/'),
(45, 'PHP', '螢幕擷取畫面 2021-01-22 000720.png', 1, '萬年曆', '2', 13, 'http://220.128.133.15/s1090422/calendar-my/'),
(46, 'PHP', '螢幕擷取畫面 2021-01-25 210230.png', 1, '乙級第一題', '2', 14, 'https://github.com/ts04670223/bquiz01'),
(47, 'PHP', '螢幕擷取畫面 2021-01-25 210536.png', 1, '乙級第二題', '2', 15, 'https://github.com/ts04670223/bquiz02'),
(48, 'PHP', '螢幕擷取畫面 2021-01-25 213258.png', 1, '乙級第三題', '2', 16, 'https://github.com/ts04670223/bquiz03');

-- --------------------------------------------------------

--
-- 資料表結構 `re_skill`
--

CREATE TABLE `re_skill` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` text NOT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `re_skill`
--

INSERT INTO `re_skill` (`id`, `img`, `text`, `class`, `sh`, `rank`) VALUES
(5, 'g1.png', 'photoshop', '3', 1, 1),
(6, 'g2.png', 'Illustrator', '3', 1, 2),
(7, 'mysql.png', 'MySql', '2', 1, 3),
(8, 'w5.png', 'Bootstrap', '1', 1, 4),
(9, 'w1.png', 'Html', '1', 1, 5),
(10, 'w2.png', 'Css', '1', 1, 6),
(11, 'w3.png', 'JavaScript', '1', 1, 7),
(12, 'w4.png', 'jQuery', '1', 1, 8),
(13, 'w8.png', 'Php', '2', 1, 9),
(14, 'github (2).png', 'GitHub', '3', 1, 10),
(15, 't3.png', 'Excel', '3', 1, 11),
(16, 't2.png', 'Word', '3', 1, 12),
(17, 't4.png', 'PowerPoint', '3', 1, 13),
(18, 'w10.png', 'Xampp', '2', 1, 14),
(19, 'w6.png', 'Ajax', '3', 1, 15),
(25, 'EPSON006.jpg', '信託業務人員', '3', 1, 21),
(27, '未命名-1.jpg', '金融常識與職業道德', '3', 1, 22),
(28, 'EPSON007.jpg', '銀行內部控制與內部稽核測驗(一般金融)', '3', 1, 23),
(29, 'EPSON005.jpg', '證券商業務員', '3', 1, 24),
(30, 'EPSON005.jpg', '證券商高級業務員', '3', 1, 25);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `re_admin`
--
ALTER TABLE `re_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_aut`
--
ALTER TABLE `re_aut`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_connection`
--
ALTER TABLE `re_connection`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_education`
--
ALTER TABLE `re_education`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_experience`
--
ALTER TABLE `re_experience`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_headshot`
--
ALTER TABLE `re_headshot`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_job`
--
ALTER TABLE `re_job`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_me`
--
ALTER TABLE `re_me`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_menu`
--
ALTER TABLE `re_menu`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_port`
--
ALTER TABLE `re_port`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `re_skill`
--
ALTER TABLE `re_skill`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_admin`
--
ALTER TABLE `re_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_aut`
--
ALTER TABLE `re_aut`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_connection`
--
ALTER TABLE `re_connection`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_education`
--
ALTER TABLE `re_education`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_experience`
--
ALTER TABLE `re_experience`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_headshot`
--
ALTER TABLE `re_headshot`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_job`
--
ALTER TABLE `re_job`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_me`
--
ALTER TABLE `re_me`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_menu`
--
ALTER TABLE `re_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_port`
--
ALTER TABLE `re_port`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `re_skill`
--
ALTER TABLE `re_skill`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
