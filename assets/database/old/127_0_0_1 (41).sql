-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2017 at 11:06 PM
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
(10003, 10003, 10001, 'Umpor Ngo', '2017-11-12');

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
(10011, 10003, 'uploads/accomplishments/DSC00024.JPG');

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
(10001, 'admin', 'admin', 'Admin123', 'admin#gmail.com', 'Male', 'Carmona', 'Administrator', 'uploads/accounts/DSC00024.JPG', 0),
(10002, 'roel', 'roel', 'roel rivera longcop', 'roellongcop11@gmail.com', 'Male', 'san jose', 'Administrator', 'uploads/accounts/maxresdefault.jpg', 0),
(10003, 'a', 'a', 'angel', 'abel@gmail.com', 'Female', 'asd', 'Engineer', 'uploads/accounts/DSC00045.JPG', 0);

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
(65, 10003, 'Export 12 Meter of item namefrom inventory to project: 23', '2017-11-12', '08:45:09am', 0);

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
  `client_type` int(1) NOT NULL,
  `client_number` varchar(20) NOT NULL,
  `client_email` varchar(30) NOT NULL,
  `client_address` varchar(40) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `verified` int(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `code` varchar(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_no`, `client_name`, `client_position`, `client_type`, `client_number`, `client_email`, `client_address`, `is_deleted`, `verified`, `username`, `password`, `code`, `status`) VALUES
(10001, 'dummy', 'dummy', 1, '099999999', 'dummy@gmail.com', 'dummy', 0, 1, 'username', 'password', 'qwert12345', 0),
(10003, 'roel', 'engineer', 2, '09078267471', 'roel@gmail.com', 'san jose', 0, 1, '23', '23', 'client', 0),
(10004, 'annabelle', 'secretary', 2, '09078267471', 'annabelle@gmail.com', 'gma', 0, 1, '', '', 'client', 0);

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
(10002, '12', '12', 'Box', '12', '12', 12, 12, 12, 11, 'Exceed', 0),
(10003, '12', '12', 'Pieces', '1', '1', 1, 12, 222, 1, 'Normal', 0);

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
(1, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-09', 0),
(2, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 8, 40000, 'Inventory', '2017-11-10', 0),
(3, 10004, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-11', 0),
(4, 10001, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(5, 10001, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(6, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(7, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 2, 10000, 'Inventory', '2017-11-12', 0),
(8, 10004, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0),
(9, 10003, 'angel', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 12, 60000, 'Inventory', '2017-11-12', 0);

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
(1, 'uploads/templates/male.png', 10001, 'Update Comapny Company_name', 'activitylog', '2017-10-18', 'dashboard', 1),
(2, 'uploads/templates/male.png', 10001, 'Added New Services ', 'activitylog', '2017-10-23', 'services', 1),
(3, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 1),
(4, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(5, 'uploads/templates/male.png', 10001, 'Added New Services ', 'activitylog', '2017-10-23', 'services', 1),
(6, 'uploads/templates/male.png', 10001, 'Added New Services ', 'activitylog', '2017-10-23', 'services', 1),
(7, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 1),
(8, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(9, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 1),
(10, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(11, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 1),
(12, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(13, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 1),
(14, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(15, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 1),
(16, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(17, 'uploads/templates/male.png', 10001, 'New ProductsFood Lacker', 'profile', '2017-10-23', 'products', 1),
(18, 'uploads/templates/male.png', 10001, 'Added New ProductsFood Lacker', 'activitylog', '2017-10-23', 'products', 1),
(19, 'uploads/templates/male.png', 10001, 'Added New Products ', 'activitylog', '2017-10-23', 'products', 1),
(20, 'uploads/templates/male.png', 10001, 'New ProductsMulti Purpose', 'profile', '2017-10-23', 'products', 1),
(21, 'uploads/templates/male.png', 10001, 'Added New ProductsMulti Purpose', 'activitylog', '2017-10-23', 'products', 1),
(22, 'uploads/templates/male.png', 10001, 'New Client roel', 'client', '2017-12-16', 'client/list/All', 1),
(23, 'uploads/templates/male.png', 10001, 'Added New Client roel', 'activitylog', '2017-12-16', 'client/list/All', 1),
(24, 'uploads/templates/male.png', 10001, 'New Client 23', 'client', '2017-12-16', 'client/list/All', 1),
(25, 'uploads/templates/male.png', 10001, 'Added New Client 23', 'activitylog', '2017-12-16', 'client/list/All', 1),
(26, 'uploads/templates/male.png', 10001, 'Add Personnel 23232', 'activitylog', '2015-01-11', 'personnels', 1),
(27, 'uploads/templates/male.png', 10001, 'Added New Products ', 'activitylog', '2015-01-11', 'products', 1),
(28, 'uploads/templates/male.png', 10001, 'New Client annabelle', 'client', '2015-01-11', 'client/list/All', 1),
(29, 'uploads/templates/male.png', 10001, 'Added New Client annabelle', 'activitylog', '2015-01-11', 'client/list/All', 1),
(30, 'uploads/templates/male.png', 10001, 'Add New Quotation 23', 'activitylog', '2015-01-11', 'quotation', 1),
(31, 'uploads/templates/male.png', 10001, 'Add New Quotation 23', 'activitylog', '2015-01-11', 'quotation', 1),
(32, 'uploads/templates/male.png', 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-09', 'inventory/list/All', 1),
(33, 'uploads/templates/male.png', 10001, 'Add New User Account roel rivera longcop', 'activitylog', '2017-11-09', 'account/get/0', 1),
(34, 'uploads/templates/male.png', 10002, 'Add New User Account roel rivera longcop', 'activitylog', '2017-11-09', 'account/get/0', 0),
(35, 'uploads/templates/male.png', 10001, 'New project 23', 'project', '2017-11-09', 'quotation', 1),
(36, 'uploads/templates/male.png', 10002, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(37, 'uploads/templates/male.png', 10001, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 1),
(38, 'uploads/templates/male.png', 10002, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(39, 'uploads/templates/male.png', 10001, 'New project 23', 'project', '2017-11-09', 'quotation', 1),
(40, 'uploads/templates/male.png', 10002, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(41, 'uploads/templates/male.png', 10001, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 1),
(42, 'uploads/templates/male.png', 10002, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(43, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(44, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(45, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(46, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(47, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(48, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(49, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(50, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(51, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(52, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(53, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(54, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(55, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 1),
(56, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(57, 'uploads/templates/male.png', 10001, 'Update Comapny History', 'activitylog', '2017-11-10', 'products', 1),
(58, 'uploads/templates/male.png', 10002, 'Update Comapny History', 'activitylog', '2017-11-10', 'products', 0),
(59, 'uploads/templates/male.png', 10001, 'Export 8 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-10', 'inventory/list/All', 1),
(60, 'uploads/templates/male.png', 10002, 'Export 8 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-10', 'inventory/list/All', 0),
(61, 'uploads/templates/male.png', 10001, 'Delete item :  from the inventory', 'activitylog', '2017-11-10', 'quotation', 1),
(62, 'uploads/templates/male.png', 10002, 'Delete item :  from the inventory', 'activitylog', '2017-11-10', 'quotation', 0),
(63, 'uploads/templates/male.png', 10001, 'Add New Quotation 2343232323', 'activitylog', '2017-11-10', 'quotation', 1),
(64, 'uploads/templates/male.png', 10002, 'Add New Quotation 2343232323', 'activitylog', '2017-11-10', 'quotation', 0),
(65, 'uploads/templates/male.png', 10001, 'Add New Quotation nmnmnmnmn', 'activitylog', '2017-11-11', 'quotation', 1),
(66, 'uploads/templates/male.png', 10002, 'Add New Quotation nmnmnmnmn', 'activitylog', '2017-11-11', 'quotation', 0),
(67, 'uploads/templates/male.png', 10001, 'Add New Quotation 23', 'activitylog', '2017-11-11', 'quotation', 1),
(68, 'uploads/templates/male.png', 10002, 'Add New Quotation 23', 'activitylog', '2017-11-11', 'quotation', 0),
(69, 'uploads/templates/male.png', 10001, 'Add New Quotation roel project', 'activitylog', '2017-11-11', 'quotation', 1),
(70, 'uploads/templates/male.png', 10002, 'Add New Quotation roel project', 'activitylog', '2017-11-11', 'quotation', 0),
(71, 'uploads/templates/male.png', 10001, 'Add New Quotation longcop roelito pogi', 'activitylog', '2017-11-11', 'quotation', 1),
(72, 'uploads/templates/male.png', 10002, 'Add New Quotation longcop roelito pogi', 'activitylog', '2017-11-11', 'quotation', 0),
(73, 'uploads/templates/male.png', 10001, 'Add New Quotation sample', 'activitylog', '2017-11-11', 'quotation', 1),
(74, 'uploads/templates/male.png', 10002, 'Add New Quotation sample', 'activitylog', '2017-11-11', 'quotation', 0),
(75, 'uploads/templates/male.png', 10001, 'Add New Quotation gogogogo', 'activitylog', '2017-11-11', 'quotation', 1),
(76, 'uploads/templates/male.png', 10002, 'Add New Quotation gogogogo', 'activitylog', '2017-11-11', 'quotation', 0),
(77, 'uploads/templates/male.png', 10001, 'Add New Quotation nenenenenenen', 'activitylog', '2017-11-11', 'quotation', 1),
(78, 'uploads/templates/male.png', 10002, 'Add New Quotation nenenenenenen', 'activitylog', '2017-11-11', 'quotation', 0),
(79, 'uploads/templates/male.png', 10001, 'Add New Quotation zzzz', 'activitylog', '2017-11-11', 'quotation', 1),
(80, 'uploads/templates/male.png', 10002, 'Add New Quotation zzzz', 'activitylog', '2017-11-11', 'quotation', 0),
(81, 'uploads/templates/male.png', 10001, 'Add New Quotation sumpor ngo', 'activitylog', '2017-11-11', 'quotation', 1),
(82, 'uploads/templates/male.png', 10002, 'Add New Quotation sumpor ngo', 'activitylog', '2017-11-11', 'quotation', 0),
(83, 'uploads/templates/male.png', 10001, 'Add New Quotation btbtbtbtbtb', 'activitylog', '2017-11-11', 'quotation', 1),
(84, 'uploads/templates/male.png', 10002, 'Add New Quotation btbtbtbtbtb', 'activitylog', '2017-11-11', 'quotation', 0),
(85, 'uploads/templates/male.png', 10001, 'Add New Quotation cvcvcvcv', 'activitylog', '2017-11-11', 'quotation', 1),
(86, 'uploads/templates/male.png', 10002, 'Add New Quotation cvcvcvcv', 'activitylog', '2017-11-11', 'quotation', 0),
(87, 'uploads/templates/male.png', 10001, 'New project cvcvcvcv', 'project', '2017-11-11', 'quotation', 1),
(88, 'uploads/templates/male.png', 10002, 'New project cvcvcvcv', 'project', '2017-11-11', 'quotation', 0),
(89, 'uploads/templates/male.png', 10001, 'Add New project cvcvcvcv', 'activitylog', '2017-11-11', 'quotation', 1),
(90, 'uploads/templates/male.png', 10002, 'Add New project cvcvcvcv', 'activitylog', '2017-11-11', 'quotation', 0),
(91, 'uploads/templates/male.png', 10001, 'Project cvcvcvcv has zero profit', 'project', '2017-11-11', 'project/project_view/10004', 1),
(92, 'uploads/templates/male.png', 10002, 'Project cvcvcvcv has zero profit', 'project', '2017-11-11', 'project/project_view/10004', 0),
(93, 'uploads/templates/male.png', 10001, 'Updated Transportation from  to  to project ', 'activitylog', '2017-11-11', 'project/project_view/10004', 1),
(94, 'uploads/templates/male.png', 10002, 'Updated Transportation from  to  to project ', 'activitylog', '2017-11-11', 'project/project_view/10004', 0),
(95, 'uploads/templates/male.png', 10001, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-11', 'inventory/list/All', 1),
(96, 'uploads/templates/male.png', 10002, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-11', 'inventory/list/All', 0),
(97, 'uploads/templates/male.png', 10001, 'Add new item 12', 'inventory', '2017-11-11', 'inventory', 1),
(98, 'uploads/templates/male.png', 10002, 'Add new item 12', 'inventory', '2017-11-11', 'inventory', 0),
(99, 'uploads/accounts/DSC00024.JPG', 10001, 'Project 23 has zero profit', 'project', '2017-11-11', 'project/project_view/10003', 1),
(100, 'uploads/accounts/DSC00024.JPG', 10002, 'Project 23 has zero profit', 'project', '2017-11-11', 'project/project_view/10003', 0),
(101, 'uploads/accounts/DSC00024.JPG', 10001, 'Updated Transportation from  to  to project ', 'activitylog', '2017-11-11', 'project/project_view/10003', 1),
(102, 'uploads/accounts/DSC00024.JPG', 10002, 'Updated Transportation from  to  to project ', 'activitylog', '2017-11-11', 'project/project_view/10003', 0),
(103, 'uploads/accounts/DSC00024.JPG', 10001, 'Add New User Account angel', 'activitylog', '2017-11-11', 'account/get/0', 1),
(104, 'uploads/accounts/DSC00024.JPG', 10002, 'Add New User Account angel', 'activitylog', '2017-11-11', 'account/get/0', 0),
(105, 'uploads/accounts/DSC00024.JPG', 10003, 'Add New User Account angel', 'activitylog', '2017-11-11', 'account/get/0', 0),
(106, 'uploads/accounts/DSC00024.JPG', 10001, 'Project sample Project has zero profit', 'project', '2017-11-11', 'project/project_view/10001', 1),
(107, 'uploads/accounts/DSC00024.JPG', 10002, 'Project sample Project has zero profit', 'project', '2017-11-11', 'project/project_view/10001', 0),
(108, 'uploads/accounts/DSC00024.JPG', 10003, 'Project sample Project has zero profit', 'project', '2017-11-11', 'project/project_view/10001', 0),
(109, 'uploads/accounts/DSC00024.JPG', 10001, 'Add New Quotation 12', 'activitylog', '2017-11-11', 'quotation', 1),
(110, 'uploads/accounts/DSC00024.JPG', 10002, 'Add New Quotation 12', 'activitylog', '2017-11-11', 'quotation', 0),
(111, 'uploads/accounts/DSC00024.JPG', 10003, 'Add New Quotation 12', 'activitylog', '2017-11-11', 'quotation', 0),
(112, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(113, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(114, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(115, 'uploads/accounts/DSC00045.JPG', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(116, 'uploads/accounts/DSC00045.JPG', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(117, 'uploads/accounts/DSC00045.JPG', 10003, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 1),
(118, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(119, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(120, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(121, 'uploads/accounts/DSC00045.JPG', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(122, 'uploads/accounts/DSC00045.JPG', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(123, 'uploads/accounts/DSC00045.JPG', 10003, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 1),
(124, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(125, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(126, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(127, 'uploads/accounts/DSC00045.JPG', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(128, 'uploads/accounts/DSC00045.JPG', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(129, 'uploads/accounts/DSC00045.JPG', 10003, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 1),
(130, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 2 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(131, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 2 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(132, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 2 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(133, 'uploads/accounts/DSC00045.JPG', 10001, 'Add new item 12', 'inventory', '2017-11-12', 'inventory', 0),
(134, 'uploads/accounts/DSC00045.JPG', 10002, 'Add new item 12', 'inventory', '2017-11-12', 'inventory', 0),
(135, 'uploads/accounts/DSC00045.JPG', 10003, 'Add new item 12', 'inventory', '2017-11-12', 'inventory', 1),
(136, 'uploads/accounts/DSC00045.JPG', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(137, 'uploads/accounts/DSC00045.JPG', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(138, 'uploads/accounts/DSC00045.JPG', 10003, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(139, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(140, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(141, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 12 Meter of item namefrom inventory to project: cvcvcvcv', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(142, 'uploads/accounts/DSC00045.JPG', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(143, 'uploads/accounts/DSC00045.JPG', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(144, 'uploads/accounts/DSC00045.JPG', 10003, 'Item: item name meets the critical stock', 'inventory', '2017-11-12', 'inventory', 0),
(145, 'uploads/accounts/DSC00045.JPG', 10001, 'Export 12 Meter of item namefrom inventory to project: 23', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(146, 'uploads/accounts/DSC00045.JPG', 10002, 'Export 12 Meter of item namefrom inventory to project: 23', 'activitylog', '2017-11-12', 'inventory/list/All', 0),
(147, 'uploads/accounts/DSC00045.JPG', 10003, 'Export 12 Meter of item namefrom inventory to project: 23', 'activitylog', '2017-11-12', 'inventory/list/All', 0);

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
(10001, 'Roel', 'Rivera', 'Longcop', 'roel@gmail.com', 'Manager', 'Fabrication', 0, 'uploads/templates/male.png'),
(10002, '23', '2', '23232', '2', 'Manager', 'Designing', 0, 'uploads/personnels/B612_20170204_094717_-_Copy.jpg');

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
(10001, 10001, 'uploads/products/stand.PNG'),
(10002, 10002, 'uploads/products/Capturefdfdf.PNG'),
(10003, 10003, 'uploads/products/fdfdfdf.PNG'),
(10004, 10004, 'uploads/products/ss.PNG'),
(10007, 10006, 'uploads/products/multi.PNG'),
(10008, 10005, 'uploads/products/Capturefdfdf.PNG');

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
(10006, 'Multi Purpose', 'Kitchen type stainless works', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `profile_id` int(10) NOT NULL,
  `legend` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`profile_id`, `legend`, `description`) VALUES
(10001, 'Company_name', '<p>Maron Builders Company</p>\r\n'),
(10002, 'Company_address', 'Blk 8 Lot 15 Silmer Village, Biñan, Laguna'),
(10003, 'Company_email', 'maron_builder@yahoo.com / maron_ent@yahoo.com'),
(10004, 'Telephone_no', '6368619/8025961'),
(10005, 'Tell_fax_no', '<h5>6368619</h5>\r\n'),
(10006, 'Mobile_no', '09988673570/09272168024'),
(10007, 'Mission', 'MARON BUILDERS CO. mission is to develop and set new\r\nstate-of the art trend & technologies in Construction Industry by\r\nusing comprehensive research that will minimized construction\r\ncost for mutual benefit of its clientele and the company.\r\n'),
(10008, 'Vission', 'The people behind the management of Maron Builders Co.\r\npossess the competence and expertise in undertaking and managing\r\na construction business with long professional experience\r\nin various aspects of constructions and engineering work which\r\nis the key to the firms successful endeavor.'),
(10009, 'History', '<p><span style="font-size:24px"><span style="font-family:Comic Sans MS,cursive">Each project is undertaken by an ad-hoc team which is led by Project Engineer. For a complex project involving a sensitive client &ndash; firm relationship, a Project Manager supervises the Project Engineer and his technical staff. When a project requires several alternatives, the most feasible one is chosen without compromising quality output. The Company team member understands the importance of cooperation and coordination. The availability of varied expertise within the organization has been proven to be beneficial in the successful execution of projects. To maintain and improve the firms quality of work and to keep abreast to the new development in construction and state &ndash; of-the art technologies thereof, members of the technical staff are constantly trained in the trends in their respective fields. They are active members of professional association, attend conferences related to their respective fields and pursue opportunities for continuing education.</span></span></p>\r\n');

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
(10001, 10001, 10001, 220000, -120000, 'Ongoing', 'uploads/projects/DSC000271.JPG', 10002, 0),
(10002, 10002, 10004, 0, 69, 'Finished', 'uploads/projects/DSC00027.JPG', 10002, 0),
(10003, 10003, 10004, 61728, -60000, 'Pending', 'uploads/projects/DSC000251.JPG', 10002, 0),
(10004, 10015, 10003, 191728, -190000, 'Pending', 'uploads/projects/DSC00002.JPG', 10001, 0);

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
(10002, 10004, '2015-01-11', 23, 22, '23', '23', '23', 23, 23, 23, '23', 69, '23', '01/12/2015', '01/12/2015', 'Approved', 0),
(10003, 10004, '2015-01-11', 23, 23, '23', '23', '23', 23, 23, 23, '23', 69, '23', '01/12/2015', '01/12/2015', 'Approved', 0),
(10004, 10004, '2017-11-10', 23, 23, '2343232323', '23', '23', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>another</td><td>23.00</td><td>Pieces</td><td>23.00</td><td>2.00</td><td>25.00</td><td>25.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#37''><i class=''fa fa-trash''></i></a></td></tr><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>23.00</td><td></td><td>2.00</td><td>2.00</td><td>4.00</td><td>4.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#38''><i class=''fa fa-trash''></i></a></td></tr><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>the supply</td><td>1.00</td><td>Pieces</td><td>1.00</td><td>1.00</td><td>2.00</td><td>2.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#36''><i class=''fa fa-trash''></i></a></td></tr><div id=''36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''38'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(38)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td colspan=''7''>Grand Total</td><td>31</td></tr></tbody></table>', 69, '23', '23', '', 'Pending', 0);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10005, 10003, '2017-11-11', 23, 23, 'nmnmnmnmn', '23', '23', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill42''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill42''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>another</td><td>23.00</td><td>Pieces</td><td>23.00</td><td>2.00</td><td>25.00</td><td>25.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill37''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill37''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill40''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill40''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>3</td><td>2323232</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill41''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill41''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>the supply</td><td>1.00</td><td>Pieces</td><td>1.00</td><td>1.00</td><td>2.00</td><td>2.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill36''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill36''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill36'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title36''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description36''  style=''height: 100px''>the supply</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty36''   value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit36''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''mat36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(36)'' type=''number'' id=''labor36'' class=''form-control'' value=''1.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total36'' class=''form-control'' value=''2.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id36''  class=''form-control'' value=''36'' readonly><a onclick=''edit_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill36'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete the supply</h6></div><div class=''modal-footer''><a onclick=''delete_bill(36)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill37'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title37''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description37''  style=''height: 100px''>another</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty37''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit37''   style=''width: 100%''><option>Pieces</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''mat37'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(37)'' type=''number'' id=''labor37'' class=''form-control'' value=''2.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total37'' class=''form-control'' value=''25.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id37''  class=''form-control'' value=''37'' readonly><a onclick=''edit_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill37'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete another</h6></div><div class=''modal-footer''><a onclick=''delete_bill(37)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill40'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title40''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description40''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty40''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit40''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''mat40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(40)'' type=''number'' id=''labor40'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total40'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id40''  class=''form-control'' value=''40'' readonly><a onclick=''edit_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill40'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(40)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill41'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title41''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description41''  style=''height: 100px''>2323232</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty41''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit41''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''mat41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(41)'' type=''number'' id=''labor41'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total41'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id41''  class=''form-control'' value=''41'' readonly><a onclick=''edit_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill41'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 2323232</h6></div><div class=''modal-footer''><a onclick=''delete_bill(41)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill42'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title42''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description42''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty42''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit42''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''mat42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(42)'' type=''number'' id=''labor42'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total42'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id42''  class=''form-control'' value=''42'' readonly><a onclick=''edit_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill42'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(42)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td colspan=''7''>Grand Total</td><td>165</td></tr></tbody></table>', 69, '23', '11/22/2017', '11/23/2017', 'Pending', 0);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10006, 10003, '2017-11-11', 23, 23, '23', '23', '223', 23, 23, 23, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th><th>TOTAL</th></tr></thead>  <tbody><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill6'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title6''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description6''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty6''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit6''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''mat6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''labor6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total6'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id6''  class=''form-control'' value=''6'' readonly><a onclick=''edit_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill6'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill7'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title7''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description7''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty7''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit7''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''mat7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''labor7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total7'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id7''  class=''form-control'' value=''7'' readonly><a onclick=''edit_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill7'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>323rrr</td><td>323.00</td><td>Liter</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill8''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill8''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill8'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title8''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description8''  style=''height: 100px''>323rrr</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty8''   value=''323.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit8''   style=''width: 100%''><option>Liter</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''mat8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''labor8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total8'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id8''  class=''form-control'' value=''8'' readonly><a onclick=''edit_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill8'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 323rrr</h6></div><div class=''modal-footer''><a onclick=''delete_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill9''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill9''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill9'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title9''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description9''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty9''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit9''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''mat9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''labor9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total9'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id9''  class=''form-control'' value=''9'' readonly><a onclick=''edit_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill9'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>3</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill10''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill10''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill10'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title10''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description10''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty10''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit10''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''mat10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''labor10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total10'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id10''  class=''form-control'' value=''10'' readonly><a onclick=''edit_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill10'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>32.00</td><td></td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill4''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill4''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill6'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title6''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description6''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty6''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit6''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''mat6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(6)'' type=''number'' id=''labor6'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total6'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id6''  class=''form-control'' value=''6'' readonly><a onclick=''edit_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill6'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(6)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td>2</td><td>23</td><td>23.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill7''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill7''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill7'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title7''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description7''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty7''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit7''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''mat7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(7)'' type=''number'' id=''labor7'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total7'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id7''  class=''form-control'' value=''7'' readonly><a onclick=''edit_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill7'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(7)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill8'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title8''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description8''  style=''height: 100px''>323rrr</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty8''   value=''323.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit8''   style=''width: 100%''><option>Liter</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''mat8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(8)'' type=''number'' id=''labor8'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total8'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id8''  class=''form-control'' value=''8'' readonly><a onclick=''edit_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill8'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 323rrr</h6></div><div class=''modal-footer''><a onclick=''delete_bill(8)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill9'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title9''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description9''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty9''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit9''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''mat9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(9)'' type=''number'' id=''labor9'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total9'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id9''  class=''form-control'' value=''9'' readonly><a onclick=''edit_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill9'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(9)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill10'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Preliminary'' class=''form-control select2'' id=''title10''><option>Preliminary</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description10''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty10''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit10''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''mat10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(10)'' type=''number'' id=''labor10'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total10'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id10''  class=''form-control'' value=''10'' readonly><a onclick=''edit_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill10'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(10)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill1'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title1''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description1''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty1''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit1''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''mat1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(1)'' type=''number'' id=''labor1'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total1'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id1''  class=''form-control'' value=''1'' readonly><a onclick=''edit_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill1'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(1)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><tr><td><b>III</b></td><td><b>Supply And Instalation</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td><td><a class=''btn btn-danger'' data-toggle=''modal'' data-target=''#del_bill2''><i class=''fa fa-trash''></i></a><a class=''btn btn-warning'' data-toggle=''modal'' data-target=''#edit_bill2''><i class=''fa fa-pencil''></i></a></td></tr><div id=''edit_bill2'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Supply And Installation'' class=''form-control select2'' id=''title2''><option>Supply And Installation</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description2''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty2''   value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit2''   style=''width: 100%''><option>Lot</option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''mat2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(2)'' type=''number'' id=''labor2'' class=''form-control'' value=''23.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total2'' class=''form-control'' value=''46.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id2''  class=''form-control'' value=''2'' readonly><a onclick=''edit_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill2'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 23</h6></div><div class=''modal-footer''><a onclick=''delete_bill(2)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill3'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value='''' class=''form-control select2'' id=''title3''><option></option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description3''  style=''height: 100px''>32</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty3''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit3''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''mat3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(3)'' type=''number'' id=''labor3'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total3'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id3''  class=''form-control'' value=''3'' readonly><a onclick=''edit_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill3'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''><div class=''modal-content''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-trash''></i>Delete Bill Entry</h4></div><div class=''modal-body''><h6>Are you sure you want delete 32</h6></div><div class=''modal-footer''><a onclick=''delete_bill(3)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div><div id=''edit_bill4'' class=''modal fade'' role=''dialog'' ><div class=''modal-dialog modal-lg''><div class=''modal-content''  style=''height: 600px;''><div class=''modal-header'' style=''background-color:#3c8dbc;color:white;''; ><button type=''button'' class=''close'' data-dismiss=''modal''>&times;</button><h4><i class=''fa fa-pencil''></i>Update Bill Entry</h4></div><div class=''modal-body''><div class=''col-md-12''><br></div><div class=''col-md-4''>Description Title</div><div class=''col-md-8''><select style=''width: 100%'' value=''Materials'' class=''form-control select2'' id=''title4''><option>Materials</option><option>Preliminary</option><option>Materials</option><option>Supply And Installation</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Description</div><div class=''col-md-8''><textarea class=''form-control'' id=''description4''  style=''height: 100px''>23</textarea></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Quantity</div><div class=''col-md-8''><input type=''number'' class=''form-control'' id=''qty4''   value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Unit</div><div class=''col-md-8''><select class=''select2 form-control'' id=''unit4''   style=''width: 100%''><option></option><option>Lot</option><option>Sets</option><option>Pieces</option><option>Box</option><option>Meter</option><option>Liter</option><option>kilogram</option><option>Pack</option><option>Dozen</option><option>Bundle</option></select></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Materials(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''mat4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Labor(Php)</div><div class=''col-md-8''><input oninput=''total_bill_edited(4)'' type=''number'' id=''labor4'' class=''form-control'' value=''32.00''></div><div class=''col-md-12''><br></div><div class=''col-md-4''>Grand Total</div><div class=''col-md-8''><input type=''number''  id=''g_total4'' class=''form-control'' value=''64.00'' readonly></div><div class=''col-md-12''><br></div><div class=''col-md-12''><input type=''hidden'' id=''bill_id4''  class=''form-control'' value=''4'' readonly><a onclick=''edit_bill(4)'' class=''btn btn-primary btn-block btn-sm'' data-dismiss=''modal''><i class=''fa fa-check''></i> Yes</a></div></div></div></div></div><div id=''del_bill4'' class=''modal fade'' role=''dialog''><div class=''modal-dialog modal-sm''', 69, '23', '11/08/2017', '11/20/2017', 'Pending', 0);
INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10007, 10004, '2017-11-11', 12, 12, 'roel project', 'san jpose', '12', 12, 12, 12, '<table class=''table table-bordered''><thead><tr><th rowspan=''2''>ITEM NO</th><th rowspan=''2''>DESCRIPTION</th><th rowspan=''2''>QTY</th><th rowspan=''2''>UNIT</th><th colspan=''3'' style=''text-align: center;''''>UNIT COST</th><th rowspan=''2''>TOTAL COST</th><th rowspan=''2''>ACTION</th></tr><tr><th>MATERIALS</th><th>LABOR</th></tr></thead>  <tbody><tr><td><b>I</b></td><td><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>32.00</td><td>Lot</td><td>32.00</td><td>23.00</td><td>55.00</td><td>55.00</td></tr><tr><td><b>II</b></td><td><b>Materials</td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''>Grand Total</td><td>101</td></tr></tbody></table>', 36, '12', '11/24/2017', '12/06/2017', 'Pending', 0),
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
(10005, 10002, 'uploads/services/Capture22.PNG'),
(10008, 10003, 'uploads/services/board.png'),
(10009, 10004, 'uploads/services/interior.PNG'),
(10010, 10001, 'uploads/services/ccc.png');

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
(10002, 'Fabrication Service', 'Stainless OR steel Fabrication such as gates , push carts, barriers and other metal works', 0),
(10003, 'Fabrication And Intallation', 'Barrier Installation Service', 0),
(10004, 'Interioir Designing', 'MAHIYA Residence Binan Laguna, Interior Design Layout', 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_images`
--

CREATE TABLE `tbl_temp_images` (
  `t_id` int(11) NOT NULL,
  `image_type_id` int(10) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `accomplishment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  MODIFY `accomplishment_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  MODIFY `personnel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `product_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;
--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;
--
-- AUTO_INCREMENT for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  MODIFY `service_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_temp_bill`
--
ALTER TABLE `tbl_temp_bill`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_temp_images`
--
ALTER TABLE `tbl_temp_images`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Constraints for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  ADD CONSTRAINT `tbl_workerexpenses_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tbl_project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
