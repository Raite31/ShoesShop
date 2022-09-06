-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2022-03-29 08:20:50
-- 服务器版本： 5.7.31
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `h5shixun`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `admin_name` varchar(16) DEFAULT NULL,
  `admin_password` varchar(16) DEFAULT NULL,
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_table`
--

INSERT INTO `admin_table` (`admin_name`, `admin_password`, `admin_id`) VALUES
('李嘉胜', '1223', 1),
('wuya', '998899', 2);

-- --------------------------------------------------------

--
-- 表的结构 `cart_table`
--

DROP TABLE IF EXISTS `cart_table`;
CREATE TABLE IF NOT EXISTS `cart_table` (
  `shop_id` int(11) DEFAULT NULL,
  `cart_amount` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FK_Reference_6` (`user_id`),
  KEY `FK_Reference_7` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `detailphoto_table`
--

DROP TABLE IF EXISTS `detailphoto_table`;
CREATE TABLE IF NOT EXISTS `detailphoto_table` (
  `shop_id` int(11) DEFAULT NULL,
  `photo_path` varchar(40) NOT NULL,
  PRIMARY KEY (`photo_path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `detailphoto_table`
--

INSERT INTO `detailphoto_table` (`shop_id`, `photo_path`) VALUES
(10, './photo/shopKobe1.jpg'),
(10, './photo/shopKobe1(1).jpg'),
(10, './photo/shopKobe1(2).jpg'),
(10, './photo/shopKobe1(3).jpg'),
(10, './photo/shopKobe1(4).jpg'),
(10, './photo/shopKobe1(5).jpg'),
(30, './photo/shopGeorge1(1).jpg'),
(30, './photo/shopGeorge1(2).jpg'),
(30, './photo/shopGeorge1(3).jpg'),
(30, './photo/shopGeorge1(4).jpg'),
(30, './photo/shopGeorge1(5).jpg'),
(31, './photo/shopGeorge2.jpg'),
(31, './photo/shopGeorge2(1).jpg'),
(31, './photo/shopGeorge2(2).jpg'),
(31, './photo/shopGeorge2(3).jpg'),
(31, './photo/shopGeorge2(4).jpg'),
(31, './photo/shopGeorge2(5).jpg'),
(32, './photo/shopGeorge2.5.jpg'),
(32, './photo/shopGeorge2.5(1).jpg'),
(32, './photo/shopGeorge2.5(2).jpg'),
(32, './photo/shopGeorge2.5(3).jpg'),
(32, './photo/shopGeorge2.5(4).jpg'),
(32, './photo/shopGeorge2.5(5).jpg'),
(34, './photo/shopGeorge4.jpg'),
(33, './photo/shopGeorge3.jpg'),
(33, './photo/shopGeorge3(1).jpg'),
(33, './photo/shopGeorge3(2).jpg'),
(33, './photo/shopGeorge3(3).jpg'),
(33, './photo/shopGeorge3(4).jpg'),
(33, './photo/shopGeorge3(5).jpg'),
(34, './photo/shopGeorge4(1).jpg'),
(34, './photo/shopGeorge4(2).jpg'),
(34, './photo/shopGeorge4(3).jpg'),
(34, './photo/shopGeorge4(4).jpg'),
(34, './photo/shopGeorge4(5).jpg'),
(1, './photo/shopIrving1.jpg'),
(1, './photo/shopIrving1(1).jpg'),
(1, './photo/shopIrving1(2).jpg'),
(1, './photo/shopIrving1(3).jpg'),
(1, './photo/shopIrving1(4).jpg'),
(1, './photo/shopIrving1(5).jpg'),
(2, './photo/shopIrving2.jpg'),
(2, './photo/shopIrving2(1).jpg'),
(2, './photo/shopIrving2(2).jpg'),
(2, './photo/shopIrving2(3).jpg'),
(2, './photo/shopIrving2(4).jpg'),
(2, './photo/shopIrving2(5).jpg'),
(3, './photo/shopIrving3.jpg'),
(3, './photo/shopIrving3(1).jpg'),
(3, './photo/shopIrving3(2).jpg'),
(3, './photo/shopIrving3(3).jpg'),
(3, './photo/shopIrving3(4).jpg'),
(3, './photo/shopIrving3(5).jpg'),
(4, './photo/shopIrving4.jpg'),
(4, './photo/shopIrving4(1).jpg'),
(4, './photo/shopIrving4(2).jpg'),
(4, './photo/shopIrving4(3).jpg'),
(4, './photo/shopIrving4(4).jpg'),
(4, './photo/shopIrving4(5).jpg'),
(5, './photo/shopIrving5.jpg'),
(5, './photo/shopIrving5(1).jpg'),
(5, './photo/shopIrving5(2).jpg'),
(5, './photo/shopIrving5(3).jpg'),
(5, './photo/shopIrving5(4).jpg'),
(5, './photo/shopIrving5(5).jpg'),
(6, './photo/shopIrving6.jpg'),
(6, './photo/shopIrving6(1).jpg'),
(6, './photo/shopIrving6(2).jpg'),
(6, './photo/shopIrving6(3).jpg'),
(6, './photo/shopIrving6(4).jpg'),
(6, './photo/shopIrving6(5).jpg'),
(7, './photo/shopIrvingLow1.jpg'),
(7, './photo/shopIrvingLow1(1).jpg'),
(7, './photo/shopIrvingLow1(2).jpg'),
(7, './photo/shopIrvingLow1(3).jpg'),
(7, './photo/shopIrvingLow1(4).jpg'),
(7, './photo/shopIrvingLow1(5).jpg'),
(8, './photo/shopIrvingLow2.jpg'),
(8, './photo/shopIrvingLow2(1).jpg'),
(8, './photo/shopIrvingLow2(2).jpg'),
(8, './photo/shopIrvingLow2(3).jpg'),
(8, './photo/shopIrvingLow2(4).jpg'),
(8, './photo/shopIrvingLow2(5).jpg'),
(9, './photo/shopIrvingFlyTrap2.jpg'),
(9, './photo/shopIrvingFlyTrap2(1).jpg'),
(9, './photo/shopIrvingFlyTrap2(2).jpg'),
(9, './photo/shopIrvingFlyTrap2(3).jpg'),
(9, './photo/shopIrvingFlyTrap2(4).jpg'),
(9, './photo/shopIrvingFlyTrap2(5).jpg'),
(11, './photo/shopKobe4.jpg'),
(11, './photo/shopKobe4(1).jpg'),
(11, './photo/shopKobe4(2).jpg'),
(11, './photo/shopKobe4(3).jpg'),
(11, './photo/shopKobe4(4).jpg'),
(11, './photo/shopKobe4(5).jpg'),
(12, './photo/shopKobe5.jpg'),
(12, './photo/shopKobe5(1).jpg'),
(12, './photo/shopKobe5(2).jpg'),
(12, './photo/shopKobe5(3).jpg'),
(12, './photo/shopKobe5(4).jpg'),
(12, './photo/shopKobe5(5).jpg'),
(13, './photo/shopKobe9.jpg'),
(13, './photo/shopKobe9(1).jpg'),
(13, './photo/shopKobe9(2).jpg'),
(13, './photo/shopKobe9(3).jpg'),
(13, './photo/shopKobe9(4).jpg'),
(13, './photo/shopKobe9(5).jpg'),
(14, './photo/shopKobe10.jpg'),
(14, './photo/shopKobe10(1).jpg'),
(14, './photo/shopKobe10(2).jpg'),
(14, './photo/shopKobe10(3).jpg'),
(14, './photo/shopKobe10(4).jpg'),
(14, './photo/shopKobe10(5).jpg'),
(15, './photo/shopKobe10Elite.jpg'),
(15, './photo/shopKobe10Elite(1).jpg'),
(15, './photo/shopKobe10Elite(2).jpg'),
(15, './photo/shopKobe10Elite(3).jpg'),
(15, './photo/shopKobe10Elite(4).jpg'),
(15, './photo/shopKobe10Elite(5).jpg'),
(16, './photo/shopKobe11.jpg'),
(16, './photo/shopKobe11(1).jpg'),
(16, './photo/shopKobe11(2).jpg'),
(16, './photo/shopKobe11(3).jpg'),
(16, './photo/shopKobe11(4).jpg'),
(16, './photo/shopKobe11(5).jpg'),
(17, './photo/shopKobeA.D..jpg'),
(17, './photo/shopKobeA.D.(1).jpg'),
(17, './photo/shopKobeA.D.(2).jpg'),
(17, './photo/shopKobeA.D.(3).jpg'),
(17, './photo/shopKobeA.D.(4).jpg'),
(17, './photo/shopKobeA.D.(5).jpg'),
(18, './photo/shopKobeA.D.Exodus.jpg'),
(18, './photo/shopKobeA.D.Exodus(1).jpg'),
(18, './photo/shopKobeA.D.Exodus(2).jpg'),
(18, './photo/shopKobeA.D.Exodus(3).jpg'),
(18, './photo/shopKobeA.D.Exodus(4).jpg'),
(18, './photo/shopKobeA.D.Exodus(5).jpg'),
(19, './photo/shopKobeA.D.Mid.jpg'),
(19, './photo/shopKobeA.D.Mid(1).jpg'),
(19, './photo/shopKobeA.D.Mid(2).jpg'),
(19, './photo/shopKobeA.D.Mid(3).jpg'),
(19, './photo/shopKobeA.D.Mid(4).jpg'),
(19, './photo/shopKobeA.D.Mid(5).jpg'),
(20, './photo/shopKobeA.D.NXT.jpg'),
(20, './photo/shopKobeA.D.NXT(1).jpg'),
(20, './photo/shopKobeA.D.NXT(2).jpg'),
(20, './photo/shopKobeA.D.NXT(3).jpg'),
(20, './photo/shopKobeA.D.NXT(4).jpg'),
(20, './photo/shopKobeA.D.NXT(5).jpg'),
(21, './photo/shopKobeADNXTFastFit.jpg'),
(21, './photo/shopKobeADNXTFastFit(1).jpg'),
(21, './photo/shopKobeADNXTFastFit(2).jpg'),
(21, './photo/shopKobeADNXTFastFit(3).jpg'),
(21, './photo/shopKobeADNXTFastFit(4).jpg'),
(21, './photo/shopKobeADNXTFastFit(5).jpg'),
(22, './photo/shopKobeMambaFury.jpg'),
(22, './photo/shopKobeMambaFury(1).jpg'),
(22, './photo/shopKobeMambaFury(2).jpg'),
(22, './photo/shopKobeMambaFury(3).jpg'),
(22, './photo/shopKobeMambaFury(4).jpg'),
(22, './photo/shopKobeMambaFury(5).jpg'),
(23, './photo/shopKobeNXT360React.jpg'),
(23, './photo/shopKobeNXT360React(1).jpg'),
(23, './photo/shopKobeNXT360React(2).jpg'),
(23, './photo/shopKobeNXT360React(3).jpg'),
(23, './photo/shopKobeNXT360React(4).jpg'),
(23, './photo/shopKobeNXT360React(5).jpg'),
(24, './photo/shopJames7.jpg'),
(24, './photo/shopJames7(1).jpg'),
(24, './photo/shopJames7(2).jpg'),
(24, './photo/shopJames7(3).jpg'),
(24, './photo/shopJames7(4).jpg'),
(24, './photo/shopJames7(5).jpg'),
(25, './photo/shopJames10.jpg'),
(25, './photo/shopJames10(1).jpg'),
(25, './photo/shopJames10(2).jpg'),
(25, './photo/shopJames10(3).jpg'),
(25, './photo/shopJames10(4).jpg'),
(25, './photo/shopJames10(5).jpg'),
(26, './photo/shopJames12.jpg'),
(26, './photo/shopJames12(1).jpg'),
(26, './photo/shopJames12(2).jpg'),
(26, './photo/shopJames12(3).jpg'),
(26, './photo/shopJames12(4).jpg'),
(26, './photo/shopJames12(5).jpg'),
(27, './photo/shopJames13.jpg'),
(27, './photo/shopJames13(1).jpg'),
(27, './photo/shopJames13(2).jpg'),
(27, './photo/shopJames13(3).jpg'),
(27, './photo/shopJames13(4).jpg'),
(27, './photo/shopJames13(5).jpg'),
(28, './photo/shopJames16.jpg'),
(28, './photo/shopJames16(1).jpg'),
(28, './photo/shopJames16(2).jpg'),
(28, './photo/shopJames16(3).jpg'),
(28, './photo/shopJames16(4).jpg'),
(28, './photo/shopJames16(5).jpg'),
(29, './photo/shopJames17.jpg'),
(29, './photo/shopJames17(1).jpg'),
(29, './photo/shopJames17(2).jpg'),
(29, './photo/shopJames17(3).jpg'),
(29, './photo/shopJames17(4).jpg'),
(29, './photo/shopJames17(5).jpg'),
(30, './photo/shopGeorge1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `orderdetail_table`
--

DROP TABLE IF EXISTS `orderdetail_table`;
CREATE TABLE IF NOT EXISTS `orderdetail_table` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cart_amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ordera_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_Reference_5` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orderdetail_table`
--

INSERT INTO `orderdetail_table` (`order_id`, `shop_id`, `cart_amount`, `user_id`, `ordera_id`) VALUES
(57, 31, NULL, 1, 2411981513),
(56, 32, NULL, 1, 2411981513),
(55, 33, NULL, 1, 2411981513),
(54, 26, NULL, 1, 2411981513),
(53, 29, NULL, 1, 2411981513),
(52, 18, NULL, 1, 2411981513),
(51, 13, 1, 1, 2411981513),
(64, 1, NULL, 1, 8141215954);

-- --------------------------------------------------------

--
-- 表的结构 `order_table`
--

DROP TABLE IF EXISTS `order_table`;
CREATE TABLE IF NOT EXISTS `order_table` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ordera_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_Reference_11` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_table`
--

INSERT INTO `order_table` (`order_id`, `user_id`, `ordera_id`) VALUES
(44, 1, 9434047091),
(43, 1, 9434047091),
(42, 1, 9434047091),
(41, 1, 9434047091),
(40, 1, 9434047091),
(39, 1, 9434047091),
(38, 1, 5049570062),
(37, 1, 5049570062),
(36, 1, 5049570062),
(35, 1, 5049570062),
(34, 1, 5049570062),
(33, 1, 5049570062),
(32, 1, 5049570062),
(31, 1, 5049570062),
(30, 1, 5049570062),
(29, 1, 5049570062),
(28, 1, 5610827030),
(27, 1, 5610827030),
(26, 1, 5610827030),
(25, 1, 5610827030),
(24, 1, 5610827030),
(45, 1, 9434047091),
(46, 1, 9434047091),
(47, 1, 9434047091),
(48, 1, 9434047091),
(49, 1, 2411981513),
(50, 1, 2411981513),
(51, 1, 2411981513),
(52, 1, 2411981513),
(53, 1, 2411981513),
(54, 1, 2411981513),
(55, 1, 2411981513),
(56, 1, 2411981513),
(57, 1, 2411981513),
(58, 1, 6978583057),
(59, 1, 6978583057),
(60, 1, 8141215954),
(61, 1, 8141215954),
(62, 1, 8141215954),
(63, 1, 8141215954),
(64, 1, 8141215954),
(65, 1, 9552282201);

-- --------------------------------------------------------

--
-- 表的结构 `photo_table`
--

DROP TABLE IF EXISTS `photo_table`;
CREATE TABLE IF NOT EXISTS `photo_table` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_pic` varchar(40) DEFAULT NULL,
  `photo_url` varchar(40) DEFAULT NULL,
  `photo_text` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `photo_table`
--

INSERT INTO `photo_table` (`photo_id`, `photo_pic`, `photo_url`, `photo_text`) VALUES
(1, './photo/RotatingIrving.jpg', 'otherPage.html', '欧文系列'),
(2, './photo/RotatingKobe.jpg', 'otherPage1.html', '科比系列'),
(3, './photo/RotatingAJ.jpg', 'otherPage2.html', 'AJ系列'),
(4, './photo/RotatingSB.jpg', 'otherPage3.html', 'SB系列');

-- --------------------------------------------------------

--
-- 表的结构 `shop_table`
--

DROP TABLE IF EXISTS `shop_table`;
CREATE TABLE IF NOT EXISTS `shop_table` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(24) DEFAULT NULL,
  `shop_allName` varchar(40) DEFAULT NULL,
  `shop_num` int(11) DEFAULT NULL,
  `shop_pic` varchar(40) DEFAULT NULL,
  `shop_price` decimal(10,0) DEFAULT NULL,
  `shop_page` int(11) DEFAULT NULL,
  `shop_produce` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop_table`
--

INSERT INTO `shop_table` (`shop_id`, `shop_name`, `shop_allName`, `shop_num`, `shop_pic`, `shop_price`, `shop_page`, `shop_produce`) VALUES
(1, 'Nike Kyrie Irving 1', '欧文一 欧文1 NikeKyrieIrving1', 500, './photo/shopIrving1.jpg', '1599', 1, '上脚 Kyrie Infinity EP 男/女篮球鞋，助你如凯里·欧文那般，掌控高超的快速急停后迅疾加速或变向技巧。 他能精准掌控动作，在进攻时自如发力，让防守球员难以预判。 该款篮球鞋采用紧密贴合设计，结合前足升级响应性能和侧边强劲抓地力，助你自如变换速度，大展身手。'),
(2, 'Nike Kyrie 2', '欧文二 欧文2 NikeKyrieIrving2', 78, './photo/shopIrving2.jpg', '1699', 1, '凯里·欧文减速越迅疾，加速或变向就越矫捷。 他能准确掌控动作，在进攻时自如发力，让防守球员难以预判。 Kyrie Infinity CNY EP 男/女篮球鞋采用紧密贴合设计，结合前足升级响应性能和侧边强劲抓地力，助你自如变换速度，大展身手。'),
(3, 'Nike Kyrie 3', '欧文三 欧文3  NikeKyrieIrving3', 100, './photo/shopIrving3.jpg', '2499', 1, '伟大的运动员为我们留下弥足珍贵的传奇，不仅仅是成就荣誉、得分神迹和冠军头衔，更重要的是，他们不断完善规则，引领下一代为体育运动的未来贡献自己的力量。Kyrie 7 EP 男子篮球鞋的设计灵感源自凯里的生活理念，旨在致敬他的植物性饮食习惯。鞋面整版饰有植物风格图案，后跟缀有发芽的“KI”标志，趣味十足。'),
(4, 'Nike Kyrie 4', '欧文四 欧文4 NikeKyrieIrving4', 65, './photo/shopIrving4.jpg', '1359', 1, 'Kyrie 4 BHM EP 男子篮球鞋集柔韧灵活、回弹缓震和支撑优势于一体。该鞋款专为实现凯里·欧文的突然变向而打造，塑就快速流畅球风。细节设计向黑人历史月运动与体育运动的团结公平精神致敬。'),
(5, 'Nike Kyrie 5', '欧文五 欧文5 NikeKyrieIrving5', 150, './photo/shopIrving5.jpg', '1131', 1, '凯里·欧文强势切入，迅疾突破，令对手望尘莫及。Kyrie Flytrap V EP 男子篮球鞋为足底和两侧营造出众抓地力，助你在变向时快人一步。焕新 Flytrap 采用织带固定带，前足融入 Zoom Air 缓震配置，将凯里·欧文天马行空的球风展现得淋漓尽致。'),
(6, 'Nike Kyrie 6', '欧文六 欧文6 NikeKyrieIrving6', 198, './photo/shopIrving6.jpg', '499', 1, NULL),
(7, 'Nike Kyire Low 1', '欧文支线一代 欧文支线1代 NikeKyireIrvingLow1', 97, './photo/shopIrvingLow1.jpg', '899', 1, 'Kyrie Flytrap III EP 男子篮球鞋专为凯里·欧文在篮球场上的迅疾表现而打造，结合全足支撑和包覆、回弹响应的缓震性能以及强效外底，助力他在激烈比赛中流畅轻盈地移动。'),
(8, 'Nike Kyrie Low 2', '欧文支线二代 欧文支线2代 NikeKyrieLow2', 65, './photo/shopIrvingLow2.jpg', '2629', 1, NULL),
(9, 'Nike Kyire FlyTrap 2', '欧文支线二代 欧文支线2代 NikeKyrieFlyTrap2', 23, './photo/shopIrvingFlyTrap2.jpg', '218', 1, '上脚 Kyrie Infinity EP 男/女篮球鞋，助你如凯里·欧文那般，掌控高超的快速急停后迅疾加速或变向技巧。他能准确掌控动作，在进攻时自如发力，让防守球员难以预判。该鞋款具有出众缓震性能，还可提供专属贴合感和侧向抓地力，助力球员自如变换速度，开辟空间大展身手。'),
(10, 'Nike Kobe 1', 'Kobe1 kobe1 科比一代 科比1代', 150, './photo/shopKobe1.jpg', '2250', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(11, 'Nike Kobe 4', 'Kobe4 kobe4 科比四代 科比4代', 885, './photo/shopKobe4.jpg', '2299', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(12, 'Nike Kobe 5', 'Kobe5 kobe5 科比五代 科比5代', 889, './photo/shopKobe5.jpg', '1467', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(13, 'Nike Kobe 9', 'Kobe9 科比9代 科比九代', 25, './photo/shopKobe9.jpg', '3899', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(14, 'NIke Kobe 10', 'kobe10 科比10代 科比十代', 98, './photo/shopKobe10.jpg', '2799', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(15, 'Nike Kobe 10 Elite', 'kobe10elite 科比十代高帮 科比10代高帮', 32, './photo/shopKobe10Elite.jpg', '2550', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(16, 'Nike Kobe 11', 'kobe11 科比11代 科比十一代', 69, './photo/shopKobe11.jpg', '2459', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(17, 'Nike Kobe A.D.', 'kobe ad 科比AD ', 87, './photo/shopKobeA.D..jpg', '1589', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(18, 'Nike Kobe A.D.Exodus', 'kobeAD 科比AD', 79, './photo/shopKobeA.D.Exodus.jpg', '1299', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(19, 'Nike Kobe A.D.Mid', 'kobeadmid 科比ADmid', 778, './photo/shopKobeA.D.Mid.jpg', '1249', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(20, 'Nike KobeA.D.NXT', 'kobeadnxt 科比nxt', 12, './photo/shopKobeA.D.NXT.jpg', '1789', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(21, 'Nike KobeADMXTFastFit', 'kobeADNXTFastFit 科比ad', 889, './photo/shopKobeADNXTFastFit.jpg', '799', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(22, 'Nike Kobe MambaFury', 'kobemambafury 科比曼巴系列', 56, './photo/shopKobeMambaFury.jpg', '398', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(23, 'Nike Kobe NXT360React', 'kebo nxt360 科比nxt', 97, './photo/shopKobeNXT360React.jpg', '1699', 2, '科比·布莱恩特以场上毫不掩饰的真性情，缔造出一场场精彩传奇赛事；Mamba Fury EP 男/女篮球鞋因此得名，采用简约利落的设计，打造轻盈疾速的造型与质感。该鞋款拥有科比系列特有的轻盈灵敏响应力和强悍抓地力。低帮鞋口，让球员在强势切入时自由无阻且迅疾不减。该 EP 版本的外底出众耐穿，可驾驭户外球场。'),
(24, 'Nike James 7', 'james7 詹姆斯七代 詹姆斯7代', 488, './photo/shopJames7.jpg', '2699', 3, 'LeBron XIX EP 男/女篮球鞋助你在关键时刻和面临压力时一往无前。采用稳固贴合设计，结合革新缓震系统，助力从容驾驭澎湃奔跑能量。舒适内靴巧搭精巧覆面设计，结合穿行其间的鞋带，有效减少双足在鞋内打滑。鞋口和鞋舌增添缓震气囊，提升舒适感，同时减轻重量，让球员在赛场上全力以赴，畅享稳固感受和自信。'),
(25, 'Nike James 10', 'james10 詹姆斯十代 詹姆斯10代', 445, './photo/shopJames10.jpg', '5569', 3, 'Nike LeBron VII QS 男子运动鞋糅合过去与现在，从经典棒球运动队服中汲取配色灵感，焕新演绎经典 2009 年鞋款，缔造球迷挚爱单品。宝蓝覆面环绕鞋身，与内侧纯色 Swoosh 标志和外侧 Swoosh 轮廓交相辉映。后跟、鞋眼和鞋带扣设计饰有银色细节，闪烁金属感光泽；运动风格红色缝线搭配“L23”标志，与宝蓝配色形成鲜明对比。'),
(26, 'Nike James 12', 'james12 詹姆斯十二代 詹姆斯12代', 599, './photo/shopJames12.jpg', '1259', 3, 'Nike Lebron IX Low 男子运动鞋以经典解渴神器柠檬冰茶为蓝本， 将清新配色、透气材料和彰显詹皇风范的奢华装饰图案巧妙融合，呼应活力热带主题，礼赞人气饮品。 穿上这款沁爽潮鞋，让双足悠享舒适。'),
(27, 'Nike James 13', 'james13 詹姆斯13代 詹姆斯十三代', 89, './photo/shopJames13.jpg', '2599', 3, 'LeBron XVII EP 男子篮球鞋依托勒布朗的力量和速度，塑就出众包覆性和支撑力，助你制霸赛场。组合缓震设计，为勒布朗带来出色减震支撑效果和灵敏响应回弹能量，助力畅享漫长赛季。'),
(28, 'Nike James 16', 'james16 詹姆斯十六代 詹姆斯16代', 59, './photo/shopJames16.jpg', '1566', 3, 'Nike LeBron VIII QS 男子运动鞋携南海岸配色震撼回归，玩转五光十色的丰富夜生活。以南海岸标志性色调为灵感，采用复古蓝为主色调并辅以闪粉和黑色点缀，尽显闪耀夺目魅力。出众皮革注入奢华休闲格调，为詹姆斯系列的传奇战靴打造全新力作。'),
(29, 'Nike James 17', 'james17 詹姆斯十七代  詹姆斯17代', 95, './photo/shopJames17.jpg', '1549', 3, 'LeBron XIX EP 男/女篮球鞋助你在惊险时刻和面临压力时一往无前。 鞋款兼备 Max Air x Zoom Air 缓震系统和稳固贴合性能，借助勒布朗这类强劲球员的强大能量，制胜球场，所向披靡。 舒适内靴巧搭精巧覆面设计，结合穿行其间的鞋带，有效减少双足在鞋内打滑。 鞋舌和鞋口搭配气囊，帮助减轻鞋身重量，保持脚踝舒适贴合，赋予球员稳固脚感和十足信心，全力以赴应对挑战。'),
(30, 'Nike Paul George 1', 'Paulgeorge1 保罗乔治一代 保罗乔治1代', 444, './photo/shopGeorge1.jpg', '1299', 4, '保罗·乔治在球场上总是游刃有余，制霸一方。他将冲击篮筐、突破外传、接球投射玩转得行云如水，随时制胜出击。他的这款签名 PG 6 EP 男/女篮球鞋采用柔软材料，轻盈舒适，带来出众支撑与缓震性能。、'),
(31, 'Nike Paul George 2', 'PaulGeorge2 保罗乔治2代 保罗乔治二代', 98, './photo/shopGeorge2.jpg', '1100', 4, NULL),
(32, 'Nike Paul George 2.5', 'paulgeogre2.5 保罗乔治2.5代 ', 955, './photo/shopGeorge2.5.jpg', '1255', 4, NULL),
(33, 'Nike Paul George 3', 'paulgeorge3 保罗乔治3代 保罗乔治三代', 82, './photo/shopGeorge3.jpg', '899', 4, '保罗·乔治凭借行云流水般的球技，牢牢掌控赛局。无论是空档传球、强势切入罚球区，还是急停跳投，球场上的他总是从容不迫，不断寻找最佳位置，伺机出手。PG 5 PS EP 男/女篮球鞋采用保罗钟爱的灵活低帮造型设计，结合出色回弹缓震性能。鞋款助其舒适畅动，制胜出击。'),
(34, 'Nike Paul George 4', 'paulgeorge4 保罗乔治4代 保罗乔治四代', 825, './photo/shopGeorge4.jpg', '599', 4, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user_table`
--

DROP TABLE IF EXISTS `user_table`;
CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(16) DEFAULT NULL,
  `user_address` varchar(40) DEFAULT NULL,
  `user_tel` bigint(20) DEFAULT NULL,
  `user_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_password`, `user_address`, `user_tel`, `user_name`) VALUES
(1, '123', '山西省上海新会d阿达瓦', 123423421, '李嘉胜'),
(3, '456789', NULL, NULL, 'lilizhenshuai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
