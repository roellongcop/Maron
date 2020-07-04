-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 07:08 AM
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
(10001, 10001, 10001, 'first Accomplishment', '2017-11-30');

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
(10001, 10001, 'uploads/accomplishments/construction.png');

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
(10002, 'roel', 'roel', 'roel rivera longcop', 'roellongcop11@gmail.com', 'Male', 'san jose', 'Engineer', 'uploads/accounts/abel.jpg', 0);

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
(1, 10001, 'Add New Quotation My Dream House', '2017-12-13', '01:37:41pm', 0),
(2, 10001, 'Add New Quotation My Dream House', '2017-12-13', '01:41:27pm', 0),
(3, 10001, 'Add New Quotation The Tallest House', '2017-12-28', '08:03:28am', 0),
(4, 10001, 'Add New Project The Tallest House', '2017-12-28', '08:08:23am', 0),
(5, 10001, 'Add New Quotation The Tallest House', '2017-12-28', '08:11:40am', 0),
(6, 10001, 'Add new item Paint', '2017-12-28', '09:12:01am', 0),
(7, 10001, 'Added 3 Pieces of 1 to project ', '2017-12-28', '10:29:57am', 0),
(8, 10001, 'Updated Transportation from  to  to project ', '2017-12-28', '11:14:14am', 0),
(9, 10001, 'Updated Transportation from  to  to project ', '2017-12-28', '03:06:56pm', 0),
(10, 10001, 'Add New Quotation My Pushcart', '2017-12-30', '03:07:27am', 0),
(11, 10001, 'Add new item new item', '2017-12-30', '04:10:27am', 0),
(12, 10001, 'Update User Account roel rivera longcop', '2017-12-30', '06:49:43am', 0);

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
(10002, 'Annabelle Gernale', 'Secretary', '0908232322', 'abelgernale17@gmail.com', 'Pulido GMA Cavite', 0, 1, 'anna', 'anna', 'a70f9e38ff');

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
(3, 10001, 10001, 'Quotation was created for project request : <b>The Tallest House</b>', 'http://localhost/Maron/client_notif/view/10002', 'December 28, 2017', 1),
(4, 10001, 10001, 'Quotation was created for project request : <b>The Tallest House</b>', 'http://localhost/Maron/client_notif/view/10003', 'December 28, 2017', 1),
(5, 10001, 10001, 'Quotation was created for project request : <b>My Pushcart</b>', 'http://localhost/Maron/client_notif/view/10004', 'December 30, 2017', 1),
(6, 10001, 10001, 'Project : My Dream House was set to <b>Ongoing</b>', 'http://localhost/Maron/site/projects/10001', 'December 30, 2017', 1),
(7, 10001, 10001, 'Project : My Dream House was set to <b>Finished</b> <br>Call us for more information.', 'http://localhost/Maron/site/projects/10001', 'December 30, 2017', 1);

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
(10017, 'Paint black', 'White paint', 'Box', '100', 'white', 222, 1, 222, 3, 'Critical', 0),
(10018, 'new item', 'blahblah', 'Pieces', '100', 'black', 222, 22, 2333, 2, 'Normal', 0);

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
(1, 10003, 'Admin123', 'Paint', 'White paint', 'Box', '100', 'white', 222, 1, 222, 'Inventory', '2017-12-28', 0);

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
  `dateOccur` varchar(25) NOT NULL,
  `link` text NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `userImage`, `userID`, `description`, `type`, `dateOccur`, `link`, `is_deleted`) VALUES
(5, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House', 'activitylog', '2017-12-28', 'projects', 1),
(6, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House', 'activitylog', '2017-12-28', 'projects', 0),
(8, 'uploads/accounts/roel.jpg', 10002, 'New project The Tallest House', 'project', '2017-12-28', 'quotation', 0),
(9, 'uploads/accounts/roel.jpg', 10001, 'Add New project The Tallest House', 'activitylog', '2017-12-28', 'quotation', 1),
(10, 'uploads/accounts/roel.jpg', 10002, 'Add New project The Tallest House', 'activitylog', '2017-12-28', 'quotation', 0),
(11, 'uploads/accounts/roel.jpg', 10001, 'Add New Quotation The Tallest House', 'activitylog', '2017-12-28', 'projects', 1),
(12, 'uploads/accounts/roel.jpg', 10002, 'Add New Quotation The Tallest House', 'activitylog', '2017-12-28', 'projects', 0),
(14, 'uploads/accounts/roel.jpg', 10002, 'Add new item Paint', 'inventory', '2017-12-28', 'inventory', 0),
(15, 'uploads/accounts/roel.jpg', 10001, 'Added 3 Pieces of 1 to project ', 'activitylog', '2017-12-28', 'project/project_view/10001', 1),
(16, 'uploads/accounts/roel.jpg', 10002, 'Added 3 Pieces of 1 to project ', 'activitylog', '2017-12-28', 'project/project_view/10001', 0),
(18, 'uploads/accounts/roel.jpg', 10002, 'Project My Dream House has zero profit', 'project', '2017-12-28', 'project/project_view/10001', 0),
(19, 'uploads/accounts/roel.jpg', 10001, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-28', 'project/project_view/10001', 1),
(20, 'uploads/accounts/roel.jpg', 10002, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-28', 'project/project_view/10001', 0),
(22, 'uploads/accounts/roel.jpg', 10002, 'Project My Dream House has zero profit', 'project', '2017-12-28', 'project/project_view/10001', 0),
(24, 'uploads/accounts/roel.jpg', 10002, 'Project The Tallest House has zero profit', 'project', '2017-12-28', 'project/project_view/10003', 0),
(25, 'uploads/accounts/roel.jpg', 10001, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-28', 'project/project_view/10003', 1),
(26, 'uploads/accounts/roel.jpg', 10002, 'Updated Transportation from  to  to project ', 'activitylog', '2017-12-28', 'project/project_view/10003', 0),
(30, 'uploads/accounts/roel.jpg', 10002, 'Add new item new item', 'inventory', 'December 30, 2017', 'inventory', 0),
(35, 'uploads/accounts/abel.jpg', 10002, 'Project The Tallest House has zero profit', 'project', 'December 30, 2017', 'project/project_view/10003', 0);

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
(10001, 10001, 'Flooring', 'Tiles/ 4x4', 'every 2 inch height will have 4 tiles'),
(10002, 10001, 'Sealing', 'Roof / Blocks', 'there will be a rooftop '),
(10003, 10002, 'flooring', 'tiles', 'every inches must good'),
(10004, 10002, 'walling', 'cement', 'must be 3 inchesthick'),
(10005, 10003, 'welding', 'imported filler, gold filler', 'must be no leakage'),
(10006, 10004, 'florro', 'asd', 'asd');

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
(10001, 10001, 'uploads/products/Machine Rewinding.png'),
(10002, 10002, 'uploads/products/Push carts.png'),
(10003, 10003, 'uploads/products/Sofa Holder.png'),
(10004, 10004, 'uploads/products/multi.png');

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
(10001, 'Motor Rewinding', 'We handle some sort of machine failures and rewinding.?', 0),
(10002, 'Push Carts', 'Push carts\r\nSpecs :\r\nHeight: 4.5 ft ;\r\nWeight : 5kg;', 0),
(10003, 'Sofa Holder', '4 legged Soffa Holder\r\n316 Stainless', 0),
(10004, 'Kitchen helper', '4 wheeled Kitchen Helper\r\nwith maintenance.', 0);

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
(10001, 10001, 10001, 677, 0, 'Finished', 'uploads/projects/c2.jpg', 10002, 0),
(10003, 10003, 10001, 232, 0, 'Pending', 'uploads/projects/teams.jpg', 10001, 0),
(10004, 10004, 10001, 0, 46, 'Pending', 'uploads/projects/fabrication3.PNG', 10001, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `quotation_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `created_by` varchar(30) NOT NULL,
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

INSERT INTO `tbl_quotation` (`quotation_id`, `client_id`, `created_by`, `date_created`, `terms`, `completion`, `project_name`, `project_address`, `scope_of_work`, `material_cost`, `worker_cost`, `transpo_cost`, `bill_of_quantities`, `estimated_cost`, `terms_and_condition`, `date_started`, `expected_finished`, `status`, `is_deleted`) VALUES
(10001, 10001, 'Admin123', '2017-12-13', 11, 10, 'My Dream House', 'Philippines, Cavite , GMA , San Jose', '2 Storey Commercial House', 25, 25, 0, ' <table class=''table''><thead><tr><th rowspan=''2'' class=''center''>ITEM NO</th><th rowspan=''2'' class=''center''>DESCRIPTION</th><th rowspan=''2'' class=''center''>QTY</th><th rowspan=''2'' class=''center''>UNIT</th><th colspan=''3''  class=''center''>UNIT COST</th><th rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr><th class=''center''>MATERIALS</th><th class=''center''>LABOR</th><th class=''center''>TOTAL</th></tr></thead>  <tbody><tr><td><b>A</b></td><td colspan=''8''><b>Preliminary</b></td></tr><tr><td>1</td><td>23</td><td>2.00</td><td>Lot</td><td>2.00</td><td>2.00</td><td>4.00</td><td>4.00</td></tr><tr><td><b>B</b></td><td colspan=''8''><b>Materials</b></td></tr><tr><td>1</td><td>23</td><td>23.00</td><td>Box</td><td>23.00</td><td>23.00</td><td>46.00</td><td>46.00</td></tr><tr><td colspan=''7''><b>Grand Total</b></td><td colspan=''2''>50</td></tr></tbody></table>', 50, '1111', '', '', 'Approved', 0),
(10003, 10001, 'Admin123', '2017-12-28', 0, 0, 'The Tallest House', 'Philippines , Cavite , GMA , Sanjose', 'The tower of Sanjose', 23, 23, 46, '<table class=''table'' style=''border: 1px solid grey;''><thead><tr style=''border: 1px solid grey;''><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>ITEM NO</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>DESCRIPTION</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>QTY</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>UNIT</th><th style=''border: 1px solid grey;'' colspan=''3''  class=''center''>UNIT COST</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr style=''border: 1px solid grey;''><th style=''border: 1px solid grey;'' class=''center''>MATERIALS</th><th style=''border: 1px solid grey;'' class=''center''>LABOR</th><th style=''border: 1px solid grey;'' class=''center''>TOTAL</th></tr></thead>  <tbody><tr style=''border: 1px solid grey;''><td style=''border: 1px solid grey;''><b>A</b></td><td style=''border: 1px solid grey;'' colspan=''8''><b>Supply And Installation</b></td></tr><tr><td style=''border: 1px solid grey;''>1</td><td style=''border: 1px solid grey;''>213</td><td style=''border: 1px solid grey;''>32.00</td><td style=''border: 1px solid grey;''>Pieces</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>46.00</td><td style=''border: 1px solid grey;''>46.00</td></tr><tr style=''border: 1px solid grey;''><td style=''border: 1px solid grey;''><b>B</b></td><td style=''border: 1px solid grey;'' colspan=''3''><b>Transportation</b></td><th style=''border: 1px solid grey;''>Fuel</th><th style=''border: 1px solid grey;'' colspan=''3''>Toll Gates</th></tr><tr><td style=''border: 1px solid grey;''>1</td><td style=''border: 1px solid grey;''></td><td style=''border: 1px solid grey;''>0.00</td><td style=''border: 1px solid grey;''></td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>46.00</td><td style=''border: 1px solid grey;''>46.00</td></tr><tr style=''border: 1px solid grey;''><td style=''border: 1px solid grey;'' colspan=''7''><b>Grand Total</b></td><td style=''border: 1px solid grey;'' colspan=''2''>92</td></tr></tbody></table>', 92, '', '', '', 'Approved', 0),
(10004, 10001, 'Admin123', '2017-12-30', 11, 11, 'My Pushcart', 'San Jose, GMA , Cavite', '5Ft. stainless pushcart with net.', 23, 23, 0, '<table class=''table'' style=''border: 1px solid grey;''><thead><tr style=''border: 1px solid grey;''><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>ITEM NO</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>DESCRIPTION</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>QTY</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>UNIT</th><th style=''border: 1px solid grey;'' colspan=''3''  class=''center''>UNIT COST</th><th style=''border: 1px solid grey;'' rowspan=''2'' class=''center''>TOTAL COST</th></tr><tr style=''border: 1px solid grey;''><th style=''border: 1px solid grey;'' class=''center''>MATERIALS</th><th style=''border: 1px solid grey;'' class=''center''>LABOR</th><th style=''border: 1px solid grey;'' class=''center''>TOTAL</th></tr></thead>  <tbody><tr style=''border: 1px solid grey;''><td style=''border: 1px solid grey;''><b>A</b></td><td style=''border: 1px solid grey;'' colspan=''8''><b>Materials</b></td></tr><tr><td style=''border: 1px solid grey;''>1</td><td style=''border: 1px solid grey;''>qwe</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>Lot</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>23.00</td><td style=''border: 1px solid grey;''>46.00</td><td style=''border: 1px solid grey;''>46.00</td></tr><tr style=''border: 1px solid grey;''><td style=''border: 1px solid grey;'' colspan=''7''><b>Grand Total</b></td><td style=''border: 1px solid grey;'' colspan=''2''>46</td></tr></tbody></table>', 46, 'no terms and condition', '12/19/2017', '12/28/2017', 'Approved', 0);

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
(10001, 10001, 'My Dream House', 'Philippines, Cavite , GMA , San Jose', '2 Storey Commercial House', 'December 13, 2017', 2),
(10002, 10001, 'The Tallest House', 'Philippines , Cavite , GMA , Sanjose', 'The tower of Sanjose', 'December 28, 2017', 2),
(10003, 10001, 'My Pushcart', 'San Jose, GMA , Cavite', '5Ft. stainless pushcart with net.', 'December 30, 2017', 2),
(10004, 10001, 'something', 'addresss', 'okok', 'December 30, 2017', 0),
(10005, 10001, 'asd', '', '', 'December 30, 2017', 0),
(10006, 10001, '', '', '', 'December 30, 2017', 0);

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
(10001, 10001, 'uploads/services/fabrication.jpg'),
(10002, 10002, 'uploads/services/construction.PNG'),
(10003, 10003, 'uploads/services/interior.JPG'),
(10004, 10004, 'uploads/services/carpentry.jpg'),
(10005, 10005, 'uploads/services/plumbing.jpg'),
(10006, 10002, 'uploads/services/construction2.PNG'),
(10007, 10002, 'uploads/services/construction3.PNG'),
(10008, 10001, 'uploads/services/fabrication3.PNG'),
(10009, 10001, 'uploads/services/fabrication2.PNG'),
(10010, 10003, 'uploads/services/d2.PNG'),
(10011, 10003, 'uploads/services/d1.PNG'),
(10012, 10003, 'uploads/services/d3.PNG'),
(10013, 10005, 'uploads/services/p1.PNG'),
(10014, 10004, 'uploads/services/c1.PNG');

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
(10001, 'Fabrication', 'We handle arc and Stainless Fabrications.\r\nEach project is undertaken by an ad-hoc team which is led\r\nby Project Engineer. For a complex project involving a sensitive\r\nclient – firm relationship, a Project Manager supervises the Project\r\nEngineer and his technical staff. When a project requires several\r\nalternatives, the most feasible one is chosen without compromising\r\nquality output.\r\nThe Company team member understands the importance of cooperation\r\nand coordination. The availability of varied expertise\r\nwithin the organization has been proven to be beneficial in the\r\nsuccessful execution of projects.\r\nTo maintain and improve the firms quality of work and to\r\nkeep abreast to the new development in construction and state –\r\nof-the art technologies thereof, members of the technical staff are\r\nconstantly trained in the trends in their respective fields.', 0),
(10002, 'Construction', 'Our company provides consultancy and advisory to starting and existing Biomedical Engineering\r\nteam, and work with hospital Facilities Directors, Biomedical Engineering Managers,\r\nClinical Engineering Managers, Healthcare Technology Managers, Quality Directors,\r\nInfection Control Officers, Risk Management Officers and Pollution Control Officers to develop\r\na comprehensive Medical Equipment Management Plan, Program, Policies and Procedures\r\nfor compliance of Local (DOH, Philhealth) and International Standards (JCI, ISO).\r\nWill also provide trainings on how to set up an In-House Biomedical Engineering team, how\r\nto implement plan, policies and procedures effectively, how to pass compliance for local\r\nand international accreditation, and how to sustain accreditation compliance.\r\n', 0),
(10003, 'Interior Designing', 'We also cater hospital design on Architectural and MEPF, medical equipment planning, Design\r\nand Construct of Cleanroom for Operating Rooms, Molecular Laboratories, and Stem\r\nCell Rooms, Isolation Rooms-Negative and Positive Pressure Rooms, Design and Construct\r\nof Medical Gas Piping, Nurse Call Systems, Infant Protection Systems, Pneumatic Tube Systems,\r\nDesign and Project Management for High End Medical Equipment such as Xray Machine,\r\nMammo, Angio, CT Scanner, MRI, LINAC, Laboratory, and Data Centers, Reverse Osmosis\r\nSystem, PABX and I.T. System.\r\nWe also provide third party support for your preventive maintenance, performance verification\r\nand calibration of infusion pumps, defibrillators, anesthesia machines, physiologic\r\nmonitors, ventilators, etc.\r\nWe will also assist you on sending your test equipment for calibration abroad.', 0),
(10004, 'Carpentry', 'We also handle capentry works.', 0),
(10005, 'Plumbing', 'We also done over all plan installation and maintenance of plumbing works.', 0),
(10006, 'Other Services', '<p>\r\n\r\nOur company provides consultancy and advisory to starting and existing Biomedical Engineering\r\nteam, and work with hospital Facilities Directors, Biomedical Engineering Managers,\r\nClinical Engineering Managers, Healthcare Technology Managers, Quality Directors,\r\nInfection Control Officers, Risk Management Officers and Pollution Control Officers to develop\r\na comprehensive Medical Equipment Management Plan, Program, Policies and Procedures\r\nfor compliance of Local (DOH, Philhealth) and International Standards (JCI, ISO).\r\nWill also provide trainings on how to set up an In-House Biomedical Engineering team, how\r\nto implement plan, policies and procedures effectively, how to pass compliance for local\r\nand international accreditation, and how to sustain accreditation compliance.\r\nOUR PARTNERS\r\nWe also cater hospital design on Architectural and MEPF, medical equipment planning, Design\r\nand Construct of Cleanroom for Operating Rooms, Molecular Laboratories, and Stem\r\nCell Rooms, Isolation Rooms-Negative and Positive Pressure Rooms, Design and Construct\r\nof Medical Gas Piping, Nurse Call Systems, Infant Protection Systems, Pneumatic Tube Systems,\r\nDesign and Project Management for High End Medical Equipment such as Xray Machine,\r\nMammo, Angio, CT Scanner, MRI, LINAC, Laboratory, and Data Centers, Reverse Osmosis\r\nSystem, PABX and I.T. System.\r\nWe also provide third party support for your preventive maintenance, performance verification\r\nand calibration of infusion pumps, defibrillators, anesthesia machines, physiologic\r\nmonitors, ventilators, etc.\r\nWe will also assist you on sending your test equipment for calibration abroad.\r\nOTHER SERVICES:\r\nHealthcare Facilities Management:\r\n1. Audits for Building and Grounds, Mechanical, Electrical, Plumbing, Fire Protection, and\r\nAuxiliary System.\r\n2. Permit Assistance for Quezon City companies\r\n3. Electronics Permit Sign and Sealed services for LGU and PEZA requirements\r\n\r\n<br></p>', 0);

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
(1, 10003, 'roel rivera longcop', '2', '2', 2, '2', '2017-12-30', 0);

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
(1, 10003, 'Admin123', '2', 2, 2, 2, 8, '2017-12-28', 0);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_bill_title`
--
ALTER TABLE `tbl_bill_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `tbl_client_notification`
--
ALTER TABLE `tbl_client_notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_inventorymaterial`
--
ALTER TABLE `tbl_inventorymaterial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10019;
--
-- AUTO_INCREMENT for table `tbl_materialexpenses`
--
ALTER TABLE `tbl_materialexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_personnels`
--
ALTER TABLE `tbl_personnels`
  MODIFY `personnel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
--
-- AUTO_INCREMENT for table `tbl_preference`
--
ALTER TABLE `tbl_preference`
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `product_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;
--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `tbl_service_images`
--
ALTER TABLE `tbl_service_images`
  MODIFY `service_image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10015;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
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
  MODIFY `preference_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_transportexpenses`
--
ALTER TABLE `tbl_transportexpenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_work_description`
--
ALTER TABLE `tbl_work_description`
  MODIFY `work_des_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
