-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 03:14 AM
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
(10001, 10001, 10001, 'first Accomplishment', '2017-11-30'),
(10002, 10001, 10001, '<p>Accomplishment for the day!</p>', '2017-12-02'),
(10003, 10001, 10001, '<p>Parrallax</p>', '2017-12-02'),
(10004, 10002, 10001, '<p><i>The Lake</i></p>', '2017-12-02'),
(10005, 10004, 10001, '<p>121212</p>', '2017-12-12'),
(10006, 10004, 10001, '<p>holiday</p>', '2017-12-12');

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
(10001, 10001, 'uploads/accomplishments/construction.png'),
(10002, 10002, 'uploads/accomplishments/background1.jpg'),
(10003, 10002, 'uploads/accomplishments/background2.jpg'),
(10004, 10002, 'uploads/accomplishments/background3.jpg'),
(10005, 10003, 'uploads/accomplishments/nE6neNVdRPSIasnmePZe_IMG_1950b51f.jpg'),
(10006, 10003, 'uploads/accomplishments/office.jpg'),
(10007, 10003, 'uploads/accomplishments/parallax1.jpg'),
(10008, 10003, 'uploads/accomplishments/parallax2.jpg'),
(10009, 10004, 'uploads/accomplishments/parallax-template.jpg'),
(10010, 10004, 'uploads/accomplishments/sample-1.jpg'),
(10011, 10005, 'uploads/accomplishments/vlcsnap-7016-07-17-17h26m00s197.png'),
(10012, 10006, 'uploads/accomplishments/IMG_20170103_174816.jpg');

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
(10001, 'admin', 'admin', 'Admin123', 'admin#gmail.com', 'Male', 'Carmona', 'Administrator', 'uploads/accounts/roel.jpg', 0),
(10002, 'roel', 'roel', 'roel rivera longcop', 'roellongcop11@gmail.com', 'Male', 'san jose', 'Administrator', 'uploads/accounts/abel.jpg', 0);

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
(1, 10001, 'Add Services Fabrication', '2017-12-02', '04:17:05am', 0),
(2, 10001, 'Add Services Construction', '2017-12-02', '04:19:32am', 0),
(3, 10001, 'Add Services Interior Designing', '2017-12-02', '04:21:05am', 0),
(4, 10001, 'Add Services Carpentry', '2017-12-02', '04:43:27am', 0),
(5, 10001, 'Add Services Plumbing', '2017-12-02', '04:44:20am', 0),
(6, 10001, 'Add Products Push carts', '2017-12-02', '05:07:49am', 0),
(7, 10001, 'Add Products Push carts', '2017-12-02', '05:09:18am', 0),
(8, 10001, 'Add Products Push Carts', '2017-12-02', '05:10:16am', 0),
(9, 10001, 'Add Products Sofa Holder', '2017-12-02', '05:35:03am', 0),
(10, 10001, 'Add Products Multi Purpose Kitchen helper', '2017-12-02', '05:43:37am', 0),
(11, 10001, 'Export 1 Meter of item namefrom inventory to project: sample Project', '2017-12-02', '07:06:12am', 0),
(12, 10001, 'Updated Transportation from  to  to project ', '2017-12-02', '07:57:15am', 0),
(13, 10001, 'Add New Quotation Dream House', '2017-12-02', '10:40:35am', 0),
(14, 10001, 'Add New Project Dream House', '2017-12-02', '10:40:44am', 0),
(15, 10001, 'Add New Quotation My Resort', '2017-12-02', '07:07:19pm', 0),
(16, 10001, 'Add New Project My Resort', '2017-12-02', '07:07:25pm', 0),
(17, 10001, 'Add Products ', '2017-12-05', '05:04:13pm', 0),
(18, 10001, 'Add Products ', '2017-12-05', '05:04:53pm', 0),
(19, 10001, 'Add Products ', '2017-12-05', '05:06:51pm', 0),
(20, 10001, 'Add Products ', '2017-12-05', '05:11:16pm', 0),
(21, 10001, 'Add Products ', '2017-12-05', '05:16:03pm', 0),
(22, 10001, 'Add Products ', '2017-12-05', '05:22:29pm', 0),
(23, 10001, 'Add Products ', '2017-12-05', '05:25:00pm', 0),
(24, 10001, 'Add Services Other Services', '2017-12-05', '05:52:14pm', 0),
(25, 10001, 'Added The List of Clients', '2017-12-05', '06:23:47pm', 0),
(26, 10001, 'Updated The List of Clients', '2017-12-05', '06:29:39pm', 0),
(27, 10001, 'Updated The History', '2017-12-05', '06:40:24pm', 0),
(28, 10001, 'Updated The Mission', '2017-12-05', '06:48:56pm', 0),
(29, 10001, 'Updated The Vission', '2017-12-05', '06:49:17pm', 0),
(30, 10001, 'Updated The List of Clients', '2017-12-05', '06:57:48pm', 0),
(31, 10001, 'Added The Construction Line', '2017-12-05', '07:03:57pm', 0),
(32, 10001, 'Updated The Construction Line', '2017-12-05', '07:10:02pm', 0),
(33, 10001, 'Updated The Construction Line', '2017-12-05', '07:11:45pm', 0),
(34, 10001, 'Updated The History', '2017-12-05', '07:22:57pm', 0),
(35, 10001, 'Updated The History', '2017-12-05', '07:23:40pm', 0),
(36, 10001, 'Updated The History', '2017-12-05', '07:24:21pm', 0),
(37, 10001, 'Updated The History', '2017-12-05', '07:24:47pm', 0),
(38, 10001, 'Add New Quotation qwe', '2017-12-12', '02:39:32am', 0),
(39, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '02:40:43am', 0),
(40, 10001, 'Add New Quotation 23', '2017-12-12', '02:41:53am', 0),
(41, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '02:44:15am', 0),
(42, 10001, 'Add New Quotation 23', '2017-12-12', '02:54:48am', 0),
(43, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '02:55:46am', 0),
(44, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '03:10:33am', 0),
(45, 10001, 'Add New Quotation qwe', '2017-12-12', '03:28:45am', 0),
(46, 10001, 'Add New Quotation The Dream of Hope', '2017-12-12', '04:25:34am', 0),
(47, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:26:12am', 0),
(48, 10001, 'Add New Quotation The Dream of Hope', '2017-12-12', '04:27:40am', 0),
(49, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:28:27am', 0),
(50, 10001, 'Add New Quotation The Dream of Hope', '2017-12-12', '04:30:32am', 0),
(51, 10001, 'Add New Quotation The Dream of Hope', '2017-12-12', '04:31:27am', 0),
(52, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:32:31am', 0),
(53, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:35:02am', 0),
(54, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:38:47am', 0),
(55, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:40:31am', 0),
(56, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '04:43:15am', 0),
(57, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:04:07am', 0),
(58, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:16:57am', 0),
(59, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:18:39am', 0),
(60, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:20:49am', 0),
(61, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:24:31am', 0),
(62, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:25:36am', 0),
(63, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:26:47am', 0),
(64, 10001, 'Add New Quotation The Tallest House in the world', '2017-12-12', '05:28:36am', 0),
(65, 10001, 'Add New Quotation 23', '2017-12-12', '12:47:20pm', 0),
(66, 10001, 'Added 12 Pieces of 12 to project ', '2017-12-12', '01:00:48pm', 0),
(67, 10001, 'Add New Quotation Bambam baho', '2017-12-12', '10:45:07pm', 0);

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
(4, 'Transportation');

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
(10001, 'Roel R. Longcop', 'Engineer', '09078267471', 'roel@gmail.com', 'san jose GMA, cavite', 0, 1, 'longcop', 'longcop', 'client'),
(10002, 'Annabelle Gernale', 'Secretary', '0908232322', 'abelgernale17@gmail.com', 'Pulido GMA Cavite', 0, 1, 'anna', 'anna', 'a70f9e38ff'),
(10009, 'Lyndon Supan', 'Teacher', '09078249533', 'supan@gmail.com', 'Binan, Laguna', 0, 0, 'supan', 'supan', '9ccac50327'),
(10030, 'dsad', 'asd', 'asd', 'asd@gmail.com', 'asd', 0, 1, 'asd', 'zxc', '5fa72358f0'),
(10031, 'dsad', 'asd', 'asd', 'asd@gmail.com', 'asd', 0, 0, 'asd', 'zxc', '5fa72358f0'),
(10032, 'dsad', 'asd', 'asd', 'asd@gmail.com', 'asd', 0, 0, 'asd', 'zxc', '5fa72358f0'),
(10033, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 1, '12', '12', 'c20ad4d76f'),
(10034, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 0, '12', '12', 'c20ad4d76f'),
(10035, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 0, '12', '12', 'c20ad4d76f'),
(10036, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 0, '12', '12', 'c20ad4d76f'),
(10037, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 0, '12', 'asd', '7815696ecb'),
(10038, '545', '4545', '45', 'sadas@yahoo.com', 'asda', 0, 0, '12', 'xzc', '6d9821a608'),
(10039, 'asd', 'sad', 'asda', 'roellongcop20@gmail.com', 'asdasd', 0, 0, 'saads', 'asd', '7815696ecb'),
(10040, 'asd', 'sad', 'asda', 'roellongcop20@gmail.com', 'asdasd', 0, 0, 'saads', 'asd', '7815696ecb'),
(10041, 'asd', 'sad', 'asda', 'roellongcop20@gmail.com', 'asdasd', 0, 0, 'saads', 'xzc', '6d9821a608'),
(10042, 'asd', 'asd', 'asd', 'roel@gmail.com', 'asd', 0, 0, 'asd', 'asd', '7815696ecb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_notification`
--

CREATE TABLE `tbl_client_notification` (
  `id` int(10) NOT NULL,
  `admin_user` int(10) NOT NULL,
  `client_user` int(10) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `date_occur` varchar(30) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client_notification`
--

INSERT INTO `tbl_client_notification` (`id`, `admin_user`, `client_user`, `description`, `link`, `date_occur`, `is_deleted`) VALUES
(1, 10001, 10001, 'Quotation was created for project request : The Tallest House in the world', 'http://localhost/Maron/client_notif/view/10034', 'December 12, 2017', 1),
(2, 10001, 10001, 'Quotation was created for project request : The Tallest House in the world', 'http://localhost/Maron/client_notif/view/10035', 'December 12, 2017', 1),
(3, 10001, 10001, 'Quotation was created for project request : The Tallest House in the world', 'http://localhost/Maron/client_notif/view/10036', 'December 12, 2017', 1),
(4, 10001, 10002, 'Quotation was created for project request : 23', 'http://localhost/Maron/client_notif/view/10038', 'December 12, 2017', 0),
(5, 10001, 10001, 'Project : The Tallest House in the world was set to Ongoing', 'http://localhost/Maron/site/projects/10004', 'December 12, 2017', 1),
(6, 10001, 10001, 'New accomplishments Uploaded', 'http://localhost/Maron/site/projects/10004', 'December 12, 2017', 1),
(7, 10001, 10001, 'New accomplishments Uploaded to Project : <b>The Tallest House in the world</b>', 'http://localhost/Maron/site/projects/10004', 'December 12, 2017', 1),
(8, 10001, 10001, 'Quotation was created for project request : <b>Bambam baho</b>', 'http://localhost/Maron/client_notif/view/10039', 'December 12, 2017', 1);

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
(10001, 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 4, 500, 50, 'Critical', 0),
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
(1, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 1, 5000, 'Inventory', '2017-12-02', 0),
(2, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 1, 5000, 'Inventory', '2017-12-02', 0),
(3, 10004, 'Admin123', '12', '12', 'Pieces', '12', '12', 12, 12, 144, '12', '2017-12-12', 0);

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
(1, 'uploads/accounts/roel.jpg', 10001, 'New ServicesFabrication', 'profile', '2017-12-02', 'dashboard', 0),
(2, 'uploads/accounts/roel.jpg', 10002, 'New ServicesFabrication', 'profile', '2017-12-02', 'dashboard', 0),
(3, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesFabrication', 'activitylog', '2017-12-02', 'dashboard', 0),
(4, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesFabrication', 'activitylog', '2017-12-02', 'dashboard', 0),
(5, 'uploads/accounts/roel.jpg', 10001, 'New ServicesConstruction', 'profile', '2017-12-02', 'dashboard', 0),
(6, 'uploads/accounts/roel.jpg', 10002, 'New ServicesConstruction', 'profile', '2017-12-02', 'dashboard', 0),
(7, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesConstruction', 'activitylog', '2017-12-02', 'dashboard', 0),
(8, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesConstruction', 'activitylog', '2017-12-02', 'dashboard', 0),
(9, 'uploads/accounts/roel.jpg', 10001, 'New ServicesInterior Designing', 'profile', '2017-12-02', 'dashboard', 0),
(10, 'uploads/accounts/roel.jpg', 10002, 'New ServicesInterior Designing', 'profile', '2017-12-02', 'dashboard', 0),
(11, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesInterior Designing', 'activitylog', '2017-12-02', 'dashboard', 0),
(12, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesInterior Designing', 'activitylog', '2017-12-02', 'dashboard', 0),
(13, 'uploads/accounts/roel.jpg', 10001, 'New ServicesCarpentry', 'profile', '2017-12-02', 'dashboard', 0),
(14, 'uploads/accounts/roel.jpg', 10002, 'New ServicesCarpentry', 'profile', '2017-12-02', 'dashboard', 0),
(15, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesCarpentry', 'activitylog', '2017-12-02', 'dashboard', 0),
(16, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesCarpentry', 'activitylog', '2017-12-02', 'dashboard', 0),
(17, 'uploads/accounts/roel.jpg', 10001, 'New ServicesPlumbing', 'profile', '2017-12-02', 'dashboard', 0),
(18, 'uploads/accounts/roel.jpg', 10002, 'New ServicesPlumbing', 'profile', '2017-12-02', 'dashboard', 0),
(19, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesPlumbing', 'activitylog', '2017-12-02', 'dashboard', 0),
(20, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesPlumbing', 'activitylog', '2017-12-02', 'dashboard', 0),
(21, 'uploads/accounts/roel.jpg', 10001, 'New ProductsPush carts', 'profile', '2017-12-02', 'dashboard', 0),
(22, 'uploads/accounts/roel.jpg', 10002, 'New ProductsPush carts', 'profile', '2017-12-02', 'dashboard', 0),
(23, 'uploads/accounts/roel.jpg', 10001, 'Added New ProductsPush carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(24, 'uploads/accounts/roel.jpg', 10002, 'Added New ProductsPush carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(25, 'uploads/accounts/roel.jpg', 10001, 'New ProductsPush carts', 'profile', '2017-12-02', 'dashboard', 0),
(26, 'uploads/accounts/roel.jpg', 10002, 'New ProductsPush carts', 'profile', '2017-12-02', 'dashboard', 0),
(27, 'uploads/accounts/roel.jpg', 10001, 'Added New ProductsPush carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(28, 'uploads/accounts/roel.jpg', 10002, 'Added New ProductsPush carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(29, 'uploads/accounts/roel.jpg', 10001, 'New ProductsPush Carts', 'profile', '2017-12-02', 'dashboard', 0),
(30, 'uploads/accounts/roel.jpg', 10002, 'New ProductsPush Carts', 'profile', '2017-12-02', 'dashboard', 0),
(31, 'uploads/accounts/roel.jpg', 10001, 'Added New ProductsPush Carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(32, 'uploads/accounts/roel.jpg', 10002, 'Added New ProductsPush Carts', 'activitylog', '2017-12-02', 'dashboard', 0),
(33, 'uploads/accounts/roel.jpg', 10001, 'New ProductsSofa Holder', 'profile', '2017-12-02', 'dashboard', 0),
(34, 'uploads/accounts/roel.jpg', 10002, 'New ProductsSofa Holder', 'profile', '2017-12-02', 'dashboard', 0),
(35, 'uploads/accounts/roel.jpg', 10001, 'Added New ProductsSofa Holder', 'activitylog', '2017-12-02', 'dashboard', 0),
(36, 'uploads/accounts/roel.jpg', 10002, 'Added New ProductsSofa Holder', 'activitylog', '2017-12-02', 'dashboard', 0),
(37, 'uploads/accounts/roel.jpg', 10001, 'New ProductsMulti Purpose Kitchen helper', 'profile', '2017-12-02', 'dashboard', 0),
(38, 'uploads/accounts/roel.jpg', 10002, 'New ProductsMulti Purpose Kitchen helper', 'profile', '2017-12-02', 'dashboard', 0),
(39, 'uploads/accounts/roel.jpg', 10001, 'Added New ProductsMulti Purpose Kitchen helper', 'activitylog', '2017-12-02', 'dashboard', 0),
(40, 'uploads/accounts/roel.jpg', 10002, 'Added New ProductsMulti Purpose Kitchen helper', 'activitylog', '2017-12-02', 'dashboard', 0),
(41, 'uploads/accounts/roel.jpg', 10001, 'Item: item name meets the critical stock', 'inventory', '2017-12-02', 'inventory', 0),
(42, 'uploads/accounts/roel.jpg', 10002, 'Item: item name meets the critical stock', 'inventory', '2017-12-02', 'inventory', 0),
(43, 'uploads/accounts/roel.jpg', 10001, 'Export 1 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-12-02', 'inventory/list/All', 0),
(44, 'uploads/accounts/roel.jpg', 10002, 'Export 1 Meter of item namefrom inventory to project: sample Project', 'activitylog', '2017-12-02', 'inventory/list/All', 0),
(45, 'uploads/accounts/roel.jpg', 10001, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-02', 'project/project_view/10001', 0),
(46, 'uploads/accounts/roel.jpg', 10002, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-02', 'project/project_view/10001', 0),
(47, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation Dream House', 'activitylog', '2017-12-02', 'quotation', 0),
(48, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation Dream House', 'activitylog', '2017-12-02', 'quotation', 0),
(49, 'uploads/accounts/roel.jpg', 10001, 'New project Dream House', 'project', '2017-12-02', 'quotation', 0),
(50, 'uploads/accounts/roel.jpg', 10002, 'New project Dream House', 'project', '2017-12-02', 'quotation', 0),
(51, 'uploads/accounts/roel.jpg', 10001, 'Add New project Dream House', 'activitylog', '2017-12-02', 'quotation', 0),
(52, 'uploads/accounts/roel.jpg', 10002, 'Add New project Dream House', 'activitylog', '2017-12-02', 'quotation', 0),
(53, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation My Resort', 'activitylog', '2017-12-02', 'quotation', 0),
(54, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation My Resort', 'activitylog', '2017-12-02', 'quotation', 0),
(55, 'uploads/accounts/roel.jpg', 10001, 'New project My Resort', 'project', '2017-12-02', 'quotation', 0),
(56, 'uploads/accounts/roel.jpg', 10002, 'New project My Resort', 'project', '2017-12-02', 'quotation', 0),
(57, 'uploads/accounts/roel.jpg', 10001, 'Add New project My Resort', 'activitylog', '2017-12-02', 'quotation', 0),
(58, 'uploads/accounts/roel.jpg', 10002, 'Add New project My Resort', 'activitylog', '2017-12-02', 'quotation', 0),
(59, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(60, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(61, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(62, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(63, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(64, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(65, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(66, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(67, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(68, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(69, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(70, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(71, 'uploads/accounts/roel.jpg', 10001, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(72, 'uploads/accounts/roel.jpg', 10002, 'Added New Services ', 'activitylog', '2017-12-05', 'dashboard', 0),
(73, 'uploads/accounts/roel.jpg', 10001, 'New ServicesOther Services', 'profile', '2017-12-05', 'dashboard', 0),
(74, 'uploads/accounts/roel.jpg', 10002, 'New ServicesOther Services', 'profile', '2017-12-05', 'dashboard', 0),
(75, 'uploads/accounts/roel.jpg', 10001, 'Added New ServicesOther Services', 'activitylog', '2017-12-05', 'dashboard', 0),
(76, 'uploads/accounts/roel.jpg', 10002, 'Added New ServicesOther Services', 'activitylog', '2017-12-05', 'dashboard', 0),
(77, 'uploads/accounts/roel.jpg', 10001, 'Added The List of Clients of the company', 'activitylog', '2017-12-05', 'dashboard', 0),
(78, 'uploads/accounts/roel.jpg', 10002, 'Added The List of Clients of the company', 'activitylog', '2017-12-05', 'dashboard', 0),
(79, 'uploads/accounts/roel.jpg', 10001, 'Added The Construction Line of the company', 'activitylog', '2017-12-05', 'dashboard', 0),
(80, 'uploads/accounts/roel.jpg', 10002, 'Added The Construction Line of the company', 'activitylog', '2017-12-05', 'dashboard', 0),
(81, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation qwe', 'activitylog', '2017-12-12', 'projects', 0),
(82, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation qwe', 'activitylog', '2017-12-12', 'projects', 0),
(83, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(84, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(85, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'quotation', 0),
(86, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'quotation', 0),
(87, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(88, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(89, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'projects', 0),
(90, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'projects', 0),
(91, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(92, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(93, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(94, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(95, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation qwe', 'activitylog', '2017-12-12', 'quotation', 0),
(96, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation qwe', 'activitylog', '2017-12-12', 'quotation', 0),
(97, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'projects', 0),
(98, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'projects', 0),
(99, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(100, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(101, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(102, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(103, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(104, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(105, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(106, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(107, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(108, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Dream of Hope', 'activitylog', '2017-12-12', 'quotation', 0),
(109, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(110, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(111, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(112, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(113, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(114, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(115, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(116, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(117, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(118, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(119, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(120, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'projects', 0),
(121, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(122, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(123, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(124, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(125, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(126, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(127, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(128, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(129, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(130, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(131, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(132, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(133, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(134, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House in the world', 'activitylog', '2017-12-12', 'quotation', 0),
(135, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'projects', 0),
(136, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation 23', 'activitylog', '2017-12-12', 'projects', 0),
(137, 'uploads/accounts/roel.jpg', 10001, 'Added 12 Pieces of 12 to project ', 'activitylog', '2017-12-12', 'project/project_view/10004', 0),
(138, 'uploads/accounts/roel.jpg', 10002, 'Added 12 Pieces of 12 to project ', 'activitylog', '2017-12-12', 'project/project_view/10004', 0),
(139, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation Bambam baho', 'activitylog', '2017-12-12', 'projects', 0),
(140, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation Bambam baho', 'activitylog', '2017-12-12', 'projects', 0);

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
(10001, 'Roel', 'Rivera', 'Longcop', 'roel@gmail.com', 'Engineer', 'Fabrication', 0, 'uploads/personnels/roel.jpg'),
(10002, 'Annabelle', 'baltazar', 'gernale', 'abel17@gmail.com', 'Helper', 'Designing', 0, 'uploads/personnels/abel.jpg'),
(10003, 'dessa', 'lumiano', 'evangelista', 'dessa@gmail.com', 'Manager', 'Designing', 0, 'uploads/personnels/dessa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preference`
--

CREATE TABLE `tbl_preference` (
  `preference_id` int(10) NOT NULL,
  `request_id` int(10) NOT NULL,
  `work_description` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `material_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_preference`
--

INSERT INTO `tbl_preference` (`preference_id`, `request_id`, `work_description`, `material_name`, `material_description`) VALUES
(1, 1, 'Flooring', 'Tiles', '2inches thick'),
(2, 1, 'Sealing', 'Roof', 'with rooftop'),
(3, 2, 'Flooring', 'Tiles', 'OK'),
(4, 2, 'Sealing', 'Roof water', 'high quality'),
(5, 4, 'Flooring', 'Tiles', 'qwe'),
(6, 4, 'Flooring', 'ee', 'ee'),
(7, 6, '23', '32', '23'),
(8, 6, '32', '32', '32'),
(9, 6, '32', '23', '23'),
(10, 8, 'Walling', 'Super Cement', 'for every 2 inches height, there will be 200 cement on it'),
(11, 8, 'Sealing', 'The super Glass', 'the most transparent glass in the world'),
(12, 9, 'asda', 'asd', 'asd'),
(13, 9, 'das', 'asd', 'dasd'),
(14, 9, 'asd', 'dasd', 'asd'),
(15, 9, 'asdas', 'dasd', 'das');

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
(1, 1, 'uploads/products/Machine Rewinding.png'),
(9, 8, 'uploads/products/Push carts.png'),
(10, 9, 'uploads/products/Sofa Holder.png'),
(11, 10, 'uploads/products/multi.png');

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
(1, 'Motor Rewinding', 'We handle some sort of machine failures and rewinding.?', 0),
(8, 'Push Carts', 'Push carts\r\nSpecs :\r\nHeight: 4.5 ft ;\r\nWeight : 5kg;', 0),
(9, 'Sofa Holder', '4 legged Soffa Holder\r\n316 Stainless', 0),
(10, 'Kitchen helper', '4 wheeled Kitchen Helper\r\nwith maintenance.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `profile_id` int(10) NOT NULL,
  `legend` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `is_contact` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`profile_id`, `legend`, `description`, `is_deleted`, `is_contact`) VALUES
(10001, 'Company_name', 'Maron Builders Company', 0, 0),
(10002, 'Company_address', '<p>Blk 8 Lot 15 Silmer Village, Bi&ntilde;an, Laguna</p>\r\n', 0, 0),
(10003, 'Company_email', 'maronenterprise@gmail.com', 0, 1),
(10004, 'Telephone_no', '6368619/8025961', 0, 1),
(10005, 'Tell_fax_no', '6368619', 0, 1),
(10006, 'Mobile_no', '09988673570/09272168024', 0, 1),
(10007, 'Mission', '<p style="text-align:center">MARON BUILDERS CO. mission is to develop and set new state-of the art trend &amp; technologies in Construction Industry by using comprehensive research that will minimized construction cost for mutual benefit of its clientele and the company. &quot;</p>\r\n', 0, 0),
(10008, 'Vission', '<p style="text-align:center">The people behind the management of Maron Builders Co. possess the competence and expertise in undertaking and managing a construction business with long professional experience in various aspects of constructions and engineering work which is the key to the firms successful endeavor.&quot;</p>\r\n', 0, 0),
(10009, 'History', '<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp;<strong> MARON BUILDERS CO<em>.</em></strong> is a construction firm conceived and formed by a company of capable and highly qualified persons with long and fruitful experience of handling almost all aspects of construction and engineering works. The persons behind this firm have been engage extensively in the field of construction, trading, fabrication and development. MARON decided to pursue the goal to move on and expand its venture with the help of its affiliates aimed to a higher degree to become one of the leaders in construction industry. MARON BUILDERS CO. offers comprehensive engineering construction services. The company adopts an organization which deliberates from ordinary administrative and project management that requires technical activities and decisions. Technical expertise is organized along the following major engineering disciplines, each of which is headed by a Project Engineer.</p>\r\n', 0, 0),
(10010, 'List of Clients', '<ul>\r\n	<li><strong>St. Lukes Medical Center Global City (</strong><span style="color:#7f8c8d">Fort Bonifacio Taguig City</span><strong>)</strong></li>\r\n	<li><strong>St. Lukes Medical Center Quezon City (</strong><span style="color:#7f8c8d">Quezon City</span><strong>)</strong></li>\r\n	<li><strong>Makati Medical Center</strong>&nbsp;<strong>(</strong><span style="color:#7f8c8d">#2 Amorsolo St. Legaspi Village Makati City</span><strong>)</strong></li>\r\n	<li><strong>Providence Hospital</strong>&nbsp;<strong>(</strong><span style="color:#7f8c8d">Quezon Ave. Quezon City</span><strong>)</strong></li>\r\n	<li><strong>Philippine Kidney Dialysis Foundation (</strong><span style="color:#7f8c8d">Roces Ave. Quezon City</span><strong>)</strong></li>\r\n	<li><strong>Resorts World Manila (</strong><span style="color:#7f8c8d">Pasay City Philippines</span><strong>)</strong></li>\r\n	<li><strong>Sanyo Philippines (</strong><span style="color:#7f8c8d">Tarlac City</span><strong>)</strong></li>\r\n	<li><strong>Philippine Air Force (</strong><span style="color:#7f8c8d">HSSG. Jesus Villamor Airbase Pasay City</span><strong>)</strong></li>\r\n	<li><strong>Green Cross Incorporated (</strong><span style="color:#7f8c8d">Madrigal Business Park, Muntinlupa City</span><strong>)</strong></li>\r\n	<li><strong>2GO Group Inc. (</strong><span style="color:#7f8c8d">North Harbor Tondo, Manila</span><strong>)</strong></li>\r\n	<li><strong>Entel Philippines (</strong><span style="color:#7f8c8d">Laguna TechnoPark, Annex, Binan Laguna</span><strong>)</strong></li>\r\n	<li><strong>FUJITSU PHILIPPINES (</strong><span style="color:#7f8c8d">Liip, Malampasan, Binan Laguna</span><strong>)</strong></li>\r\n	<li><strong>Clarmil manufacturing Inc., (Goldilocks, </strong><span style="color:#7f8c8d">Brgy. Mamatid, Cabuyao Laguna</span><strong>)</strong></li>\r\n	<li><strong>Gardenia Philippines Incorporated (</strong><span style="color:#7f8c8d">Liip Mamplasan, Binan Laguna</span><strong>)</strong></li>\r\n	<li><strong>Enchanted Kingdom (</strong><span style="color:#7f8c8d">Sta. Rosa City</span><strong>)</strong></li>\r\n	<li><strong>Megaworld Corporation (</strong><span style="color:#7f8c8d">Gil Puyat Ave. Makati City</span><strong>)</strong></li>\r\n	<li><strong>Innovativ Automation Solution Inc. (</strong><span style="color:#7f8c8d">Sta. Rosa City Laguna</span><strong>)</strong></li>\r\n</ul>\r\n', 0, 0),
(10011, 'Construction Line', '<p><strong>A. CIVIL WORKS</strong></p>\r\n\r\n<ol>\r\n	<li>FORM WORKS</li>\r\n	<li>REBAR WORKS</li>\r\n	<li>CONCRETING</li>\r\n	<li>MASONRY WORKS</li>\r\n	<li>PLASTERING WORKS</li>\r\n	<li>FENCING WORKS</li>\r\n	<li>ALL RELATED CIVIL WORKS</li>\r\n</ol>\r\n\r\n<p><strong>B. ARCHITECTURAL &amp; INTERIOR DESIGN WORKS</strong></p>\r\n\r\n<ol>\r\n	<li>SPACE PLANNING</li>\r\n	<li>INTERIOR DESIGN CONSULTATION</li>\r\n	<li>ARCHITECTURAL DESIGN CONSULTATION</li>\r\n	<li>3D DESIGN PRESENTATION</li>\r\n	<li>RENOVATIONS</li>\r\n	<li>ARCHITECTURAL &amp; INTERIOR DESIGN FINISHING WORK</li>\r\n</ol>\r\n\r\n<p><strong>C. MECHANICAL WORKS</strong></p>\r\n\r\n<p><strong>D. ELECTRICAL WORKS </strong></p>\r\n\r\n<p><strong>E. URBAN PLANNING &amp; DESIGN </strong></p>\r\n\r\n<p><strong>F. FABRICATION</strong></p>\r\n', 0, 0);

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
(10001, 10001, 10001, 16277, 13723, 'Pending', 'uploads/projects/office.jpg', 10001, 0),
(10002, 10002, 10001, 0, 4, 'Finished', 'uploads/projects/parallax1.jpg', 10001, 0),
(10003, 10003, 10001, 0, 24, 'Ongoing', 'uploads/projects/sample-1.jpg', 10001, 0),
(10004, 10036, 10001, 144, 484, 'Ongoing', 'uploads/templates/project.png', 10001, 0),
(10005, 10038, 10002, 0, 92, 'Pending', 'uploads/templates/project.png', 10001, 0),
(10006, 10039, 10001, 0, 92, 'Pending', 'uploads/templates/project.png', 10001, 0),
(10007, 10039, 10001, 0, 92, 'Pending', 'uploads/templates/project.png', 10001, 0);

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
(10002, 10001, '2017-12-02', 12, 12, 'Dream House', 'San Jose GMA Cavite', '2 Storey House with swimming fool inside', 2, 2, 0, '', 4, 'dont be afraid', '12/28/2017', '12/28/2017', 'Approved', 0),
(10003, 10001, '2017-12-02', 22, 22, 'My Resort', 'Laguna, binan', 'My Resort..\r\ncomposed of 3 swimming pools\r\nand 4 apartments.', 12, 12, 0, '', 24, 'be safe', '12/20/2017', '12/28/2017', 'Approved', 0),
(10004, 10001, '2017-12-12', 0, 0, 'qwe', 'qwe', 'qwe', 23, 46, 46, '', 115, '', '', '', 'Pending', 0),
(10005, 10001, '2017-12-12', 12, 12, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 24, '', 24, '1212', '12/05/2017', '12/21/2017', 'Pending', 0),
(10006, 10002, '2017-12-12', 23, 23, '23', '23', '23', 0, 0, 46, '', 46, '23', '12/04/2017', '12/20/2017', 'Pending', 0),
(10007, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 23, 23, 0, '', 46, '', '', '', 'Pending', 0),
(10008, 10002, '2017-12-12', 0, 0, '23', '23', '23', 0, 0, 138, '', 138, '', '', '', 'Pending', 0),
(10009, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 46, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>46</td></tr></tbody></table>', 46, '', '', '', 'Pending', 0),
(10010, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 46, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>46</td></tr></tbody></table>', 46, '', '', '', 'Pending', 0),
(10011, 10001, '2017-12-12', 0, 0, 'qwe', 'qwe', 'qwe', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10012, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 12, 12, 0, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Lot</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>24</td></tr></tbody></table>', 24, '', '', '', 'Pending', 0),
(10013, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 12, 12, 0, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Lot</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>24</td></tr></tbody></table>', 24, '', '', '', 'Pending', 0),
(10014, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 24, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>24</td></tr></tbody></table>', 24, '', '', '', 'Pending', 0),
(10015, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10016, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 12, 12, 0, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Lot</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>24</td></tr></tbody></table>', 24, '', '', '', 'Pending', 0),
(10017, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10018, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10019, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10020, 10002, '2017-12-12', 0, 0, 'The Dream of Hope', '1312', '123123', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10021, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10022, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10023, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10024, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10025, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10026, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10027, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10028, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10029, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 0, 0, 0, '', 0, '', '', '', 'Pending', 0),
(10030, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 55, 55, 2646, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>23</td><td>232.00</td><td>kilogram</td><td>32.00</td><td>32.00</td><td>64.00</td><td>64.00</td></tr><tr><td>2</td><td>32</td><td>32.00</td><td>Meter</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>B</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>2323.00</td><td>323.00</td><td>2646.00</td><td>2646.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>2756</td></tr></tbody></table>', 2756, '', '', '', 'Pending', 0),
(10031, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 69, 69, 46, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Meter</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Box</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td>2</td><td>23</td><td>32.00</td><td>Pieces</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>184</td></tr></tbody></table>', 184, '', '', '', 'Pending', 0),
(10032, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 269, 369, 0, '<table class=''table table-bordered''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>213</td><td>213.00</td><td>Meter</td><td>23.00</td><td>123.00</td><td>146.00</td><td>146.00</td></tr><tr><td>2</td><td>123</td><td>123.00</td><td>Box</td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>123</td><td>123.00</td><td>Lot</td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>638</td></tr></tbody></table>', 638, '', '', '', 'Pending', 0),
(10033, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 23, 23, 46, '</head><table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>B</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>92</td></tr></tbody></table>', 92, '', '', '', 'Pending', 0),
(10034, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 369, 369, 0, '</head><table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Preliminary</b></td></tr><tr><td>1</td><td>123</td><td>123.00</td><td>Lot</td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>123</td><td>123.00</td><td>Meter</td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td><b>C</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>123</td><td>123.00</td><td>Meter</td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>738</td></tr></tbody></table>', 738, '', '', '', 'Pending', 0),
(10035, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 46, 45, 46, '<head>th, td, table {border:1px solid grey;}</head><table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>22.00</td><td>45.00</td><td>45.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Liter</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>137</td></tr></tbody></table>', 137, '', '', '', 'Pending', 0),
(10036, 10001, '2017-12-12', 0, 0, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 236, 146, 246, '<style>th, td, table {border:1px solid grey;}</style></head><table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>123</td><td>123.00</td><td>Meter</td><td>213.00</td><td>123.00</td><td>336.00</td><td>336.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>123.00</td><td>123.00</td><td>246.00</td><td>246.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>628</td></tr></tbody></table>', 628, '', '', '', 'Approved', 0),
(10037, 10002, '2017-12-12', 0, 0, '23', '23', '23', 34, 34, 24, '\r\n                     <head>\r\n                            <style>\r\n                                   table , th, td, tr {\r\n                                          border: 1px solid grey;\r\n                                   }\r\n                                   tr {\r\n                                          padding\r\n                                   }\r\n                            </style>\r\n                     </head>\r\n\r\n              <table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>12</td><td>12.00</td><td>Lot</td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>22</td><td>22.00</td><td>Pieces</td><td>22.00</td><td>22.00</td><td>44.00</td><td>44.00</td></tr><tr><td><b>C</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>12.00</td><td>12.00</td><td>24.00</td><td>24.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>92</td></tr></tbody></table>', 92, '', '', '', 'Pending', 0),
(10038, 10002, '2017-12-12', 0, 0, '23', '23', '23', 34, 34, 24, '', 92, '', '', '', 'Approved', 0),
(10039, 10001, '2017-12-12', 0, 0, 'Bambam baho', 'bahay', 'payat', 23, 23, 46, '\r\n                     <head>\r\n                            <style>\r\n                                   table , th, td, tr {\r\n                                          border: 1px solid grey;\r\n                                   }\r\n                                   tr {\r\n                                          padding\r\n                                   }\r\n                            </style>\r\n                     </head>\r\n\r\n              <table><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Supply And Installation</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Lot</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td><b>B</b></td><td colspan=''3''><b>Transportation</b></td><th>Fuel</th><th>Toll Gates</th></tr><tr><td>1</td><td></td><td>0.00</td><td></td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>92</td></tr></tbody></table>', 92, '', '', '', 'Approved', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `request_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `date_created` varchar(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`request_id`, `client_id`, `project_name`, `address`, `description`, `date_created`, `status`) VALUES
(1, 10001, '', '', '', 'December 04, 2017', 0),
(2, 10001, '2 STOREY BLDG.', 'Sta. Rosa Binan Laguna', 'THE CONSTRUCTION OF TWO STOREY COMMERCIAL/RESIDENTIAL BLDG.', 'December 04, 2017', 2),
(3, 10001, 'aasdasdasdasdsdasdasdas', 'asdasdas', 'dasda', 'December 04, 2017', 1),
(4, 10001, 'qwe', 'qwe', 'qwe', 'December 05, 2017', 0),
(5, 10002, '23', '23', '23', 'December 15, 2017', 2),
(6, 10002, 'The Dream of Hope', '1312', '123123', 'December 15, 2017', 0),
(7, 10001, 'The ', 'asd', 'asd', 'December 16, 2017', 0),
(8, 10001, 'The Tallest House in the world', 'Philippines, Luzon, Cavite, GMA, Sanjose', 'the building will have 2300 floors that even the airplane cannot reach', 'December 16, 2017', 0),
(9, 10001, 'Bambam baho', 'bahay', 'payat', 'December 10, 2017', 2);

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
(1, 1, 'uploads/services/fabrication.jpg'),
(5, 2, 'uploads/services/construction.PNG'),
(6, 3, 'uploads/services/interior.JPG'),
(14, 4, 'uploads/services/carpentry.jpg'),
(15, 5, 'uploads/services/plumbing.jpg'),
(17, 2, 'uploads/services/construction2.PNG'),
(18, 2, 'uploads/services/construction3.PNG'),
(19, 1, 'uploads/services/fabrication3.PNG'),
(20, 1, 'uploads/services/fabrication2.PNG'),
(21, 3, 'uploads/services/d2.PNG'),
(22, 3, 'uploads/services/d1.PNG'),
(23, 3, 'uploads/services/d3.PNG'),
(24, 5, 'uploads/services/p1.PNG'),
(25, 4, 'uploads/services/c1.PNG');

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
(1, 'Fabrication', 'We handle arc and Stainless Fabrications.\r\nEach project is undertaken by an ad-hoc team which is led\r\nby Project Engineer. For a complex project involving a sensitive\r\nclient – firm relationship, a Project Manager supervises the Project\r\nEngineer and his technical staff. When a project requires several\r\nalternatives, the most feasible one is chosen without compromising\r\nquality output.\r\nThe Company team member understands the importance of cooperation\r\nand coordination. The availability of varied expertise\r\nwithin the organization has been proven to be beneficial in the\r\nsuccessful execution of projects.\r\nTo maintain and improve the firms quality of work and to\r\nkeep abreast to the new development in construction and state –\r\nof-the art technologies thereof, members of the technical staff are\r\nconstantly trained in the trends in their respective fields.', 0),
(2, 'Construction', 'Our company provides consultancy and advisory to starting and existing Biomedical Engineering\r\nteam, and work with hospital Facilities Directors, Biomedical Engineering Managers,\r\nClinical Engineering Managers, Healthcare Technology Managers, Quality Directors,\r\nInfection Control Officers, Risk Management Officers and Pollution Control Officers to develop\r\na comprehensive Medical Equipment Management Plan, Program, Policies and Procedures\r\nfor compliance of Local (DOH, Philhealth) and International Standards (JCI, ISO).\r\nWill also provide trainings on how to set up an In-House Biomedical Engineering team, how\r\nto implement plan, policies and procedures effectively, how to pass compliance for local\r\nand international accreditation, and how to sustain accreditation compliance.\r\n', 0),
(3, 'Interior Designing', 'We also cater hospital design on Architectural and MEPF, medical equipment planning, Design\r\nand Construct of Cleanroom for Operating Rooms, Molecular Laboratories, and Stem\r\nCell Rooms, Isolation Rooms-Negative and Positive Pressure Rooms, Design and Construct\r\nof Medical Gas Piping, Nurse Call Systems, Infant Protection Systems, Pneumatic Tube Systems,\r\nDesign and Project Management for High End Medical Equipment such as Xray Machine,\r\nMammo, Angio, CT Scanner, MRI, LINAC, Laboratory, and Data Centers, Reverse Osmosis\r\nSystem, PABX and I.T. System.\r\nWe also provide third party support for your preventive maintenance, performance verification\r\nand calibration of infusion pumps, defibrillators, anesthesia machines, physiologic\r\nmonitors, ventilators, etc.\r\nWe will also assist you on sending your test equipment for calibration abroad.', 0),
(4, 'Carpentry', 'We also handle capentry works.', 0),
(5, 'Plumbing', 'We also done over all plan installation and maintenance of plumbing works.', 0),
(6, 'Other Services', '<p>\r\n\r\nOur company provides consultancy and advisory to starting and existing Biomedical Engineering\r\nteam, and work with hospital Facilities Directors, Biomedical Engineering Managers,\r\nClinical Engineering Managers, Healthcare Technology Managers, Quality Directors,\r\nInfection Control Officers, Risk Management Officers and Pollution Control Officers to develop\r\na comprehensive Medical Equipment Management Plan, Program, Policies and Procedures\r\nfor compliance of Local (DOH, Philhealth) and International Standards (JCI, ISO).\r\nWill also provide trainings on how to set up an In-House Biomedical Engineering team, how\r\nto implement plan, policies and procedures effectively, how to pass compliance for local\r\nand international accreditation, and how to sustain accreditation compliance.\r\nOUR PARTNERS\r\nWe also cater hospital design on Architectural and MEPF, medical equipment planning, Design\r\nand Construct of Cleanroom for Operating Rooms, Molecular Laboratories, and Stem\r\nCell Rooms, Isolation Rooms-Negative and Positive Pressure Rooms, Design and Construct\r\nof Medical Gas Piping, Nurse Call Systems, Infant Protection Systems, Pneumatic Tube Systems,\r\nDesign and Project Management for High End Medical Equipment such as Xray Machine,\r\nMammo, Angio, CT Scanner, MRI, LINAC, Laboratory, and Data Centers, Reverse Osmosis\r\nSystem, PABX and I.T. System.\r\nWe also provide third party support for your preventive maintenance, performance verification\r\nand calibration of infusion pumps, defibrillators, anesthesia machines, physiologic\r\nmonitors, ventilators, etc.\r\nWe will also assist you on sending your test equipment for calibration abroad.\r\nOTHER SERVICES:\r\nHealthcare Facilities Management:\r\n1. Audits for Building and Grounds, Mechanical, Electrical, Plumbing, Fire Protection, and\r\nAuxiliary System.\r\n2. Permit Assistance for Quezon City companies\r\n3. Electronics Permit Sign and Sealed services for LGU and PEZA requirements\r\n\r\n<br></p>', 0);

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
-- Table structure for table `tbl_temp_preference`
--

CREATE TABLE `tbl_temp_preference` (
  `preference_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `work_description` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `material_description` text NOT NULL
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
(1, 10001, 'Admin123', 'cavite', 'laguna', 277, '232-2323-2', '2017-12-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_description`
--

CREATE TABLE `tbl_work_description` (
  `work_des_id` int(10) NOT NULL,
  `client_id` int(11) NOT NULL,
  `work_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 10001, 'Admin123', 'carpenter', 500, 2, 6, 6000, '2017-12-02', 0);

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
-- Indexes for table `tbl_client_notification`
--
ALTER TABLE `tbl_client_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_user` (`admin_user`),
  ADD KEY `client_user` (`client_user`);

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
  ADD KEY `request_id` (`request_id`);

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
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`request_id`),
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
-- Indexes for table `tbl_temp_preference`
--
ALTER TABLE `tbl_temp_preference`
  ADD PRIMARY KEY (`preference_id`),
  ADD KEY `client_id` (`client_id`);

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
  MODIFY `accomplishment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  MODIFY `accomplishment_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10013;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10043;
--
-- AUTO_INCREMENT for table `tbl_client_notification`
--
ALTER TABLE `tbl_client_notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  MODIFY `personnel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `product_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;
--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10040;
--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  MODIFY `service_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `tbl_temp_preference`
--
ALTER TABLE `tbl_temp_preference`
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_work_description`
--
ALTER TABLE `tbl_work_description`
  MODIFY `work_des_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_workerexpenses`
--
ALTER TABLE `tbl_workerexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Constraints for table `tbl_client_notification`
--
ALTER TABLE `tbl_client_notification`
  ADD CONSTRAINT `tbl_client_notification_ibfk_1` FOREIGN KEY (`client_user`) REFERENCES `tbl_client` (`client_no`),
  ADD CONSTRAINT `tbl_client_notification_ibfk_2` FOREIGN KEY (`admin_user`) REFERENCES `tbl_account` (`id`);

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
  ADD CONSTRAINT `tbl_preference_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `tbl_request` (`request_id`);

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
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_no`);

--
-- Constraints for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  ADD CONSTRAINT `tbl_service_images_ibfk_1` FOREIGN KEY (`service_no`) REFERENCES `tbl_services` (`service_id`);

--
-- Constraints for table `tbl_temp_preference`
--
ALTER TABLE `tbl_temp_preference`
  ADD CONSTRAINT `tbl_temp_preference_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_no`);

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
