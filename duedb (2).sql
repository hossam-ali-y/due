-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2020 at 12:09 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_name` varchar(100) CHARACTER SET cp1256 NOT NULL,
  `end_total` decimal(11,0) DEFAULT NULL,
  `credit` decimal(11,0) NOT NULL DEFAULT '0',
  `max_limit` decimal(11,0) DEFAULT '0',
  `account_status` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` varchar(25) CHARACTER SET cp1256 NOT NULL,
  `custom_notes` varchar(250) CHARACTER SET cp1256 DEFAULT NULL,
  PRIMARY KEY (`custom_id`),
  UNIQUE KEY `custom_name` (`custom_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custom_id`, `custom_name`, `end_total`, `credit`, `max_limit`, `account_status`, `create_date`, `custom_notes`) VALUES
(1, 'حسام اليعري', '0', '0', '0', 1, '2020-06-09', NULL),
(2, 'احمد اخمد', '0', '0', '0', 1, '2020-06-09', NULL),
(4, 'صالح اليعري', '0', '0', '0', 1, '02:33:38', 'لاشيء'),
(5, 'علي احمد', '0', '0', '0', 1, '2020-06-09 02:36:58', 'لا لا'),
(6, 'hsssssssssssswwwwwwwwwww', '0', '0', '0', 1, '2020-06-09 03:23:19', ''),
(7, 'حسام علي علي صالح اليعري', '0', '0', '0', 1, '', NULL),
(8, 'محمد احمد عبدالله حسين اليعري', '0', '0', '0', 1, '', NULL),
(9, 'علي محمد علي احمد اليعري', '0', '0', '0', 1, '', NULL),
(10, 'صالح احمد صالح محمد علي اليعري', '0', '0', '0', 1, '', NULL),
(11, 'عبدالرحمن عبدالله محمد علي حسين اليعري', '0', '0', '0', 1, '', NULL),
(12, 'محمد عبدالله اليعري', '30000', '15000', '200000', 1, '', 'لايوجد شيء'),
(13, 'علي صالح محمد علي ', '4000', '2000', '50000', 1, '17/6/2020', 'تأسس الحساب كتجريب وإختبار'),
(14, 'تميم علي حسين اليعري ', '9000', '4300', '600000', 1, '17/6/2020', 'تأسس الحساب كتجريب وإختبار'),
(15, 'هاني محمد صالح اليعري', '6000', '0', '100000', 1, 'اليوم', 'حسام اليعري');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `invo_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_id` int(11) NOT NULL,
  `amount` decimal(11,0) NOT NULL,
  `notes` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `date` varchar(100) CHARACTER SET latin1 NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`invo_id`),
  KEY `custom_id` (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invo_id`, `custom_id`, `amount`, `notes`, `date`, `type`, `status`, `user_id`) VALUES
(2, 6, '10000', 'للللللللللللللللللللللللل', '8/6/2020', 1, 0, 1),
(3, 6, '15000', 'حسام اليعري', '8/6/2020', 1, 1, 1),
(4, 1, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(5, 2, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(6, 1, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(7, 2, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(8, 6, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(9, 2, '15000', 'nothing', '8/6/2020', 1, 1, 1),
(14, 1, '20000', 'حسام علي اليعري سسسس', '2020', 1, 1, 1),
(16, 1, '20000', NULL, '2020-06-09 03:29:08', 1, 1, 1),
(17, 1, '45000', ' Ù‡Ù„Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-09 04:21:32', 1, 1, 1),
(18, 1, '46000', ' Ù‡Ù„Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-09 04:24:01', 1, 1, 1),
(19, 2, '35000', 'Ù‚Ø±Ø¶ Ù†Ù‚Ø¯Ø§', '2020-06-09 04:29:14', 1, 1, 1),
(20, 1, '70000', 'Ù‚Ø±Ø¶ Ù†Ù‚Ø¯Ø§', '2020-06-10 03:45:25', 1, 1, 1),
(21, 2, '7770', ' Ø§Ø®ÙŠØ±Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:07:58', 1, 1, 1),
(22, 2, '7770', ' Ø§Ø®ÙŠØ±Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:07:58', 1, 1, 1),
(23, 2, '8000', ' Ø§Ø®ÙŠØ±Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:08:34', 1, 1, 1),
(24, 2, '8000', ' Ø§Ø®ÙŠØ±Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:08:34', 1, 1, 1),
(25, 2, '8000', ' Ø§Ø®ÙŠØ±Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:08:34', 1, 1, 1),
(26, 1, '9000', ' Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:09:25', 1, 1, 1),
(27, 2, '6000', ' Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:10:09', 1, 1, 1),
(29, 2, '6000', ' Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:10:09', 1, 1, 1),
(30, 2, '6000', ' Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', '2020-06-10 08:10:09', 1, 1, 1),
(34, 1, '1500', ' ylaaaaaaaaaaa', '2020-06-10 08:23:31', 1, 1, 1),
(35, 2, '3900', ' Ø§Ù†Ø§ Ø­Ø³Ø§Ù… Ø§Ù„ÙŠØ¹Ø±ÙŠ', '2020-06-12 05:00:38', 1, 1, 1),
(36, 2, '3900', ' Ø§Ù†Ø§ Ø­Ø³Ø§Ù… Ø§Ù„ÙŠØ¹Ø±ÙŠ', '2020-06-12 05:00:38', 1, 1, 1),
(37, 2, '27000', 'يارب سترك وتوفيقك', '2020-06-12 05:05:54', 1, 1, 1),
(38, 2, '300', ' ياحي ياقيوم', '2020-06-12 05:07:01', 1, 1, 1),
(39, 6, '26000', 'اخر حبة في الكرتون', '2020-06-12 06:41:58', 1, 1, 1),
(40, 6, '26000', 'اخر حبة في الكرتون', '2020-06-12 06:41:58', 1, 1, 1),
(41, 2, '3700', ' لاحول ولا قوة الا بالله', '2020-06-12 06:42:54', 1, 1, 1),
(42, 2, '3700', ' لاحول ولا قوة الا بالله', '2020-06-12 06:42:54', 1, 1, 1),
(43, 2, '222', ' لالللللللللللللللللللل', '2020-06-12 06:51:55', 1, 1, 1),
(44, 2, '222', ' لالللللللللللللللللللل', '2020-06-12 06:52:09', 1, 1, 1),
(45, 2, '222', ' لالللللللللللللللللللل', '2020-06-12 06:52:09', 1, 1, 1),
(46, 2, '222', ' لالللللللللللللللللللل', '2020-06-12 06:52:09', 1, 1, 1),
(47, 2, '222', ' لالللللللللللللللللللل', '2020-06-12 06:52:09', 1, 1, 1),
(48, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(49, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(50, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(51, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(52, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(53, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(54, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(55, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(56, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(57, 2, '222', ' لاثثثثثثثثثثثثثثثثثثثثثث', '2020-06-12 06:52:33', 1, 1, 1),
(58, 2, '4000', ' ههههههههههههههههههههههههههههههههه', '2020-06-12 07:07:39', 1, 1, 1),
(59, 2, '4000', ' ههههههههههههههههههههههههههههههههه', '2020-06-12 07:07:39', 1, 1, 1),
(60, 2, '4000', ' ههههههههههههههههههههههههههههههههه', '2020-06-12 07:07:39', 1, 1, 1),
(66, 5, '3900', ' ققققققققققققققققققققققققققققققققققققققيييييييييييييييييقققققققققققق', '2020-06-12 07:10:15', 1, 1, 1),
(67, 5, '3900', ' ققققققققققققققققققققققققققققققققققققققيييييييييييييييييقققققققققققق', '2020-06-12 07:10:15', 1, 1, 1),
(68, 5, '3900', ' ققققققققققققققققققققققققققققققققققققققيييييييييييييييييقققققققققققق', '2020-06-12 07:10:15', 1, 1, 1),
(69, 5, '3900', ' ققققققققققققققققققققققققققققققققققققققيييييييييييييييييقققققققققققق', '2020-06-12 07:10:15', 1, 1, 1),
(70, 5, '3900', ' ققققققققققققققققققققققققققققققققققققققيييييييييييييييييقققققققققققق', '2020-06-12 07:10:15', 1, 1, 1),
(71, 5, '4900', ' غغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغ', '2020-06-12 07:11:31', 1, 1, 1),
(72, 5, '4900', ' غغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغ', '2020-06-12 07:11:31', 1, 1, 1),
(73, 5, '4900', ' غغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغ', '2020-06-12 07:11:31', 1, 1, 1),
(74, 5, '4900', ' غغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغغ', '2020-06-12 07:11:31', 1, 1, 1),
(75, 5, '55555555', ' ههههههههههههههههههههههههههههههههههههه', '2020-06-12 07:15:07', 1, 1, 1),
(76, 5, '55555555', ' ههههههههههههههههههههههههههههههههههههه', '2020-06-12 07:15:07', 1, 1, 1),
(77, 5, '55555555', ' ههههههههههههههههههههههههههههههههههههه', '2020-06-12 07:15:07', 1, 1, 1),
(78, 5, '55555555', ' ههههههههههههههههههههههههههههههههههههه', '2020-06-12 07:15:07', 1, 1, 1),
(79, 2, '1200', ' لابد من النوم', '2020-06-12 07:28:34', 1, 1, 1),
(80, 5, '3400', ' لا لا لا لا لا لا لا', '2020-06-12 07:41:24', 1, 1, 1),
(81, 5, '3400', ' لا لا لا لا لا لا لا', '2020-06-12 07:41:24', 1, 1, 1),
(82, 5, '3400', ' لا لا لا لا لا لا لا', '2020-06-12 07:41:24', 1, 1, 1),
(83, 5, '3400', ' لا لا لا لا لا لا لا', '2020-06-12 07:41:24', 1, 1, 1),
(84, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(85, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(86, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(87, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(88, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(89, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(90, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(91, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(92, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(93, 5, '4800', ' غااااااااااااااااااااااااااااااااااارمممممممممممممممم غانم غانم ', '2020-06-12 07:43:18', 1, 1, 1),
(94, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(95, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(96, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(97, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(98, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(99, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(100, 5, '5600', ' لا حول ولا قووة  الا بالله', '2020-06-12 07:45:31', 1, 1, 1),
(101, 2, '800', ' لا اله الا الله ', '2020-06-12 07:46:50', 1, 1, 1),
(102, 2, '600', ' الحي القيوم الله', '2020-06-12 07:48:07', 1, 1, 1),
(103, 1, '0', ' خلاص يا حســــــــــــامقوم ارقد شرق عليك', '2020-06-12 07:50:04', 1, 1, 1),
(104, 1, '0', ' خلاص يا حســــــــــــامقوم ارقد شرق عليك', '2020-06-12 07:50:04', 1, 1, 1),
(105, 1, '0', ' خلاص يا حســــــــــــامقوم ارقد شرق عليك', '2020-06-12 07:50:04', 1, 1, 1),
(106, 1, '0', ' خلاص يا حســــــــــــامقوم ارقد شرق عليك', '2020-06-12 07:50:04', 1, 1, 1),
(107, 1, '0', ' خلاص يا حســــــــــــامقوم ارقد شرق عليك', '2020-06-12 07:50:04', 1, 1, 1),
(108, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:55', 1, 1, 1),
(109, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:55', 1, 1, 1),
(110, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:56', 1, 1, 1),
(111, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:56', 1, 1, 1),
(112, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:56', 1, 1, 1),
(113, 1, '0', ' خلاص يا حســــــــــــام قوم ارقد شرق عليك', '2020-06-12 07:50:56', 1, 1, 1),
(114, 2, '600', ' الحي القيوم الله', '2020-06-12 07:51:16', 1, 1, 1),
(115, 1, '0', ' خلاص خــــــــــــــــــــــــلاص خــــــــــــــــــــــــلاص خــــــــــــــــــــــــلاص\nخــــــــــــــــــــــــلاص خــــــــــــــــــــــــلاص\nخــــــــــــــــــــــــلاص خــــــــــــــــــــــــلاص', '2020-06-12 07:52:49', 1, 1, 1),
(116, 5, '0', 'طابت او لا', '2020-06-12 07:54:04', 1, 1, 1),
(117, 5, '7900', ' يا ليلااااااااااااااااااااااااااااااااااااه ياليلاااااااااااااااااااااااااااااااااااه', '2020-06-12 07:58:53', 1, 1, 1),
(118, 6, '4500', ' في سطح المنزل ليلا', '2020-06-13 03:03:41', 1, 1, 1),
(119, 2, '4500', ' في سطح المنزل ليلا', '2020-06-13 03:04:29', 1, 1, 1),
(120, 1, '22000', ' define in depth ', '2020-06-13 03:13:39', 1, 1, 1),
(121, 5, '22000', ' define in depth ', '2020-06-13 03:14:49', 1, 1, 1),
(122, 5, '6900', 'تم التسجيل قبل الفجر', '2020-06-13 03:50:16', 1, 1, 1),
(123, 11, '47000', ' صباح الخيـــــــــــــــــــــــــــر ياعرب', '2020-06-13 05:10:04', 1, 1, 1),
(124, 7, '30000', 'هاتف ال جي ستايل 4 (LG Style 4)', '2020-06-13 05:12:30', 1, 1, 1),
(125, 9, '5600', ' صباح الورد والنور والســــــــــروووووور\nلكل الغاليين ', '2020-06-13 05:15:04', 1, 1, 1),
(126, 1, '2500', ' صباح الورد والنور و       الســــــــــروووووور\nلكل الغاليين \nوكل الحبايب', '2020-06-13 05:17:55', 1, 1, 1),
(127, 11, '39999', ' ddddddddddddd', '2020-06-14 01:18:51', 1, 1, 1),
(128, 10, '399', ' dddddddddddddhgffgg', '2020-06-14 02:45:47', 1, 1, 1),
(129, 8, '5600', ' صباح الورد والنور والســــــــــروووووور\nلكل الغاليين ', '2020-06-14 02:46:50', 1, 1, 1),
(130, 1, '50000', ' ', '2020-06-14 10:51:27', 1, 1, 1),
(131, 7, '5000', ' من السطح قبل الظهر', '2020-06-14 10:53:10', 1, 1, 1),
(132, 2, '222', 'ظهراظهرا', '2020-06-14 12:04:55', 1, 1, 1),
(133, 11, '399', ' dddddddddddddhgffgg', '2020-06-14 12:08:08', 1, 1, 1),
(134, 11, '399', ' dddddddddddddhgffgg', '2020-06-14 12:08:24', 1, 1, 1),
(136, 9, '600', ' اااااااااااااااااااا', '2020-06-15 05:29:35', 1, 1, 1),
(137, 7, '600', ' ااااااااااااااااااااوووووووووووووووو', '2020-06-15 05:29:57', 1, 1, 1),
(138, 9, '600', ' ااااااااااااااااااااووووااااااااااااااااااااوووووووووووو', '2020-06-15 05:30:35', 1, 1, 1),
(139, 7, '79999', ' تتتتتتتتتتتت', '2020-06-15 05:48:17', 1, 1, 1),
(140, 1, '79999', ' تتتتتتتتتتتت', '2020-06-15 05:48:30', 1, 1, 1),
(141, 8, '79999', ' تتتتتتتتتتتت', '2020-06-15 05:48:54', 1, 1, 1),
(145, 4, '800', ' لأاااااا', '2020-06-15 06:03:07', 1, 1, 1),
(146, 5, '6990', ' اااااااااااااااااااااااااااااااااااااااااااااووووووووووووووووووووووو', '2020-06-15 06:03:44', 1, 1, 1),
(147, 9, '6990', ' اااااااااااااااااااااااااااااااااااااااااااااووووووووووووووووووووووو', '2020-06-15 06:04:22', 1, 1, 1),
(148, 10, '6990', ' اااااااااااااااااااااااااااااااااااااااااااااووووووووووووووووووووووو', '2020-06-15 06:14:08', 1, 1, 1),
(149, 8, '6990', ' اااااااااااااااااااااااااااااااااااااااااااااووووووووووووووووووووووو', '2020-06-15 06:14:47', 1, 1, 1),
(156, 7, '5000', ' ', '2020-06-16 20:35:28', 1, 1, 1),
(157, 10, '6000', ' ', '2020-06-17 02:02:54', 1, 1, 1),
(158, 11, '500', ' ', '2020-06-17 03:45:42', 1, 1, 1),
(159, 14, '56000', ' ڵالبياتتلببلاتتاييد زعاببات لاتننلز اعغببونو ', '2020-06-17 07:53:22', 1, 1, 1),
(160, 13, '500', ' هلااااااااا هَــْـِْـْْـِلاّ مرحبامرحبا', '2020-06-17 07:55:42', 1, 1, 1),
(161, 12, '3400', ' يا ليلااااااااااه يا ليلااااااااااه', '2020-06-17 07:57:12', 1, 1, 1),
(162, 12, '2900', ' هلااااااااااا هلاااااااااااا يا مرحبااااااااااا', '2020-06-17 07:59:56', 1, 1, 1),
(163, 11, '50000', ' خلااااااااااااااااص', '2020-06-17 08:00:29', 1, 1, 1),
(168, 15, '3000', ' ', '2020-06-18 02:09:25', 1, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_custom`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_custom`;
CREATE TABLE IF NOT EXISTS `vw_custom` (
`custom_id` int(11)
,`custom_name` varchar(100)
,`end_total` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_custom`
--
DROP TABLE IF EXISTS `vw_custom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_custom`  AS  select `c`.`custom_id` AS `custom_id`,`c`.`custom_name` AS `custom_name`,sum(`i`.`amount`) AS `end_total` from (`customers` `c` join `invoices` `i` on((`c`.`custom_id` = `i`.`custom_id`))) group by `i`.`custom_id` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `customers` (`custom_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
