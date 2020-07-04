-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 09:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thesis`
--
CREATE DATABASE IF NOT EXISTS `db_thesis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_thesis`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accomplishment`
--

CREATE TABLE `tbl_accomplishment` (
  `accomplishment_id` int(10) NOT NULL,
  `project_no` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `caption` text NOT NULL,
  `date_accomplished` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accomplishment`
--

INSERT INTO `tbl_accomplishment` (`accomplishment_id`, `project_no`, `user_id`, `caption`, `date_accomplished`) VALUES
(10001, 10001, 10001, 'This is my First Accomplishment Report', '2017-10-18'),
(10002, 10003, 10001, 'makiling house', '2017-11-12'),
(10003, 10003, 10001, 'Umpor Ngo', '2017-11-12'),
(10004, 10002, 10001, '<h1>The best<b></b></h1>', '2017-11-21'),
(10005, 10001, 10002, '<h1>2323</h1>', '2017-11-23'),
(10006, 10001, 10002, '<p>213123</p>', '2017-11-09'),
(10007, 10001, 10002, '<h2>The me!</h2>', '2017-11-09'),
(10008, 10001, 10001, '<p>213213</p>', '2017-11-09'),
(10009, 10001, 10001, '<h1>The funsher is mountain on the house</h1>', '2017-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accomplishment_images`
--

CREATE TABLE `tbl_accomplishment_images` (
  `accomplishment_image_id` int(10) NOT NULL,
  `accomplishment_no` int(10) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accomplishment_images`
--

INSERT INTO `tbl_accomplishment_images` (`accomplishment_image_id`, `accomplishment_no`, `image_path`) VALUES
(10001, 10001, 'uploads/templates/accomplishment_sample/jpg'),
(10002, 10002, 'uploads/accomplishments/DSC00006.JPG'),
(10003, 10002, 'uploads/accomplishments/DSC00005.JPG'),
(10004, 10002, 'uploads/accomplishments/DSC00004.JPG'),
(10005, 10002, 'uploads/accomplishments/DSC00002.JPG'),
(10006, 10002, 'uploads/accomplishments/DSC00001.JPG'),
(10007, 10003, 'uploads/accomplishments/DSC00028.JPG'),
(10008, 10003, 'uploads/accomplishments/DSC00027.JPG'),
(10009, 10003, 'uploads/accomplishments/DSC00029.JPG'),
(10010, 10003, 'uploads/accomplishments/DSC00025.JPG'),
(10011, 10003, 'uploads/accomplishments/DSC00024.JPG'),
(10012, 10004, 'uploads/accomplishments/FB_IMG_1446338036607.png'),
(10013, 10004, 'uploads/accomplishments/female.png'),
(10014, 10005, 'uploads/accomplishments/FB_IMG_1446338036607.png'),
(10015, 10005, 'uploads/accomplishments/FB_IMG_1446338036607.png'),
(10016, 10005, 'uploads/accomplishments/female.png'),
(10017, 10005, 'uploads/accomplishments/Lighthouse.png'),
(10018, 10005, 'uploads/accomplishments/sdddda.png'),
(10019, 10005, 'uploads/accomplishments/Batman-Superman-wallpaper-10289271.jpg'),
(10020, 10006, 'uploads/accomplishments/Suicide_Squad-wallpaper-10910933.jpg'),
(10021, 10006, 'uploads/accomplishments/Suicide_squad_wallpaper_by_arkhamnatic-d93751k.png'),
(10022, 10006, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.png'),
(10023, 10007, 'uploads/accomplishments/Suicide_Squad-wallpaper-10910933.jpg'),
(10024, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.png'),
(10025, 10007, 'uploads/accomplishments/FB_IMG_1446338044006.jpg'),
(10026, 10007, 'uploads/accomplishments/mountain - Copy.jpg'),
(10027, 10007, 'uploads/accomplishments/mountain.jpg'),
(10028, 10007, 'uploads/accomplishments/13995 - Copy.jpg'),
(10029, 10007, 'uploads/accomplishments/13995.jpg'),
(10030, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456 - Copy.jpg'),
(10031, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456.jpg'),
(10032, 10007, 'uploads/accomplishments/batman-wallpaper-10467292.jpg'),
(10033, 10007, 'uploads/accomplishments/Batman-wallpaper-10915018.jpg'),
(10034, 10007, 'uploads/accomplishments/ABSTRACT-wallpaper-10231427.jpg'),
(10035, 10007, 'uploads/accomplishments/FB_IMG_1446338036607.jpg'),
(10036, 10007, 'uploads/accomplishments/dang.png'),
(10037, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.2.jpg'),
(10038, 10007, 'uploads/accomplishments/mountain - Copy.png'),
(10039, 10007, 'uploads/accomplishments/Lighthouse.png'),
(10040, 10007, 'uploads/accomplishments/sdddda.png'),
(10041, 10007, 'uploads/accomplishments/Batman-Superman-wallpaper-10289271.jpg'),
(10042, 10007, 'uploads/accomplishments/Suicide_Squad-wallpaper-10910933.jpg'),
(10043, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.png'),
(10044, 10007, 'uploads/accomplishments/FB_IMG_1446338044006.jpg'),
(10045, 10007, 'uploads/accomplishments/mountain - Copy.jpg'),
(10046, 10007, 'uploads/accomplishments/mountain.jpg'),
(10047, 10007, 'uploads/accomplishments/13995 - Copy.jpg'),
(10048, 10007, 'uploads/accomplishments/13995.jpg'),
(10049, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456 - Copy.jpg'),
(10050, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456.jpg'),
(10051, 10007, 'uploads/accomplishments/Batman-wallpaper-10915018.jpg'),
(10052, 10007, 'uploads/accomplishments/batman-wallpaper-10467292.jpg'),
(10053, 10007, 'uploads/accomplishments/Groot-wallpaper-10797930.jpg'),
(10054, 10007, 'uploads/accomplishments/ABSTRACT-wallpaper-10231427.jpg'),
(10055, 10007, 'uploads/accomplishments/FB_IMG_1446338036607.jpg'),
(10056, 10007, 'uploads/accomplishments/dang.png'),
(10057, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.2.jpg'),
(10058, 10007, 'uploads/accomplishments/mountain - Copy.png'),
(10059, 10007, 'uploads/accomplishments/Lighthouse.png'),
(10060, 10007, 'uploads/accomplishments/sdddda.png'),
(10061, 10007, 'uploads/accomplishments/Batman-Superman-wallpaper-10289271.jpg'),
(10062, 10007, 'uploads/accomplishments/FB_IMG_1446338044006.jpg'),
(10063, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.png'),
(10064, 10007, 'uploads/accomplishments/mountain - Copy.jpg'),
(10065, 10007, 'uploads/accomplishments/mountain.jpg'),
(10066, 10007, 'uploads/accomplishments/13995 - Copy.jpg'),
(10067, 10007, 'uploads/accomplishments/13995.jpg'),
(10068, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456 - Copy.jpg'),
(10069, 10007, 'uploads/accomplishments/ASM_2_Screenshoot-wallpaper-10281456.jpg'),
(10070, 10007, 'uploads/accomplishments/Batman-wallpaper-10915018.jpg'),
(10071, 10007, 'uploads/accomplishments/batman-wallpaper-10467292.jpg'),
(10072, 10007, 'uploads/accomplishments/FB_IMG_1446338036607.jpg'),
(10073, 10007, 'uploads/accomplishments/dang.png'),
(10074, 10007, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.2.jpg'),
(10075, 10007, 'uploads/accomplishments/mountain - Copy.png'),
(10076, 10007, 'uploads/accomplishments/Lighthouse.png'),
(10077, 10007, 'uploads/accomplishments/sdddda.png'),
(10078, 10007, 'uploads/accomplishments/Batman-Superman-wallpaper-10289271.jpg'),
(10079, 10008, 'uploads/accomplishments/edb21cc18d6bd2011a00000014177016.2.jpg'),
(10080, 10008, 'uploads/accomplishments/Lighthouse.png'),
(10081, 10008, 'uploads/accomplishments/sdddda.png'),
(10082, 10008, 'uploads/accomplishments/Batman-Superman-wallpaper-10289271.jpg'),
(10083, 10009, 'uploads/accomplishments/mountain.jpg'),
(10084, 10009, 'uploads/accomplishments/mountain - Copy.jpg'),
(10085, 10009, 'uploads/accomplishments/13995 - Copy.jpg'),
(10086, 10009, 'uploads/accomplishments/13995.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fullName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `imagePath` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id`, `username`, `password`, `fullName`, `email`, `Gender`, `Address`, `userType`, `imagePath`, `is_deleted`) VALUES
(10001, 'admin', 'admin', 'Admin123', 'admin#gmail.com', 'Male', 'Carmona', 'Administrator', 'uploads/accounts/Lighthouse.png', 0),
(10002, 'roel', 'roel', 'roel rivera longcop', 'roellongcop11@gmail.com', 'Male', 'san jose', 'Administrator', 'uploads/accounts/B612_20170204_094717_-_Copy.jpg', 0),
(10003, 'a', 'a', 'angel', 'abel@gmail.com', 'Female', 'asd', 'Engineer', 'uploads/accounts/B612_20170222_120757.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activitylogs`
--

CREATE TABLE `tbl_activitylogs` (
  `id` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `activity` text NOT NULL,
  `activityDate` varchar(15) NOT NULL,
  `activityTime` varchar(15) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_activitylogs`
--

INSERT INTO `tbl_activitylogs` (`id`, `userID`, `activity`, `activityDate`, `activityTime`, `is_deleted`) VALUES
(1, 10001, 'Company_name was Update ', '2017-10-18', '01:16:58am', 1),
(2, 10001, 'Add Products ', '2017-10-23', '01:02:42am', 1),
(3, 10001, 'Add Services ', '2017-10-23', '01:13:13am', 1),
(4, 10001, 'Add Products ', '2017-10-23', '01:15:04am', 1),
(5, 10001, 'Add Products ', '2017-10-23', '01:15:40am', 1),
(6, 10001, 'Add Services ', '2017-10-23', '01:18:27am', 1),
(7, 10001, 'Add Services ', '2017-10-23', '01:24:47am', 1),
(8, 10001, 'Add Products ', '2017-10-23', '02:21:43am', 1),
(9, 10001, 'Add Products ', '2017-10-23', '02:29:15am', 1),
(10, 10001, 'Add Products ', '2017-10-23', '02:31:54am', 1),
(11, 10001, 'Add Products Food Lacker', '2017-10-23', '09:26:15pm', 1),
(12, 10001, 'Add Products ', '2017-10-23', '09:27:34pm', 1),
(13, 10001, 'Add Products Multi Purpose', '2017-10-23', '09:34:50pm', 1),
(14, 10001, 'Add New Client roel', '2017-12-16', '01:11:00am', 1),
(15, 10001, 'Add New Client 23', '2017-12-16', '01:12:13am', 1),
(16, 10001, 'Add Personnel 23232', '2015-01-11', '05:50:24am', 1),
(17, 10001, 'Add Products ', '2015-01-11', '05:59:45am', 1),
(18, 10001, 'Add New Client annabelle', '2015-01-11', '10:06:16pm', 1),
(19, 10001, 'Add New Quotation 23', '2015-01-11', '11:25:36pm', 1),
(20, 10001, 'Add New Quotation 23', '2015-01-11', '11:40:35pm', 1),
(21, 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', '2017-11-09', '08:34:39am', 1),
(22, 10001, 'Add New UserAccount roel rivera longcop', '2017-11-09', '09:07:32am', 1),
(23, 10001, 'Update User Account roel rivera longcop', '2017-11-09', '09:18:40am', 1),
(24, 10001, 'Add New Project 23', '2017-11-09', '11:05:50am', 1),
(25, 10001, 'Add New Project 23', '2017-11-09', '11:07:18am', 1),
(26, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:52:41pm', 1),
(27, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:53:14pm', 1),
(28, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:54:05pm', 1),
(29, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:57:11pm', 1),
(30, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:04:28pm', 1),
(31, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:08:14pm', 1),
(32, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:09:06pm', 1),
(33, 10001, 'History was Update ', '2017-11-10', '07:10:03pm', 1),
(34, 10001, 'Export 8 Meter of item namefrom inventory to project: sample Project', '2017-11-10', '07:16:05pm', 1),
(35, 10001, 'Delete item :  from the inventory', '2017-11-10', '09:06:06pm', 1),
(36, 10001, 'Add New Quotation 2343232323', '2017-11-10', '11:45:43pm', 1),
(37, 10001, 'Add New Quotation nmnmnmnmn', '2017-11-11', '01:49:28am', 1),
(38, 10001, 'Add New Quotation 23', '2017-11-11', '09:05:34am', 1),
(39, 10001, 'Add New Quotation roel project', '2017-11-11', '09:23:02am', 1),
(40, 10001, 'Add New Quotation longcop roelito pogi', '2017-11-11', '09:26:03am', 1),
(41, 10001, 'Add New Quotation sample', '2017-11-11', '04:54:57pm', 1),
(42, 10001, 'Add New Quotation gogogogo', '2017-11-11', '04:57:04pm', 1),
(43, 10001, 'Add New Quotation nenenenenenen', '2017-11-11', '04:58:08pm', 1),
(44, 10001, 'Add New Quotation zzzz', '2017-11-11', '05:14:47pm', 1),
(45, 10001, 'Add New Quotation sumpor ngo', '2017-11-11', '05:30:58pm', 1),
(46, 10001, 'Add New Quotation btbtbtbtbtb', '2017-11-11', '05:33:48pm', 1),
(47, 10001, 'Add New Quotation cvcvcvcv', '2017-11-11', '05:36:07pm', 1),
(48, 10001, 'Add New Project cvcvcvcv', '2017-11-11', '05:37:15pm', 1),
(49, 10001, 'Updated Transportation from  to  to project ', '2017-11-11', '05:37:49pm', 1),
(50, 10001, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', '2017-11-11', '06:45:18pm', 1),
(51, 10001, 'Add new item 12', '2017-11-11', '06:58:11pm', 1),
(52, 10001, 'Update User Account Admin123', '2017-11-11', '07:37:49pm', 1),
(53, 10001, 'Updated Transportation from  to  to project ', '2017-11-11', '08:39:38pm', 1),
(54, 10001, 'Add New UserAccount angel', '2017-11-11', '09:25:55pm', 1),
(55, 10001, 'Add New Quotation 12', '2017-11-11', '09:41:59pm', 1),
(56, 10001, 'Update Client annabelle', '2017-11-12', '06:12:12am', 0),
(57, 10001, 'Update Client roel', '2017-11-12', '06:12:20am', 0),
(58, 10001, 'Update Client roel', '2017-11-12', '06:14:59am', 0),
(59, 10003, 'Export 12 Meter of item namefrom inventory to project: sample Project', '2017-11-12', '08:13:51am', 0),
(60, 10003, 'Export 12 Meter of item namefrom inventory to project: sample Project', '2017-11-12', '08:14:28am', 0),
(61, 10003, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', '2017-11-12', '08:14:57am', 0),
(62, 10003, 'Export 2 Meter of item namefrom inventory to project: cvcvcvcv', '2017-11-12', '08:15:28am', 0),
(63, 10003, 'Add new item 12', '2017-11-12', '08:15:46am', 0),
(64, 10003, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', '2017-11-12', '08:17:55am', 0),
(65, 10003, 'Export 12 Meter of item namefrom inventory to project: 23', '2017-11-12', '08:45:09am', 0),
(66, 10001, 'Updated 12 kilogram of item name to project ', '2017-11-13', '12:23:22am', 0),
(67, 10001, 'Add New Project 2343232323', '2017-11-14', '11:16:48am', 0),
(68, 10001, 'Export 11 Box of 12from inventory to project: 2343232323', '2017-11-14', '11:21:26am', 0),
(69, 10001, 'Add new item new', '2017-11-14', '11:13:51pm', 0),
(70, 10001, 'Add New Client 23', '2017-11-18', '07:23:02am', 0),
(71, 10001, 'Update Client roel', '2017-11-18', '11:40:20pm', 0),
(72, 10001, 'Update Client 2323', '2017-11-19', '02:20:10am', 0),
(73, 10001, 'Update User Account Admin123', '2017-11-19', '02:21:01am', 0),
(74, 10001, 'Add New Project nmnmnmnmn', '2017-11-19', '07:03:47am', 0),
(75, 10001, 'History was Update ', '2017-11-19', '08:45:38am', 0),
(76, 10001, 'History was Update ', '2017-11-19', '08:45:58am', 0),
(77, 10001, 'History was Update ', '2017-11-19', '08:46:25am', 0),
(78, 10001, 'Update User Account roel rivera longcop', '2017-11-19', '09:11:16am', 0),
(79, 10001, 'Update User Account roel rivera longcop', '2017-11-19', '09:11:32am', 0),
(80, 10001, 'Update User Account angel', '2017-11-19', '09:11:47am', 0),
(81, 10001, 'Update Personnel 23 23232', '2017-11-19', '09:52:13am', 0),
(82, 10001, 'Update Personnel 23 23232', '2017-11-19', '09:52:14am', 0),
(83, 10001, 'Update Personnel 23 23232', '2017-11-19', '09:58:54am', 0),
(84, 10001, 'Update Personnel 23 23232', '2017-11-19', '10:01:58am', 0),
(85, 10001, 'Add New Project roel project', '2017-11-20', '12:33:18am', 0),
(86, 10001, 'Add Products 23', '2017-11-20', '12:37:32am', 0),
(87, 10001, 'Delete Client success', '2017-11-20', '03:01:38pm', 0),
(88, 10001, 'Add New Client dessaMae', '2017-11-20', '03:05:05pm', 0),
(89, 10001, 'Update Personnel Annabelle gernale', '2017-11-20', '03:24:53pm', 0),
(90, 10001, 'Updated The ', '2017-11-20', '05:01:36pm', 0),
(91, 10001, 'Updated The ', '2017-11-20', '05:02:03pm', 0),
(92, 10001, 'Updated The ', '2017-11-20', '05:02:20pm', 0),
(93, 10001, 'Updated The ', '2017-11-20', '05:03:42pm', 0),
(94, 10001, 'Updated The ', '2017-11-20', '05:04:57pm', 0),
(95, 10001, 'Updated The ', '2017-11-20', '05:05:32pm', 0),
(96, 10001, 'Updated The ', '2017-11-20', '05:06:39pm', 0),
(97, 10001, 'Added The ', '2017-11-20', '05:15:16pm', 0),
(98, 10001, 'Updated The ', '2017-11-20', '05:16:01pm', 0),
(99, 10001, 'Added The 2323', '2017-11-20', '05:51:32pm', 0),
(100, 10001, 'Added The ', '2017-11-21', '11:42:23am', 0),
(101, 10001, 'Added The 21', '2017-11-21', '12:03:52pm', 0),
(102, 10001, 'Added The Company_name', '2017-11-21', '12:44:46pm', 0),
(103, 10001, 'Updated The History', '2017-11-21', '01:12:57pm', 0),
(104, 10001, 'Updated The Company_email', '2017-11-21', '01:14:51pm', 0),
(105, 10001, 'Updated The Company_email', '2017-11-21', '01:39:43pm', 0),
(106, 10001, 'Updated The History', '2017-11-21', '01:40:29pm', 0),
(107, 10001, 'Update User Account Admin123', '2017-11-09', '03:07:49pm', 0),
(108, 10001, 'Updated The Company_email', '2017-11-09', '04:01:45pm', 0),
(109, 10001, 'Delete Products 23', '2017-11-09', '04:32:00pm', 0),
(110, 10001, 'Add Products ', '2017-11-09', '04:33:41pm', 0),
(111, 10001, 'Add Products ', '2017-11-09', '04:37:10pm', 0),
(112, 10001, 'Add Products ', '2017-11-09', '04:37:41pm', 0),
(113, 10001, 'Add Products ', '2017-11-09', '04:39:49pm', 0),
(114, 10001, 'Add Products ', '2017-11-09', '04:40:19pm', 0),
(115, 10001, 'Add Products ', '2017-11-09', '04:41:16pm', 0),
(116, 10001, 'Add Products ', '2017-11-09', '04:42:56pm', 0),
(117, 10001, 'Add Products ', '2017-11-09', '05:01:12pm', 0),
(118, 10001, 'Add Products ', '2017-11-09', '05:01:42pm', 0),
(119, 10001, 'Add Products ', '2017-11-09', '05:02:25pm', 0),
(120, 10001, 'Add Products ', '2017-11-09', '05:02:27pm', 0),
(121, 10001, 'Add Products ', '2017-11-09', '05:03:59pm', 0),
(122, 10001, 'Add Services Plumbing', '2017-11-09', '05:04:41pm', 0),
(123, 10001, 'Add Services Carpentry', '2017-11-09', '05:05:26pm', 0),
(124, 10001, 'Add Products ', '2017-11-24', '06:44:45am', 0),
(125, 10001, 'Updated The Telephone_no', '2017-11-24', '09:16:34am', 0),
(126, 10001, 'Updated The Telephone_no', '2017-11-24', '09:17:01am', 0),
(127, 10001, 'Updated The Tell_fax_no', '2017-11-24', '09:17:23am', 0),
(128, 10001, 'Add Products ', '2017-11-24', '12:10:10pm', 0),
(129, 10001, 'Update Personnel Annabelle gernale', '2017-11-26', '03:27:11pm', 0),
(130, 10001, 'Update Personnel Roel Longcop', '2017-11-26', '03:29:04pm', 0),
(131, 10001, 'Update Personnel Roel Longcop', '2017-11-26', '03:29:25pm', 0),
(132, 10001, 'Add Products 23', '2017-11-26', '03:32:44pm', 0),
(133, 10001, 'Add Personnel evangelista', '2017-11-26', '03:33:53pm', 0),
(134, 10001, 'Delete Products 23', '2017-11-26', '03:37:13pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill_title`
--

CREATE TABLE `tbl_bill_title` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bill_title`
--

INSERT INTO `tbl_bill_title` (`title_id`, `title_name`) VALUES
(1, 'Preliminary'),
(2, 'Materials'),
(3, 'Supply And Installation'),
(4, 'Transportation'),
(5, 'sample'),
(6, 'roelito'),
(7, 'asdasdas'),
(8, 'asdasdas'),
(9, 'longcop'),
(10, 'roelness'),
(11, '3232'),
(12, '3232322323'),
(13, 'roelness'),
(14, 'the new'),
(15, '121212'),
(16, 'asdasd'),
(17, 'naks'),
(18, 'umpor ngo'),
(19, 'somess');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `client_no` int(10) NOT NULL,
  `client_name` varchar(30) NOT NULL,
  `client_position` varchar(50) NOT NULL,
  `client_number` varchar(20) NOT NULL,
  `client_email` varchar(30) NOT NULL,
  `client_address` varchar(40) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `verified` int(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_no`, `client_name`, `client_position`, `client_number`, `client_email`, `client_address`, `is_deleted`, `verified`, `username`, `password`, `code`) VALUES
(10001, 'dummy', 'dummy', '099999999', 'dummy@gmail.com', 'dummy', 0, 1, 'username', 'password', 'qwert12345'),
(10003, 'roel', 'engineer', '09078267471', 'roel@gmail.com', 'san jose', 0, 1, '23', '23', 'client'),
(10004, 'annabelle', 'secretary', '09078267471', 'annabelle@gmail.com', 'gma', 0, 1, 'anna', 'anna', 'client'),
(10028, 'maron', 'manager', '0909', 'maronbuilders@gmail.com', 'silmer', 0, 1, 'asd', 'asd', '7815696ecb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventorymaterial`
--

CREATE TABLE `tbl_inventorymaterial` (
  `id` int(10) NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `itemDescription` varchar(200) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `stockOnHand` int(10) NOT NULL,
  `maximumStock` int(10) NOT NULL,
  `criticalStock` int(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inventorymaterial`
--

INSERT INTO `tbl_inventorymaterial` (`id`, `itemName`, `itemDescription`, `unit`, `size`, `color`, `price`, `stockOnHand`, `maximumStock`, `criticalStock`, `status`, `is_deleted`) VALUES
(10001, 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 6, 500, 50, 'Critical', 0),
(10002, '12', '12', 'Box', '12', '12', 12, 1, 12, 11, 'Critical', 0),
(10003, '12', '12', 'Pieces', '1', '1', 1, 12, 222, 1, 'Normal', 0),
(10004, 'new', 'awe', 'Pieces', '323', '32', 32, 23, 232, 2, 'Normal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_materialexpenses`
--

CREATE TABLE `tbl_materialexpenses` (
  `id` int(10) NOT NULL,
  `projectID` int(10) NOT NULL,
  `PersonInCharge` varchar(30) NOT NULL,
  `materialName` varchar(50) NOT NULL,
  `materialDescription` varchar(200) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `size` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `price` int(15) NOT NULL,
  `quantity` int(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `source` varchar(20) NOT NULL,
  `dateAdded` varchar(10) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_materialexpenses`
--

INSERT INTO `tbl_materialexpenses` (`id`, `projectID`, `PersonInCharge`, `materialName`, `materialDescription`, `unit`, `size`, `color`, `price`, `quantity`, `cost`, `source`, `dateAdded`, `is_deleted`) VALUES
(1, 10001, 'Admin123', 'item name', 'description of the item here', 'kilogram', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-09', 1),
(2, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 8, 40000, 'Inventory', '2017-11-10', 1),
(3, 10004, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-11', 1),
(4, 10001, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 1),
(5, 10001, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(6, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 1),
(7, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 2, 10000, 'Inventory', '2017-11-12', 1),
(8, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 1),
(9, 10003, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(10, 10005, 'Admin123', '12', '12', 'Box', '12', '12', 12, 11, 132, 'Inventory', '2017-11-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(12) NOT NULL,
  `userImage` text NOT NULL,
  `userID` int(12) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `dateOccur` varchar(15) NOT NULL,
  `link` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `userImage`, `userID`, `description`, `type`, `dateOccur`, `link`, `is_deleted`) VALUES
(1, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-20', 'quotation', 0),
(2, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-20', 'quotation', 0),
(3, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-20', 'quotation', 0),
(4, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(5, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(6, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(7, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(8, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(9, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(10, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(11, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(12, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(13, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(14, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(15, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(16, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(17, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(18, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(19, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(20, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(21, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(22, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(23, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(24, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(25, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Added The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(26, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Added The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(27, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Added The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(28, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(29, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(30, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Updated The  of the company', 'activitylog', '2017-11-20', 'quotation', 0),
(31, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Added The 2323 of the company', 'activitylog', '2017-11-20', 'projects', 0),
(32, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Added The 2323 of the company', 'activitylog', '2017-11-20', 'projects', 0),
(33, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Added The 2323 of the company', 'activitylog', '2017-11-20', 'projects', 0),
(34, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Added The  of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(35, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Added The  of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(36, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Added The  of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(37, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Added The 21 of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(38, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Added The 21 of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(39, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Added The 21 of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(40, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Added The Company_name of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(41, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Added The Company_name of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(42, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Added The Company_name of the company', 'activitylog', '2017-11-21', 'dashboard', 0),
(43, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Project sample Project has zero profit', 'project', '2017-11-09', 'project/project_view/10001', 1),
(44, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Project sample Project has zero profit', 'project', '2017-11-09', 'project/project_view/10001', 0),
(45, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Project sample Project has zero profit', 'project', '2017-11-09', 'project/project_view/10001', 0),
(46, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10001, 'Project  has zero profit', 'project', '2017-11-09', 'project/project_view/10005', 1),
(47, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10002, 'Project  has zero profit', 'project', '2017-11-09', 'project/project_view/10005', 0),
(48, 'uploads/accounts/IMG_20170306_210557_588.jpg', 10003, 'Project  has zero profit', 'project', '2017-11-09', 'project/project_view/10005', 0),
(49, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(50, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(51, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(52, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(53, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(54, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(55, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(56, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(57, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(58, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(59, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(60, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(61, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(62, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(63, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(64, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(65, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(66, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(67, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(68, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(69, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-09', 'projects', 0),
(70, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(71, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(72, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(73, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(74, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(75, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(76, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(77, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(78, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(79, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(80, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(81, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(82, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(83, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(84, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-09', 'projects', 0),
(85, 'uploads/accounts/Lighthouse.png', 10001, 'New ServicesPlumbing', 'profile', '2017-11-09', 'projects', 0),
(86, 'uploads/accounts/Lighthouse.png', 10002, 'New ServicesPlumbing', 'profile', '2017-11-09', 'projects', 0),
(87, 'uploads/accounts/Lighthouse.png', 10003, 'New ServicesPlumbing', 'profile', '2017-11-09', 'projects', 0),
(88, 'uploads/accounts/Lighthouse.png', 10001, 'Added New ServicesPlumbing', 'activitylog', '2017-11-09', 'projects', 0),
(89, 'uploads/accounts/Lighthouse.png', 10002, 'Added New ServicesPlumbing', 'activitylog', '2017-11-09', 'projects', 0),
(90, 'uploads/accounts/Lighthouse.png', 10003, 'Added New ServicesPlumbing', 'activitylog', '2017-11-09', 'projects', 0),
(91, 'uploads/accounts/Lighthouse.png', 10001, 'New ServicesCarpentry', 'profile', '2017-11-09', 'projects', 0),
(92, 'uploads/accounts/Lighthouse.png', 10002, 'New ServicesCarpentry', 'profile', '2017-11-09', 'projects', 0),
(93, 'uploads/accounts/Lighthouse.png', 10003, 'New ServicesCarpentry', 'profile', '2017-11-09', 'projects', 0),
(94, 'uploads/accounts/Lighthouse.png', 10001, 'Added New ServicesCarpentry', 'activitylog', '2017-11-09', 'projects', 0),
(95, 'uploads/accounts/Lighthouse.png', 10002, 'Added New ServicesCarpentry', 'activitylog', '2017-11-09', 'projects', 0),
(96, 'uploads/accounts/Lighthouse.png', 10003, 'Added New ServicesCarpentry', 'activitylog', '2017-11-09', 'projects', 0),
(97, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Services ', 'activitylog', '2017-11-24', 'quotation', 0),
(98, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Services ', 'activitylog', '2017-11-24', 'quotation', 0),
(99, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Services ', 'activitylog', '2017-11-24', 'quotation', 0),
(100, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products ', 'activitylog', '2017-11-24', 'quotation', 0),
(101, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products ', 'activitylog', '2017-11-24', 'quotation', 0),
(102, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products ', 'activitylog', '2017-11-24', 'quotation', 0),
(103, 'uploads/accounts/Lighthouse.png', 10001, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-26', 'dashboard', 0),
(104, 'uploads/accounts/Lighthouse.png', 10002, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-26', 'dashboard', 0),
(105, 'uploads/accounts/Lighthouse.png', 10003, 'Update Personnel Annabelle gernale', 'activitylog', '2017-11-26', 'dashboard', 0),
(106, 'uploads/accounts/Lighthouse.png', 10001, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(107, 'uploads/accounts/Lighthouse.png', 10002, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(108, 'uploads/accounts/Lighthouse.png', 10003, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(109, 'uploads/accounts/Lighthouse.png', 10001, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(110, 'uploads/accounts/Lighthouse.png', 10002, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(111, 'uploads/accounts/Lighthouse.png', 10003, 'Update Personnel Roel Longcop', 'activitylog', '2017-11-26', 'dashboard', 0),
(112, 'uploads/accounts/Lighthouse.png', 10001, 'New Products23', 'profile', '2017-11-26', 'dashboard', 0),
(113, 'uploads/accounts/Lighthouse.png', 10002, 'New Products23', 'profile', '2017-11-26', 'dashboard', 0),
(114, 'uploads/accounts/Lighthouse.png', 10003, 'New Products23', 'profile', '2017-11-26', 'dashboard', 0),
(115, 'uploads/accounts/Lighthouse.png', 10001, 'Added New Products23', 'activitylog', '2017-11-26', 'dashboard', 0),
(116, 'uploads/accounts/Lighthouse.png', 10002, 'Added New Products23', 'activitylog', '2017-11-26', 'dashboard', 0),
(117, 'uploads/accounts/Lighthouse.png', 10003, 'Added New Products23', 'activitylog', '2017-11-26', 'dashboard', 0),
(118, 'uploads/accounts/Lighthouse.png', 10001, 'Add Personnel evangelista', 'activitylog', '2017-11-26', 'dashboard', 0),
(119, 'uploads/accounts/Lighthouse.png', 10002, 'Add Personnel evangelista', 'activitylog', '2017-11-26', 'dashboard', 0),
(120, 'uploads/accounts/Lighthouse.png', 10003, 'Add Personnel evangelista', 'activitylog', '2017-11-26', 'dashboard', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnels`
--

CREATE TABLE `tbl_personnels` (
  `personnel_id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `team` varchar(20) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnels`
--

INSERT INTO `tbl_personnels` (`personnel_id`, `first_name`, `middle_name`, `last_name`, `email`, `position`, `team`, `is_deleted`, `image_path`) VALUES
(10001, 'Roel', 'Rivera', 'Longcop', 'roel@gmail.com', 'Engineer', 'Fabrication', 0, 'uploads/templates/male.png'),
(10002, 'Annabelle', 'baltazar', 'gernale', 'abel17@gmail.com', 'Helper', 'Designing', 0, 'uploads/templates/female.png'),
(10003, 'dessa', 'lumiano', 'evangelista', 'dessa@gmail.com', 'Manager', 'Designing', 0, 'uploads/personnels/21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preference`
--

CREATE TABLE `tbl_preference` (
  `preference_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `work_description` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `material_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_preference`
--

INSERT INTO `tbl_preference` (`preference_id`, `client_id`, `work_description`, `material_name`, `material_description`) VALUES
(16, 10028, 'number 3', 'asd', 'asd'),
(17, 10028, 'two', 'second', 'runner'),
(18, 10028, 'two', '23', '23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_images`
--

CREATE TABLE `tbl_product_images` (
  `product_image_id` int(10) NOT NULL,
  `product_no` int(10) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_images`
--

INSERT INTO `tbl_product_images` (`product_image_id`, `product_no`, `image_path`) VALUES
(10010, 10005, 'uploads/products/door.PNG'),
(10013, 10006, 'uploads/products/multi.PNG'),
(10014, 10004, 'uploads/products/ewew.PNG'),
(10015, 10001, 'uploads/products/project_2.PNG'),
(10016, 10002, 'uploads/products/project_1.PNG'),
(10017, 10003, 'uploads/products/Capturefdfdf.PNG'),
(10018, 10005, 'uploads/products/Capture.PNG'),
(10019, 10005, 'uploads/products/Capture2.PNG'),
(10020, 10005, 'uploads/products/dasdasd.PNG'),
(10021, 10005, 'uploads/products/Capturefdfdf.PNG'),
(10022, 10005, 'uploads/products/pushcart.PNG'),
(10023, 10005, 'uploads/products/we.PNG'),
(10024, 10007, 'uploads/products/female.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_description` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_description`, `is_deleted`) VALUES
(10001, 'Stand', 'Stainless Stand with Sticker', 0),
(10002, 'Push Carts', '4 wheel stainless push carts', 0),
(10003, 'Food Track', 'Stainless Foodtrack 404 type', 0),
(10004, 'Sofa Holder', '316 Type Sofa Stainless Holder', 0),
(10005, 'Food Lacker', '4ft Food Locker Divider', 0),
(10006, 'Multi Purpose', 'Kitchen type stainless works', 0),
(10007, '23', '2323323', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `profile_id` int(10) NOT NULL,
  `legend` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`profile_id`, `legend`, `description`, `is_deleted`) VALUES
(10001, 'Company_name', '<p>Roel Builders Company</p>\r\n', 0),
(10002, 'Company_address', '<p>Blk 8 Lot 15 Silmer Village, Bi&ntilde;an, Laguna</p>\r\n', 0),
(10003, 'Company_email', 'maronenterprise@gmail.com<h1></h1>', 0),
(10004, 'Telephone_no', '<p>6368619/8025961</p>\r\n', 0),
(10005, 'Tell_fax_no', '<p>6368619</p>\r\n', 0),
(10006, 'Mobile_no', '09988673570/09272168024', 0),
(10007, 'Mission', 'MARON BUILDERS CO. mission is to develop and set new\r\nstate-of the art trend & technologies in Construction Industry by\r\nusing comprehensive research that will minimized construction\r\ncost for mutual benefit of its clientele and the company.\r\n', 0),
(10008, 'Vission', 'The people behind the management of Maron Builders Co.\r\npossess the competence and expertise in undertaking and managing\r\na construction business with long professional experience\r\nin various aspects of constructions and engineering work which\r\nis the key to the firms successful endeavor.', 0),
(10009, 'History', '<p></p>\r\n\r\n<p>&nbsp; Each project is undertaken by an ad-hoc team which is led by Project Engineer. For a complex project involving a sensitive client – firm relationship, a Project Manager supervises the Project Engineer and his technical staff. When a project requires several alternatives, the most feasible one is chosen without compromising quality output. The Company team member understands the importance of cooperation and coordination. The availability of varied expertise within the organization has been proven to be beneficial in the successful execution of projects. To maintain and improve the firms quality of work and to keep abreast to the new development in construction and state – of-the art technologies thereof, members of the technical staff are constantly trained in the trends in their respective fields. They are active members of professional association, attend conferences related to their respective fields and pursue opportunities for continuing education.</p>\r\n\r\n<p>"</p>', 0),
(10010, '', '', 0),
(10011, '21', '<p>12</p>\r\n', 0),
(10012, 'Company_name', '<div id="epd">32323</div>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id` int(10) NOT NULL,
  `quotation_no` int(10) NOT NULL,
  `client_no` int(10) NOT NULL,
  `expenses` float NOT NULL,
  `profit` float NOT NULL,
  `projectStatus` varchar(10) NOT NULL,
  `imagePath` text NOT NULL,
  `project_leader` int(3) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`id`, `quotation_no`, `client_no`, `expenses`, `profit`, `projectStatus`, `imagePath`, `project_leader`, `is_deleted`) VALUES
(10001, 10001, 10001, 60000, 0, 'Finished', 'uploads/projects/dota.png', 10002, 0),
(10002, 10002, 10004, 0, 69, 'Finished', 'uploads/projects/female.png', 10002, 0),
(10003, 10003, 10004, 61728, -60000, 'Pending', 'uploads/projects/DSC000251.JPG', 10002, 0),
(10004, 10015, 10003, 1728, 0, 'Pending', 'uploads/projects/DSC00002.JPG', 10001, 0),
(10005, 10004, 10004, 0, 69, 'Pending', 'uploads/projects/B612_20170411_081513.jpg', 10001, 0),
(10006, 10005, 10003, 0, 69, 'Pending', 'uploads/templates/project.png', 10001, 0),
(10007, 10007, 10004, 0, 36, 'Pending', 'uploads/templates/project.png', 10001, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `quotation_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `date_created` varchar(10) NOT NULL,
  `terms` int(5) NOT NULL,
  `completion` int(5) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_address` text NOT NULL,
  `scope_of_work` text NOT NULL,
  `material_cost` float NOT NULL,
  `worker_cost` float NOT NULL,
  `transpo_cost` float NOT NULL,
  `bill_of_quantities` text NOT NULL,
  `estimated_cost` float NOT NULL,
  `terms_and_condition` text NOT NULL,
  `date_started` varchar(10) NOT NULL,
  `expected_finished` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_quotation`
--

INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10001, 10001, '2017-10-18', 10, 4, 'sample Project', 'Carmona Cvsu', 'work 1\r\nwork 2\r\nwork 3\r\nwork 4\r\nwork 5', 10000, 10000, 10000, 'material 1\r\nmaterial 2\r\nmaterial 3\r\nmaterial 4\r\nmaterial 5', 30000, 'terms no 1\r\nterms no 2\r\nterms no 3\r\nterms no 4\r\nterms no 5', '2017-10-18', '2017-11-18', 'Approved', 0),
(10002, 10004, '2015-01-11', 23, 22, '23', '23', '23', 23, 23, 23, '23', 69, '23', '01/12/2015', '01/12/2015', 'Approved', 1),
(10003, 10004, '2015-01-11', 23, 23, '23', '23', '23', 23, 23, 23, '23', 69, '23', '01/12/2015', '01/12/2015', 'Approved', 0),
(10004, 10004, '2017-11-10', 23, 23, '2343232323', '23', '23', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>another</td><td>23.00</td><td>Pieces</td><td>23.00</td><td>2.00</td><td>25.00</td><td>25.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#37''><i class=''fa fa-trash''></i></a></td></tr><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>23.00</td><td></td><td>2.00</td><td>2.00</td><td>4.00</td><td>4.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#38''><i class=''fa fa-trash''></i></a></td></tr><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>the supply</td><td>1.00</td><td>Pieces</td><td>1.00</td><td>1.00</td><td>2.00</td><td>2.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#36''><i class=''fa fa-trash''></i></a></td></tr><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td colspan=''7''>Grand Total</td><td>31</td></tr></tbody></table>', 69, '23', '23', '', 'Approved', 0);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10005, 10003, '2017-11-11', 23, 23, 'nmnmnmnmn', '23', '23', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill42''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill42''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>another</td><td>23.00</td><td>Pieces</td><td>23.00</td><td>2.00</td><td>25.00</td><td>25.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill37''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill37''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill40''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill40''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>3</td><td>2323232</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill41''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill41''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>the supply</td><td>1.00</td><td>Pieces</td><td>1.00</td><td>1.00</td><td>2.00</td><td>2.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill36''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill36''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td colspan=''7''>Grand Total</td><td>165</td></tr></tbody></table>', 69, '23', '11/22/2017', '11/23/2017', 'Approved', 1);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10006, 10003, '2017-11-11', 23, 23, '23', '23', '223', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill6'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title6''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description6''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty6''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit6''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''mat6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''labor6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total6'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id6''  class=''form-control'' value=''6'' readonly><a onclick=''edit_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill6'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill7'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title7''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description7''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty7''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit7''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''mat7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''labor7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total7'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id7''  class=''form-control'' value=''7'' readonly><a onclick=''edit_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill7'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>323rrr</td><td>323.00</td><td>Liter</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill8''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill8''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill8'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title8''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description8''  style=''height: 100px''>323rrr</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty8''   value=''323.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit8''   style=''width: 100%''><option>Liter</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''mat8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''labor8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total8'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id8''  class=''form-control'' value=''8'' readonly><a onclick=''edit_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill8'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 323rrr</h6></div><div class=''modal-footer''><a onclick=''delete_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill9''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill9''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill9'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title9''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description9''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty9''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit9''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''mat9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''labor9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total9'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id9''  class=''form-control'' value=''9'' readonly><a onclick=''edit_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill9'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>3</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill10''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill10''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill10'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title10''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description10''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty10''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit10''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''mat10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''labor10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total10'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id10''  class=''form-control'' value=''10'' readonly><a onclick=''edit_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill10'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>32.00</td><td></td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill4''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill4''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill6'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title6''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description6''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty6''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit6''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''mat6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''labor6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total6'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id6''  class=''form-control'' value=''6'' readonly><a onclick=''edit_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill6'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill7''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill7''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill7'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title7''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description7''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty7''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit7''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''mat7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''labor7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total7'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id7''  class=''form-control'' value=''7'' readonly><a onclick=''edit_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill7'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill8'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title8''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description8''  style=''height: 100px''>323rrr</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty8''   value=''323.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit8''   style=''width: 100%''><option>Liter</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''mat8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''labor8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total8'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id8''  class=''form-control'' value=''8'' readonly><a onclick=''edit_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill8'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 323rrr</h6></div><div class=''modal-footer''><a onclick=''delete_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill9'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title9''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description9''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty9''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit9''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''mat9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''labor9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total9'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id9''  class=''form-control'' value=''9'' readonly><a onclick=''edit_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill9'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill10'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title10''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description10''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty10''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit10''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''mat10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''labor10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total10'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id10''  class=''form-control'' value=''10'' readonly><a onclick=''edit_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill10'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill2''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill2''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''', 69, '23', '11/08/2017', '11/20/2017', 'Pending', 1);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10007, 10004, '2017-11-11', 12, 12, 'roel project', 'san jpose', '12', 12, 12, 12, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th></tr></thead>  <tbody><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>32.00</td><td>Lot</td><td>32.00</td><td>23.00</td><td>55.00</td><td>55.00</td></tr><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''>Grand Total</td><td>101</td></tr></tbody></table>', 36, '12', '11/24/2017', '12/06/2017', 'Approved', 0),
(10008, 10004, '2017-11-11', 12, 12, 'longcop roelito pogi', '12', '12', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL COST</th></tr></thead>  <tbody><tr><td><b>I</b></td><td colspan=''7''><b>Preliminary</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Lot</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td><b>II</b></td><td colspan=''7''><b>Materials</td></tr><tr><td>1</td><td>12</td><td>12.00</td><td></td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''>Grand Total</td><td>48</td></tr></tbody></table>', 69, '12', '11/16/2017', '11/22/2017', 'Pending', 0),
(10009, 10004, '2017-11-11', 12, 12, 'sample', '1221', '12', 12, 12, 12, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL COST</th></tr></thead>  <tbody><tr><td><b>I</b></td><td colspan=''7''><b>Preliminary</b></td></tr><tr><td>1</td><td>roel</td><td>32.00</td><td>Lot</td><td>0.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>46</td></tr></tbody></table>', 36, '12', '11/16/2017', '11/23/2017', 'Pending', 0),
(10010, 10003, '2017-11-11', 12, 12, 'gogogogo', '12', '121212', 12, 12, 12, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL COST</th></tr></thead>  <tbody><tr><td><b>I</b></td><td colspan=''7''><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>II</b></td><td colspan=''7''><b>Materials</td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Box</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td><b>III</b></td><td colspan=''7''><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>32</td><td>32.00</td><td>Sets</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>198</td></tr></tbody></table>', 36, '121212', '11/21/2017', '11/30/2017', 'Pending', 0),
(10011, 10003, '2017-11-11', 12, 12, 'nenenenenenen', '12', '12', 12, 12, 16, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL COST</th></tr></thead>  <tbody><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>0</td></tr></tbody></table>', 40, '12', '12/01/2017', '11/16/2017', 'Pending', 0),
(10012, 10004, '2017-11-11', 23, 23, 'zzzz', '23', 'ew', 32, 32, 24, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL COST</th></tr></thead>  <tbody><tr><td><b>II</b></td><td colspan=''7''><b>Materials</td></tr><tr><td>1</td><td>232323</td><td>32.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>64</td></tr></tbody></table>', 88, 'ew', '11/16/2017', '11/08/2017', 'Pending', 0),
(10013, 10004, '2017-11-11', 23, 23, 'sumpor ngo', '23', '23', 23, 23, 483, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL COST</th></tr></thead>  <tbody><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td><b>A</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>3</td><td></td><td>0.00</td><td></td><td>434.00</td><td>3.00</td><td>437.00</td><td>437.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>8993</td></tr></tbody></table>', 529, '23', '11/08/2017', '11/15/2017', 'Pending', 0),
(10014, 10003, '2017-11-11', 12, 12, 'btbtbtbtbtb', '1212', '121212', 67, 87, 23392, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th><th rowspan=''2'' class=''center''>ACTION</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill3''><i class=''fa fa-trash''></i></a><a onclick=''edit_bill(3)'' class=''btn btn-warning'' data-toggle=''modal'' data-target=''#update_bill''><i class=''fa fa-pencil''></i></a></td></tr><tr><td><b>B</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill1''><i class=''fa fa-trash''></i></a><a onclick=''edit_bill(1)'' class=''btn btn-warning'' data-toggle=''modal'' data-target=''#update_bill''><i class=''fa fa-pencil''></i></a></td></tr><tr><td>2</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23323.00</td><td>23346.00</td><td>23346.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill2''><i class=''fa fa-trash''></i></a><a onclick=''edit_bill(2)'' class=''btn btn-warning'' data-toggle=''modal'' data-target=''#update_bill''><i class=''fa fa-pencil''></i></a></td></tr><tr><td><b>C</b></td><td colspan=''8''><b>roelito</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Box</td><td>3.00</td><td>23.00</td><td>26.00</td><td>26.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill4''><i class=''fa fa-trash''></i></a><a onclick=''edit_bill(4)'' class=''btn btn-warning'' data-toggle=''modal'' data-target=''#update_bill''><i class=''fa fa-pencil''></i></a></td></tr><tr><td><b>D</b></td><td colspan=''8''><b>umpor ngo</b></td></tr><tr><td>1</td><td>sadsd</td><td>32.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill5''><i class=''fa fa-trash''></i></a><a onclick=''edit_bill(5)'' class=''btn btn-warning'' data-toggle=''modal'' data-target=''#update_bill''><i class=''fa fa-pencil''></i></a></td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>23546</td></tr></tbody></table>', 23546, '12', '11/24/2017', '11/22/2017', 'Pending', 0),
(10015, 10003, '2017-11-11', 12, 12, 'cvcvcvcv', '12', '12', 64, 64, 64, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>23</td><td>32.00</td><td>Pieces</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>192</td></tr></tbody></table>', 192, '12', '11/17/2017', '11/15/2017', 'Approved', 0),
(10016, 10003, '2017-11-11', 12, 12, '12', '12', '2323', 13, 13, 28, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Preliminary</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Pieces</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Sets</td><td>1.00</td><td>1.00</td><td>2.00</td><td>2.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td>2</td><td></td><td>0.00</td><td></td><td>2.00</td><td>2.00</td><td>4.00</td><td>4.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>54</td></tr></tbody></table>', 54, '2323', '11/12/2017', '10/31/2017', 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_images`
--

CREATE TABLE `tbl_service_images` (
  `service_image_id` int(10) NOT NULL,
  `service_no` int(10) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service_images`
--

INSERT INTO `tbl_service_images` (`service_image_id`, `service_no`, `image_path`) VALUES
(10011, 10001, 'uploads/services/project_3.PNG'),
(10012, 10003, 'uploads/services/we.PNG'),
(10013, 10004, 'uploads/services/interior.PNG'),
(10014, 10002, 'uploads/services/service_1.jpg'),
(10015, 10005, 'uploads/services/service_2.jpg'),
(10016, 10005, 'uploads/services/service_2.jpg'),
(10017, 10006, 'uploads/services/service_3.jpg'),
(10018, 10001, 'uploads/services/dasdasdasdxx.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(10) NOT NULL,
  `service_name` varchar(30) NOT NULL,
  `service_description` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `service_name`, `service_description`, `is_deleted`) VALUES
(10001, 'Construction', 'Construction of 2 storey House in Binan Laguna', 0),
(10002, 'Fabrication Service', 'Stainless OR steel Fabrication\r\n', 0),
(10003, 'Fabrication And Intallation', 'Barrier Installation Service', 0),
(10004, 'Interioir Designing', 'MAHIYA Residence Binan Laguna, Interior Design Layout', 0),
(10005, 'Plumbing', 'Ove all Plumbing of the house', 0),
(10006, 'Carpentry', ' all aspects of carpentry works', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_bill`
--

CREATE TABLE `tbl_temp_bill` (
  `bill_id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `materials` float(10,2) NOT NULL,
  `labor` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp_bill`
--

INSERT INTO `tbl_temp_bill` (`bill_id`, `title`, `description`, `quantity`, `unit`, `materials`, `labor`, `total`) VALUES
(6, 'Transportation', '', 0.00, '', 23.00, 2.00, 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_images`
--

CREATE TABLE `tbl_temp_images` (
  `t_id` int(11) NOT NULL,
  `image_type_id` int(10) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp_images`
--

INSERT INTO `tbl_temp_images` (`t_id`, `image_type_id`, `image_path`) VALUES
(1, 10007, 'uploads/products/female.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transportexpenses`
--

CREATE TABLE `tbl_transportexpenses` (
  `id` int(10) NOT NULL,
  `projectID` int(10) NOT NULL,
  `PersonInCharge` varchar(30) NOT NULL,
  `transportFrom` varchar(100) NOT NULL,
  `transportTo` varchar(100) NOT NULL,
  `cost` int(10) NOT NULL,
  `receit_no` varchar(30) NOT NULL,
  `dateAdded` varchar(10) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transportexpenses`
--

INSERT INTO `tbl_transportexpenses` (`id`, `projectID`, `PersonInCharge`, `transportFrom`, `transportTo`, `cost`, `receit_no`, `dateAdded`, `is_deleted`) VALUES
(1, 10001, 'Admin123', '23', '34', 23, '23', '2015-01-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_description`
--

CREATE TABLE `tbl_work_description` (
  `work_des_id` int(10) NOT NULL,
  `client_id` int(11) NOT NULL,
  `work_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work_description`
--

INSERT INTO `tbl_work_description` (`work_des_id`, `client_id`, `work_description`) VALUES
(1, 10028, 'Flooring'),
(2, 10028, 'Flooring'),
(3, 10028, 'roofting'),
(4, 10028, 'number 3'),
(5, 10028, 'Flooring'),
(6, 10028, 'number 3'),
(7, 10028, 'roelito'),
(8, 10028, 'roelito'),
(9, 10028, 'number 3'),
(10, 10028, 'roofting'),
(11, 10028, 'roofting'),
(12, 10028, 'Flooring'),
(13, 10028, 'roofting'),
(14, 10028, 'Flooring'),
(15, 10028, 'number 3'),
(16, 10028, 'two'),
(17, 10028, 'two');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workerexpenses`
--

CREATE TABLE `tbl_workerexpenses` (
  `id` int(10) NOT NULL,
  `projectID` int(10) NOT NULL,
  `PersonInCharge` varchar(30) NOT NULL,
  `workerPosition` varchar(50) NOT NULL,
  `salary` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `daysWorked` int(5) NOT NULL,
  `cost` int(10) NOT NULL,
  `dateAdded` varchar(10) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_workerexpenses`
--

INSERT INTO `tbl_workerexpenses` (`id`, `projectID`, `PersonInCharge`, `workerPosition`, `salary`, `quantity`, `daysWorked`, `cost`, `dateAdded`, `is_deleted`) VALUES
(1, 10004, 'Admin123', '121', 12, 12, 12, 1728, '2017-11-11', 0),
(2, 10003, 'Admin123', '12', 12, 12, 12, 1728, '2017-11-11', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accomplishment`
--
ALTER TABLE `tbl_accomplishment`
  ADD PRIMARY KEY (`accomplishment_id`),
  ADD KEY `project_no` (`project_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  ADD PRIMARY KEY (`accomplishment_image_id`),
  ADD KEY `accomplishment_no` (`accomplishment_no`);

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  ADD PRIMARY KEY (`personnel_id`);

--
-- Indexes for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  ADD PRIMARY KEY (`preference_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_no` (`product_no`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_no` (`quotation_no`),
  ADD KEY `client_no` (`client_no`),
  ADD KEY `project_leader` (`project_leader`);

--
-- Indexes for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  ADD PRIMARY KEY (`quotation_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  ADD PRIMARY KEY (`service_image_id`),
  ADD KEY `service_no` (`service_no`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_temp_bill`
--
ALTER TABLE `tbl_temp_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_temp_images`
--
ALTER TABLE `tbl_temp_images`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `tbl_work_description`
--
ALTER TABLE `tbl_work_description`
  ADD PRIMARY KEY (`work_des_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accomplishment`
--
ALTER TABLE `tbl_accomplishment`
  MODIFY `accomplishment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;
--
-- AUTO_INCREMENT for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  MODIFY `accomplishment_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10087;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  MODIFY `personnel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `product_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10025;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;
--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10013;
--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;
--
-- AUTO_INCREMENT for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  MODIFY `service_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10019;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `tbl_temp_bill`
--
ALTER TABLE `tbl_temp_bill`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_temp_images`
--
ALTER TABLE `tbl_temp_images`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_work_description`
--
ALTER TABLE `tbl_work_description`
  MODIFY `work_des_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_accomplishment`
--
ALTER TABLE `tbl_accomplishment`
  ADD CONSTRAINT `tbl_accomplishment_ibfk_1` FOREIGN KEY (`project_no`) REFERENCES `tbl_project` (`id`),
  ADD CONSTRAINT `tbl_accomplishment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_account` (`id`);

--
-- Constraints for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  ADD CONSTRAINT `tbl_accomplishment_images_ibfk_1` FOREIGN KEY (`accomplishment_no`) REFERENCES `tbl_accomplishment` (`accomplishment_id`);

--
-- Constraints for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  ADD CONSTRAINT `tbl_activitylogs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbl_account` (`id`);

--
-- Constraints for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  ADD CONSTRAINT `tbl_materialexpenses_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tbl_project` (`id`);

--
-- Constraints for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD CONSTRAINT `tbl_notification_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbl_account` (`id`);

--
-- Constraints for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  ADD CONSTRAINT `tbl_preference_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_no`);

--
-- Constraints for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD CONSTRAINT `tbl_product_images_ibfk_1` FOREIGN KEY (`product_no`) REFERENCES `tbl_products` (`product_id`);

--
-- Constraints for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD CONSTRAINT `tbl_project_ibfk_1` FOREIGN KEY (`client_no`) REFERENCES `tbl_client` (`client_no`),
  ADD CONSTRAINT `tbl_project_ibfk_2` FOREIGN KEY (`quotation_no`) REFERENCES `tbl_quotation` (`quotation_id`),
  ADD CONSTRAINT `tbl_project_ibfk_3` FOREIGN KEY (`project_leader`) REFERENCES `tbl_account` (`id`);

--
-- Constraints for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  ADD CONSTRAINT `tbl_quotation_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_no`);

--
-- Constraints for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  ADD CONSTRAINT `tbl_service_images_ibfk_1` FOREIGN KEY (`service_no`) REFERENCES `tbl_services` (`service_id`);

--
-- Constraints for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  ADD CONSTRAINT `tbl_transportexpenses_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tbl_project` (`id`);

--
-- Constraints for table `tbl_work_description`
--
ALTER TABLE `tbl_work_description`
  ADD CONSTRAINT `tbl_work_description_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_no`);

--
-- Constraints for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  ADD CONSTRAINT `tbl_workerexpenses_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tbl_project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
