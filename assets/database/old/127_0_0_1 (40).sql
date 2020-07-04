-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2017 at 02:02 AM
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
(10001, 10001, 10001, 'This is my First Accomplishment Report', '2017-10-18');

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
(10001, 10001, 'uploads/templates/accomplishment_sample/jpg');

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
(10001, 'admin', 'admin', 'Admin123', 'admin#gmail.com', 'Male', 'Carmona', 'Administrator', 'uploads/templates/male.png', 0),
(10002, 'roel', 'roel', 'roel rivera longcop', 'roellongcop11@gmail.com', 'Male', 'san jose', 'Administrator', 'uploads/accounts/maxresdefault.jpg', 0);

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
(11, 10001, 'Add Products Food Lacker', '2017-10-23', '09:26:15pm', 0),
(12, 10001, 'Add Products ', '2017-10-23', '09:27:34pm', 0),
(13, 10001, 'Add Products Multi Purpose', '2017-10-23', '09:34:50pm', 0),
(14, 10001, 'Add New Client roel', '2017-12-16', '01:11:00am', 0),
(15, 10001, 'Add New Client 23', '2017-12-16', '01:12:13am', 1),
(16, 10001, 'Add Personnel 23232', '2015-01-11', '05:50:24am', 0),
(17, 10001, 'Add Products ', '2015-01-11', '05:59:45am', 0),
(18, 10001, 'Add New Client annabelle', '2015-01-11', '10:06:16pm', 0),
(19, 10001, 'Add New Quotation 23', '2015-01-11', '11:25:36pm', 0),
(20, 10001, 'Add New Quotation 23', '2015-01-11', '11:40:35pm', 0),
(21, 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', '2017-11-09', '08:34:39am', 0),
(22, 10001, 'Add New UserAccount roel rivera longcop', '2017-11-09', '09:07:32am', 0),
(23, 10001, 'Update User Account roel rivera longcop', '2017-11-09', '09:18:40am', 0),
(24, 10001, 'Add New Project 23', '2017-11-09', '11:05:50am', 0),
(25, 10001, 'Add New Project 23', '2017-11-09', '11:07:18am', 0),
(26, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:52:41pm', 0),
(27, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:53:14pm', 0),
(28, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:54:05pm', 0),
(29, 10001, 'Tell_fax_no was Update ', '2017-11-10', '06:57:11pm', 0),
(30, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:04:28pm', 0),
(31, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:08:14pm', 0),
(32, 10001, 'Tell_fax_no was Update ', '2017-11-10', '07:09:06pm', 0),
(33, 10001, 'History was Update ', '2017-11-10', '07:10:03pm', 0),
(34, 10001, 'Export 8 Meter of item namefrom inventory to project: sample Project', '2017-11-10', '07:16:05pm', 0),
(35, 10001, 'Delete item :  from the inventory', '2017-11-10', '09:06:06pm', 0),
(36, 10001, 'Add New Quotation 2343232323', '2017-11-10', '11:45:43pm', 0),
(37, 10001, 'Add New Quotation nmnmnmnmn', '2017-11-11', '01:49:28am', 0);

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
(10003, 'roel', 'engineer', 1, '09078267471', 'roel@gmail.com', 'san jose', 0, 1, '23', '23', 'client', 0),
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
(10001, 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 80, 500, 50, 'Normal', 0);

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
(2, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 8, 40000, 'Inventory', '2017-11-10', 0);

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
(3, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 0),
(4, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(5, 'uploads/templates/male.png', 10001, 'Added New Services ', 'activitylog', '2017-10-23', 'services', 1),
(6, 'uploads/templates/male.png', 10001, 'Added New Services ', 'activitylog', '2017-10-23', 'services', 1),
(7, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 0),
(8, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(9, 'uploads/templates/male.png', 10001, 'New Services', 'profile', '2017-10-23', 'services', 0),
(10, 'uploads/templates/male.png', 10001, 'Added New Services', 'activitylog', '2017-10-23', 'services', 1),
(11, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 0),
(12, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(13, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 0),
(14, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(15, 'uploads/templates/male.png', 10001, 'New Products', 'profile', '2017-10-23', 'products', 0),
(16, 'uploads/templates/male.png', 10001, 'Added New Products', 'activitylog', '2017-10-23', 'products', 1),
(17, 'uploads/templates/male.png', 10001, 'New ProductsFood Lacker', 'profile', '2017-10-23', 'products', 0),
(18, 'uploads/templates/male.png', 10001, 'Added New ProductsFood Lacker', 'activitylog', '2017-10-23', 'products', 1),
(19, 'uploads/templates/male.png', 10001, 'Added New Products ', 'activitylog', '2017-10-23', 'products', 1),
(20, 'uploads/templates/male.png', 10001, 'New ProductsMulti Purpose', 'profile', '2017-10-23', 'products', 0),
(21, 'uploads/templates/male.png', 10001, 'Added New ProductsMulti Purpose', 'activitylog', '2017-10-23', 'products', 1),
(22, 'uploads/templates/male.png', 10001, 'New Client roel', 'client', '2017-12-16', 'client/list/All', 0),
(23, 'uploads/templates/male.png', 10001, 'Added New Client roel', 'activitylog', '2017-12-16', 'client/list/All', 1),
(24, 'uploads/templates/male.png', 10001, 'New Client 23', 'client', '2017-12-16', 'client/list/All', 0),
(25, 'uploads/templates/male.png', 10001, 'Added New Client 23', 'activitylog', '2017-12-16', 'client/list/All', 1),
(26, 'uploads/templates/male.png', 10001, 'Add Personnel 23232', 'activitylog', '2015-01-11', 'personnels', 0),
(27, 'uploads/templates/male.png', 10001, 'Added New Products ', 'activitylog', '2015-01-11', 'products', 0),
(28, 'uploads/templates/male.png', 10001, 'New Client annabelle', 'client', '2015-01-11', 'client/list/All', 0),
(29, 'uploads/templates/male.png', 10001, 'Added New Client annabelle', 'activitylog', '2015-01-11', 'client/list/All', 0),
(30, 'uploads/templates/male.png', 10001, 'Add New Quotation 23', 'activitylog', '2015-01-11', 'quotation', 0),
(31, 'uploads/templates/male.png', 10001, 'Add New Quotation 23', 'activitylog', '2015-01-11', 'quotation', 0),
(32, 'uploads/templates/male.png', 10001, 'Export 12 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-09', 'inventory/list/All', 0),
(33, 'uploads/templates/male.png', 10001, 'Add New User Account roel rivera longcop', 'activitylog', '2017-11-09', 'account/get/0', 0),
(34, 'uploads/templates/male.png', 10002, 'Add New User Account roel rivera longcop', 'activitylog', '2017-11-09', 'account/get/0', 0),
(35, 'uploads/templates/male.png', 10001, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(36, 'uploads/templates/male.png', 10002, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(37, 'uploads/templates/male.png', 10001, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(38, 'uploads/templates/male.png', 10002, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(39, 'uploads/templates/male.png', 10001, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(40, 'uploads/templates/male.png', 10002, 'New project 23', 'project', '2017-11-09', 'quotation', 0),
(41, 'uploads/templates/male.png', 10001, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(42, 'uploads/templates/male.png', 10002, 'Add New project 23', 'activitylog', '2017-11-09', 'quotation', 0),
(43, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(44, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(45, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(46, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(47, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(48, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(49, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(50, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(51, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(52, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(53, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(54, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(55, 'uploads/templates/male.png', 10001, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(56, 'uploads/templates/male.png', 10002, 'Update Comapny Tell_fax_no', 'activitylog', '2017-11-10', 'products', 0),
(57, 'uploads/templates/male.png', 10001, 'Update Comapny History', 'activitylog', '2017-11-10', 'products', 0),
(58, 'uploads/templates/male.png', 10002, 'Update Comapny History', 'activitylog', '2017-11-10', 'products', 0),
(59, 'uploads/templates/male.png', 10001, 'Export 8 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-10', 'inventory/list/All', 0),
(60, 'uploads/templates/male.png', 10002, 'Export 8 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-11-10', 'inventory/list/All', 0),
(61, 'uploads/templates/male.png', 10001, 'Delete item :  from the inventory', 'activitylog', '2017-11-10', 'quotation', 0),
(62, 'uploads/templates/male.png', 10002, 'Delete item :  from the inventory', 'activitylog', '2017-11-10', 'quotation', 0),
(63, 'uploads/templates/male.png', 10001, 'Add New Quotation 2343232323', 'activitylog', '2017-11-10', 'quotation', 0),
(64, 'uploads/templates/male.png', 10002, 'Add New Quotation 2343232323', 'activitylog', '2017-11-10', 'quotation', 0),
(65, 'uploads/templates/male.png', 10001, 'Add New Quotation nmnmnmnmn', 'activitylog', '2017-11-11', 'quotation', 0),
(66, 'uploads/templates/male.png', 10002, 'Add New Quotation nmnmnmnmn', 'activitylog', '2017-11-11', 'quotation', 0);

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
(10001, 10001, 10001, 100023, -70023, 'Ongoing', 'uploads/projects/Capture.PNG', 10001, 0),
(10002, 10002, 10004, 0, 69, 'Finished', 'uploads/templates/project.png', 10001, 0),
(10003, 10003, 10004, 0, 69, 'Pending', 'uploads/templates/project.png', 10001, 0);

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

--
-- Dumping data for table `tbl_temp_bill`
--

INSERT INTO `tbl_temp_bill` (`bill_id`, `title`, `description`, `quantity`, `unit`, `materials`, `labor`, `total`) VALUES
(1, '', '23', 23.00, 'Lot', 23.00, 23.00, 46.00),
(2, 'Supply And Installation', '23', 23.00, 'Lot', 23.00, 23.00, 46.00),
(3, '', '32', 32.00, '', 32.00, 32.00, 64.00),
(4, 'Materials', '23', 32.00, '', 32.00, 32.00, 64.00),
(6, 'Supply And Installation', '23', 23.00, '', 23.00, 23.00, 46.00),
(7, 'Materials', '23', 23.00, '', 23.00, 23.00, 46.00);

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
(1, 10007, 'uploads/products/DSC00054.JPG'),
(2, 10007, 'uploads/products/DSC00055.JPG'),
(3, 10007, 'uploads/products/DSC00048.JPG'),
(4, 10007, 'uploads/products/DSC00049.JPG');

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
(1, 10001, 'Admin123', '23', '34', 23, '23', '2015-01-07', 0);

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
  MODIFY `accomplishment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  MODIFY `accomplishment_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10006;
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
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_temp_images`
--
ALTER TABLE `tbl_temp_images`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
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
