-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2017 at 08:20 PM
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
(10004, 10002, 10001, '<p><i>The Lake</i></p>', '2017-12-02');

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
(10010, 10004, 'uploads/accomplishments/sample-1.jpg');

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
(16, 10001, 'Add New Project My Resort', '2017-12-02', '07:07:25pm', 0);

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
(10001, 'Roel R. Longcop', 'engineer', '09078267471', 'roel@gmail.com', 'san jose gma', 0, 1, 'longcop', 'longcop', 'client');

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
(2, 10001, 'Admin123', 'item name', 'description of the item here', 'Meter', '100', 'blue', 5000, 1, 5000, 'Inventory', '2017-12-02', 0);

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
(58, 'uploads/accounts/roel.jpg', 10002, 'Add New project My Resort', 'activitylog', '2017-12-02', 'quotation', 0);

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
(42, 20, 'Flooring', 'Tiles', '2x2'),
(43, 20, 'Sealing', 'material 1\nmaterial 2\nmaterial 3', 'brand no. 1'),
(44, 20, 'Door', 'Wood', '4x4 wood stain'),
(45, 20, 'Flooring', 'Cement', 'Cement Brand \nEagle Cement'),
(46, 20, 'Walling', 'Paint Davies w/ black and blue color', 'this must be the gretest gift of all'),
(47, 20, 'Walling', 'first class paint', 'color black inside and color white inside'),
(48, 20, 'Flooring', 'qwweqwe', 'qweqwe');

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
(10002, 'Company_address', '<p>Blk 8 Lot 15 Silmer Village, Bi&ntilde;an, Laguna</p>', 0, 0),
(10003, 'Company_email', 'maronenterprise@gmail.com', 0, 1),
(10004, 'Telephone_no', '6368619/8025961', 0, 1),
(10005, 'Tell_fax_no', '6368619', 0, 1),
(10006, 'Mobile_no', '09988673570/09272168024', 0, 1),
(10007, 'Mission', 'MARON BUILDERS CO. mission is to develop and set new\r\nstate-of the art trend & technologies in Construction Industry by\r\nusing comprehensive research that will minimized construction\r\ncost for mutual benefit of its clientele and the company.\r\n', 0, 0),
(10008, 'Vission', 'The people behind the management of Maron Builders Co.\r\npossess the competence and expertise in undertaking and managing\r\na construction business with long professional experience\r\nin various aspects of constructions and engineering work which\r\nis the key to the firms successful endeavor.', 0, 0),
(10009, 'History', '<p></p>\r\n\r\n<p>&nbsp; Each project is undertaken by an ad-hoc team which is led by Project Engineer. For a complex project involving a sensitive client – firm relationship, a Project Manager supervises the Project Engineer and his technical staff. When a project requires several alternatives, the most feasible one is chosen without compromising quality output. The Company team member understands the importance of cooperation and coordination. The availability of varied expertise within the organization has been proven to be beneficial in the successful execution of projects. To maintain and improve the firms quality of work and to keep abreast to the new development in construction and state – of-the art technologies thereof, members of the technical staff are constantly trained in the trends in their respective fields. They are active members of professional association, attend conferences related to their respective fields and pursue opportunities for continuing education.</p>\r\n\r\n<p>"</p>', 0, 0);

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
(10003, 10003, 10001, 0, 24, 'Ongoing', 'uploads/projects/sample-1.jpg', 10001, 0);

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
(10003, 10001, '2017-12-02', 22, 22, 'My Resort', 'Laguna, binan', 'My Resort..\r\ncomposed of 3 swimming pools\r\nand 4 apartments.', 12, 12, 0, '', 24, 'be safe', '12/20/2017', '12/28/2017', 'Approved', 0);

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
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`request_id`, `client_id`, `project_name`, `address`, `description`, `is_deleted`) VALUES
(20, 10001, '', '', '', 0);

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
(15, 5, 'uploads/services/plumbing.jpg');

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
(1, 'Fabrication', 'We handle arc and Stainless Fabrications.\r\nEach project is undertaken by an ad-hoc team which is led\r\nby Project Engineer. For a complex project involving a sensitive\r\nclient – firm relationship, a Project Manager supervises the Project\r\nEngineer and his technical staff. When a project requires several\r\nalternatives, the most feasible one is chosen without compromising\r\nquality output.\r\nThe Company team member understands the importance of cooperation\r\nand coordination. The availability of varied expertise\r\nwithin the organization has been proven to be beneficial in the\r\nsuccessful execution of projects.\r\nTo maintain and improve the firms quality of work and to\r\nkeep abreast to the new development in construction and state –\r\nof-the art technologies thereof, members of the technical staff are\r\nconstantly trained in the trends in their respective fields. They are\r\nactive members of professional association, attend conferences\r\nrelated to their resp', 0),
(2, 'Construction', 'Our company provides consultancy and advisory to starting and existing Biomedical Engineering\r\nteam, and work with hospital Facilities Directors, Biomedical Engineering Managers,\r\nClinical Engineering Managers, Healthcare Technology Managers, Quality Directors,\r\nInfection Control Officers, Risk Management Officers and Pollution Control Officers to develop\r\na comprehensive Medical Equipment Management Plan, Program, Policies and Procedures\r\nfor compliance of Local (DOH, Philhealth) and International Standards (JCI, ISO).\r\nWill also provide trainings on how to set up an In-House Biomedical Engineering team, how\r\nto implement plan, policies and procedures effectively, how to pass compliance for local\r\nand international accreditation, and how to sustain accreditation compliance.\r\n', 0),
(3, 'Interior Designing', 'We also cater hospital design on Architectural and MEPF, medical equipment planning, Design\r\nand Construct of Cleanroom for Operating Rooms, Molecular Laboratories, and Stem\r\nCell Rooms, Isolation Rooms-Negative and Positive Pressure Rooms, Design and Construct\r\nof Medical Gas Piping, Nurse Call Systems, Infant Protection Systems, Pneumatic Tube Systems,\r\nDesign and Project Management for High End Medical Equipment such as Xray Machine,\r\nMammo, Angio, CT Scanner, MRI, LINAC, Laboratory, and Data Centers, Reverse Osmosis\r\nSystem, PABX and I.T. System.\r\nWe also provide third party support for your preventive maintenance, performance verification\r\nand calibration of infusion pumps, defibrillators, anesthesia machines, physiologic\r\nmonitors, ventilators, etc.\r\nWe will also assist you on sending your test equipment for calibration abroad.', 0),
(4, 'Carpentry', 'We also handle capentry works.', 0),
(5, 'Plumbing', 'We also done over all plan installation and maintenance of plumbing works.', 0);

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
  MODIFY `accomplishment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_accomplishment_images`
--
ALTER TABLE `tbl_accomplishment_images`
  MODIFY `accomplishment_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `tbl_activitylogs`
--
ALTER TABLE `tbl_activitylogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  MODIFY `personnel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  MODIFY `service_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
