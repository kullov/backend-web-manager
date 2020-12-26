-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2020 at 04:34 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability`
--

DROP TABLE IF EXISTS `ability`;
CREATE TABLE IF NOT EXISTS `ability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg8d596496wa4jxiv2nr4ror1n` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ability`
--

INSERT INTO `ability` (`id`, `name`, `description`, `type_id`) VALUES
(3, 'Java', 'programming HTTP Borders', NULL),
(4, 'PHP', 'CSS unleash haptic', NULL),
(5, 'HTML', 'Chicken', NULL),
(6, 'CSS', 'solution-oriented District Central', NULL),
(7, 'English', 'application', NULL),
(8, 'Node JS', 'Union', NULL),
(9, 'interactive calculate', 'Dominican Republic Computers', NULL),
(10, 'alliance maximize tan', 'Dam', NULL),
(11, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ability_category`
--

DROP TABLE IF EXISTS `ability_category`;
CREATE TABLE IF NOT EXISTS `ability_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ability_category`
--

INSERT INTO `ability_category` (`id`, `name`) VALUES
(1, 'Computer Denar'),
(2, 'SQL Overpass'),
(3, 'Mongolia 1080p'),
(4, 'unleash'),
(5, 'withdrawal Customizable strategic'),
(6, 'Somalia'),
(7, 'recontextualize'),
(8, 'out-of-the-box'),
(9, 'Cook Islands hard drive Delaware'),
(10, 'Checking Account');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

DROP TABLE IF EXISTS `intern`;
CREATE TABLE IF NOT EXISTS `intern` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `organization_intern_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3lfjmnd7ng99wd1wo25d64o0` (`organization_intern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `code`, `first_name`, `last_name`, `date_of_birth`, `join_date`, `class_name`, `avatar`, `password`, `email`, `phone`, `description`, `address`, `organization_intern_id`) VALUES
(1, 9022, 'Albina', 'Hessel', '2020-05-03 11:33:52', '2020-05-03 09:35:51', 'process improvement overriding Outdoors', 'Nga', 'back-end', 'Talia5@hotmail.com', 6440, 'bandwidth De-engineered', 'Cross-platform', NULL),
(2, 57808, 'Lucius', 'Williamson', '2020-05-03 07:14:34', '2020-05-03 02:19:31', 'Keyboard Saint Helena invoice', 'withdrawal Fresh', 'withdrawal markets array', 'Earline_Johns42@hotmail.com', 20278, 'RSS Direct', 'XSS Toys', NULL),
(3, 20189, 'Viva', 'Sporer', '2020-05-03 23:53:20', '2020-05-03 02:03:11', 'Future-proofed Savings Account white', 'hacking', 'Balboa US Dollar', 'Jewel84@hotmail.com', 71202, 'Cayman Islands Dollar Bike', 'Sleek pixel payment', NULL),
(4, 69835, 'Brennon', 'White', '2020-05-03 23:56:59', '2020-05-03 17:16:29', 'data-warehouse Ergonomic Wooden Bike communities', 'Kids Sausages', 'Grocery Small', 'Dax93@gmail.com', 92425, 'override', 'harness sensor', NULL),
(5, 18482, 'Raphaelle', 'Kuhic', '2020-05-03 13:31:42', '2020-05-03 23:43:53', 'Gloves payment e-markets', 'integrated open-source', 'Quality Computers transition', 'Bette13@gmail.com', 90103, 'Credit Card Account vortals', 'Personal Loan Account Investor', NULL),
(6, 98455, 'Louvenia', 'Auer', '2020-05-03 02:57:06', '2020-05-03 16:27:06', 'withdrawal', 'pink', 'mindshare Global Electronics', 'Rory32@hotmail.com', 51478, 'zero defect Home Loan Account', 'West Virginia Cook Islands', NULL),
(7, 91680, 'Maya', 'Jerde', '2020-05-03 03:00:48', '2020-05-03 01:06:24', 'HDD', 'Handmade Soft', 'Parkways Health Tugrik', 'Marlin_Kris@hotmail.com', 25653, 'Home matrix', 'portal Indian Rupee web-readiness', NULL),
(8, 16048, 'Raleigh', 'Kuvalis', '2020-05-03 16:05:03', '2020-05-03 09:53:08', 'Silver Hat Designer', 'back-end', 'IB upward-trending calculate', 'Reanna.Rogahn93@yahoo.com', 98060, 'Profit-focused', 'Kids Granite transparent', NULL),
(9, 12787, 'Ryann', 'Yost', '2020-05-03 08:53:16', '2020-05-03 11:37:48', 'composite New York Spur', 'USB', 'Organic quantify transform', 'Edwin_Gerhold25@yahoo.com', 5156, 'bluetooth', 'plum Rustic Granite Pizza Illinois', NULL),
(10, 39146, 'Lyla', 'Robel', '2020-05-03 08:40:17', '2020-05-03 08:01:08', 'Future-proofed', 'cohesive', 'cutting-edge Gorgeous Rubber Shirt', 'Damien.Kuphal83@yahoo.com', 95134, 'Table Savings Account invoice', 'Turnpike green', NULL),
(11, 554161, 'Nga', 'Tran', '1998-12-18 17:00:00', NULL, 'K61A3', 'https://d3av3o1z276gfa.cloudfront.net/images/place/2cJZUQVLtRK9fdXPWLLtXSAlebBSUCHs.jpeg', '$2a$10$qbzVJ7AYUnFouI.9Iukj1ub4qFaqtcazOEl.6Gqm1LIME9rYCeF6K', 'intern@gmail.com', 964951802, 'Năng động, hoạt bát. tích cực tham gia các hoạt động.', '334 Nguyễn Trãi, Thanh Xuân, Hà Nội', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intern_intern_ability`
--

DROP TABLE IF EXISTS `intern_intern_ability`;
CREATE TABLE IF NOT EXISTS `intern_intern_ability` (
  `intern_ability_id` bigint(20) NOT NULL,
  `intern_id` bigint(20) NOT NULL,
  PRIMARY KEY (`intern_id`,`intern_ability_id`),
  KEY `FK8brbjeq9on85y7slhyfugbym4` (`intern_ability_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_count` int(11) DEFAULT NULL,
  `gross_revenue` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `employee_count`, `gross_revenue`, `name`, `tax_number`, `password`, `email`, `contact`, `description`, `address`) VALUES
(1, 688, 'Newwave Solutions', 'Newwave Solutions', 'Towels infrastructure', 'orchid payment Ergonomic', 'Clifton_Bailey@hotmail.com', 'Small', 'wireless Belarussian Ruble', 'Tầng 4, tòa nhà Mitec, Dương Đình Nghệ, Hà Nội'),
(2, 55, 'FPT Sofware', 'FPT Sofware', 'withdrawal', 'global', 'Lowell_Von@gmail.com', 'Sleek Wooden Car Sharable', 'Creative', '17 Phố Duy Tân, Dịch Vọng Hậu, Cầu giấy, Hà Nội'),
(3, 110, 'FPT IS', 'FPT IS', 'white 1080p', 'Multi-lateral', 'Katheryn24@yahoo.com', 'programming', 'capacitor Jamaican Dollar', '641 (36 cũ, Phạm Văn Đồng, Cổ Nhuế, Từ Liêm, Hà Nội'),
(4, 382, 'deposit cross-platform', 'Canada Yemeni Rial Rustic', 'calculating Generic', 'redundant blue robust', 'Scot_Adams@gmail.com', 'parse quantifying bypass', '1080p', 'deposit plum'),
(5, 522, 'Grocery Fantastic Wooden Fish', 'North Carolina Vision-oriented Multi-channelled', 'Sri Lanka bypass', 'Manager', 'Zion_Sporer48@yahoo.com', 'Handcrafted Wooden Car Villages Program', 'Rustic Swedish Krona', 'Generic Frozen Pizza'),
(6, 164, 'hack Wells Florida', 'National parsing', 'Beauty', 'Metrics', 'Forrest_Herman@hotmail.com', 'ivory interface olive', 'Supervisor', 'Idaho Concrete'),
(7, 756, 'Guarani high-level', 'impactful', 'hierarchy deposit Auto Loan Account', 'frame Representative leading edge', 'Bria.Marks@hotmail.com', 'Yemen Oklahoma', 'Distributed quantifying User-friendly', 'Fresh pink green'),
(8, 842, 'Tools contextually-based JBOD', 'portals online', 'Incredible Steel Shirt', 'Moldovan Leu optical', 'Allene33@hotmail.com', 'array Rubber', 'Response', 'Buckinghamshire'),
(9, 8762, 'VNPT', 'VNPT', 'deposit cross-media Metal', 'payment Credit Card Account Awesome', 'Marcelino.Torphy20@gmail.com', 'bus', 'payment model', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam'),
(10, 596, 'interface maximized', 'Rue payment quantifying', 'Incredible', 'sky blue Integration', 'Kevon86@yahoo.com', 'alarm hacking methodical', 'SAS Senior', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam'),
(11, 50, NULL, 'DSS', 'eLiHYI', '$2a$10$P4NLSija1kxK7WqMSTEUPuWPZP3JJJzIZHRbScqmyoyz/29gZvufy', 'comany@gmail.com', NULL, NULL, NULL),
(12, 90, NULL, 'BeeSoft', 'RTweJ7', '$2a$10$2b7c56cl4vXWnZK7zlWzrO1nQn8SmmjHrhtPIekov44yp4cWe5Tni', 'comany@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register_request`
--

DROP TABLE IF EXISTS `register_request`;
CREATE TABLE IF NOT EXISTS `register_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `intern_register_id` bigint(20) DEFAULT NULL,
  `request_register_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `request_status_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2agnitn0e83xvyxwhy93sxlgi` (`intern_register_id`),
  KEY `FKqmiygfc08vfl7mnbxpl1vqmds` (`request_register_id`),
  KEY `FKp42ukdey0ko912dlkxju3wy70` (`request_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_request`
--

INSERT INTO `register_request` (`id`, `date_created`, `start_date`, `end_date`, `intern_register_id`, `request_register_id`, `status`, `request_status_id`) VALUES
(1, '2020-06-14 17:00:09', '2020-06-09 17:00:00', '2020-09-29 17:00:00', 1, 4, NULL, 1),
(11, '2020-06-14 17:00:49', '2020-05-31 17:00:00', '2020-07-30 17:00:00', 1, 2, NULL, 1),
(12, '2020-06-14 17:01:07', '2020-05-31 17:00:00', '2020-08-30 17:00:00', 1, 1, NULL, 3),
(14, '2020-06-17 03:21:14', '2020-05-31 17:00:00', '2020-06-29 17:00:00', 11, 19, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `request_status_id` bigint(20) DEFAULT NULL,
  `organization_request_id` bigint(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe1bb9i0t07irwwerrmxftv4na` (`organization_request_id`),
  KEY `FKaogp8mhbxmbjse7m6ud6yrec2` (`request_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `position`, `amount`, `date_created`, `status`, `description`, `type`, `request_status_id`, `organization_request_id`, `avatar`) VALUES
(1, 'Java Spring Boot', 8, '2020-05-03 23:22:15', 1, '24/365', 'Tasty Steel Soap quantifying District', NULL, 1, 'https://newwave.vn/wp-content/uploads/2018/12/15875037_751901071624876_248931472081814559_o.jpg'),
(2, 'PHP', 10, '2020-05-03 17:56:31', 6, 'solid state Lakes', 'vortals', NULL, 1, 'https://previews.123rf.com/images/designer491/designer4911504/designer491150400038/38737450-tablet-with-php-developer-on-job-search-site-.jpg'),
(3, 'Node JS', 3, '2020-05-03 06:37:29', 2, 'interactive', 'Garden Arkansas Architect', NULL, 2, 'https://caodang.fpt.edu.vn/wp-content/uploads/tuyen-dung-3-1.jpg'),
(4, 'Frontend VueJS', 5, '2020-05-03 04:42:40', 4, 'Kids', 'Group', NULL, 2, 'https://caodang.fpt.edu.vn/wp-content/uploads/tuyen-dung-3-1.jpg'),
(9, 'Tester', 12, '2020-05-03 16:57:42', 4, 'RSS', 'Directives TCP', NULL, 9, 'https://i.ndh.vn/2019/08/27/vnpt1-1566892537.png'),
(15, 'Backend', 6, '2020-05-03 16:57:42', 5, '123456', 'partime', NULL, 1, 'https://newwave.vn/wp-content/uploads/2018/12/15875037_751901071624876_248931472081814559_o.jpg'),
(19, 'Frontend', 1, NULL, 1, NULL, 'fulltime', NULL, 2, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIWFRUVFRkWGBcWGRcXHRUYGBYXFxcYGBUYHSggGhslHRcWITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGhAQGy0hHSUtLSsuLS0tLS0uLS0tLS0tLS4vLS0tLS0tLi0tKy0tLS0tLS0tLS0tLS0vLS0tLS0tLf/AABEIALEBHAMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xABFEAACAQIEBAMEBwUHAwMFAAABAhEAAwQSITEFBkFREyJhMnGBkQcUI0JSobFicpPB0RUXM1Oy4fBDgvE0kqIWJFRzg//EABoBAQEAAwEBAAAAAAAAAAAAAAABAgMEBQb/xAAtEQACAgEDAgMIAgMAAAAAAAAAAQIRAwQhMRJBMlFxBRMigZGhsfFC0SMzYf/aAAwDAQACEQMRAD8A7DR0KOqAUKOhVAKFHQqAFGBQApxFoBJsA7iarcRw9Q0n2T2q2Jpu4dD7q5dRpcOVXOKdbmzHklF7MzPFOH222JqhTl9Uui6LhGUyIG5HetFfMVDxF0ZQa+JWqyOblH4b7Lg9SOnhKrV/9IfFOabmFvIjLmQiXIGpJ7ax2rV8F4pbxCC5bMg9DuD2I6VU3+F2MYoz+3liRoV9aVy/ywmEYutxzI1BiD8Ir7XTznNKS3izyZxcZNMZ5r4alx0ZlzFSSI03EHUa9AagpfxQhkKPbCgZLhysT1yv/XrWn4th86x16H1rPtw0i1kVid5kSTJkgD3+6ubVR1EMyniVrurMsai76mSOH8Yt3G8Mzbuje2+h+B2Ye4mrYLXPuM4ibISQVBIjKpht9++h2Puq74PxdlChC2ItyFIIi6hg6iYFxJDCdxHWt+DVqbqSpmCdmutLSb1qJPfT31V4vmG3bygI5ZmC5Cjodp0lYmrjPmgnTrB79q64zjJ0iMoObOWlx1pbLOyZWDhlAOoDLBB3EMeo2FU/DeUL+GxK4lLy4jJYFlUvfZkKAogOgIEQY8vXUnetDieYcPbvtZe5lcWzc9liAihmZiwECAp3/nVDxTEjF4uy2Hvzawtq5futafQsYFu2xU9chJB6A962A0P9uIml9Hw573AMn8ZSUHxIPpUd+Pm3dZb1l0skjw8QsXLbCAZcrJtazq2mm4rLcs853TaU3iLluzZL4q+RBDMx8K2gUAM8ZRHUk66a2PBOI4TEs3gi9groTxo8toNbMHxcktacajUidaA2CsCAQQQRII1BHcGiNVNo4i0JCW8Qh1m1Fpz65GPhuT3zL7qcHGbbSgJS9By27oNpmIGgUPAYTGqkj1qA5Z9J3MX1i/4Fs/ZWCQY2e7sx9y6qP+7vWNu3CxBYzACj0CgKB8hUvifCMRhjlxFl7Z2lhoT6OPK3wNQgPj7qyMzZfRfwPx8V4zCbeHhtdjcP+GPhBb/tHeu0KKpOS+B/U8Klojznz3D+224+Ahf+2r4VGYtgihRMwG5A1A101JgD51TY7idy3dX2DbJURMOJ3LZjERB6RUIXJFc4+kXkZrzHFYVRn1N23tngTnX9vSCOunXfoti6HUMux76flSiKIqZ5u4dw8XVc5vMNFUQJc+wGZyFhoKgAliekA0jCYRHWWdwZ2W0Xj3nMNfT3VvudOVmwt04mwxt4e632kAHwLhDZHBIOVMze0NVzNG4rGcX4SVufY2/syqssEkQVB0ZvaHWQSNSJMVkZno2joUdYGsFCjoUKCjihSlFCAVaWaPakMaAJjUDimPtWrZe9cW2m2ZjGp2A7n0FOcQxqWbbXbjBUQFmJ6Af82rgvN3MtzHXixlbayLafhHc92PX5dKkoqUWnwyrnY6vZ4jYvHLbv23nUANqfhvT68PznLEFRIP8AKuXcL5TxPgLjFuCzrNsGQzL+IEbDtO4+E9A5V45dYMrulxoVhGhWdGUjqNN+818zP2Vgw5V1S+Hy7/Y746qTVR5NFw+0LekQetWIamHXMB0P6UhXKmG+fevo8OKOOChHhHFOTlJtii26H4etQMS0EHWe8TP7w/nUzE7ZhUQEtJ9fmK2MwM9juEZ2ZrZTUgsragMJ1AmRqdRtVvatFHBUADKVA21PUD5/OpIsJ+EAzOw3PwpFyyxjQEgyCBHTf0rzNVpYr/LCFyXk2uTfha3i3SYTDLqzDMNp11qRwhDDXGILMY2gCBGgJMdaiDAy0ux06T+pq2wwEaU0MMzdzj0xXEe/qzLP0fxdvuyJj+X7F3xSyZXvWzae4sByhjSY9B06VWcP5UGGwl3DWH817NNxhqA3lmBuVXYaAntNakbU21eocxy7mvhIwuDweADBEvXx414wqkiJZidt5E9LY7VRYnGZrWLxSAg4m4uCw6xtaGXMAO2RLSe9jXZcVhkuKUuIrqd1YBgfeDpVHxvlO1f8EozWGw5mz4YTKhkNPhkZTqoPTaqWzCcv4x8Hbxd+3mt2rNkWPCdgxOMlFLm3JC+bOdNCPcY0XL/MrYgvhsfassFwwxDOBKBCFbLcRpAfK4OnrR4b6Px4a2Lt4uhutfusBla7cjLbWCTCgFydSSW6VmONYN8HbuYMoFbGYl3JsJmK4RCGhYEkCWOXoFPegNpwe9h8UjfUcSwUAZ7N1TdQZpgNau+ZRoYCMBoajYHlPDnFK7YZEay8lsPcBtZ1AZRcsvBtt5lYBQRtJqDyDw21fwuLlYtYm8yqoJWLVsDLqpB0zQe599anDIli2tm1IRdpJYkkyWZjqWJJJPrWMpJFSbLjxRSlcGqcXjUmxerBTsycBrEYO83ih2VxcgWxBAtx1MmJ6zvI+AawpWyVs3EXM/kUrJLDMzAk7qgGvmMzIEwCbu000xd4cmY3AIY7sN+mmvuHyHas7MCJgXIyqtsW1BKlSRsNVIIJGokxvrr3NjVTiuG3PEW5afKRAaSxUjXXw5iZJ669T1ErDMEPhfaMQM2ZgxBliD5yMs9co2BECKpB+/ZV1KOoZWBVlIkEEQQR1Fc/4tyffFwjDljbgZZv30IgRBCOJOk5jJMyT26GTSTQpJo6KjFQgdChRigABToEUSis/wAe46yObVkAuiG5dYqWW1bAnVV1LHoP/IAv2NNMaqeD8dS8EViFvG2txrU6qG7TvpBjcAid6Pmdn+qYg25z+C+WN/ZO3rExVByv6Sea/rNw4e032NttSP8AquNJ9VHT59ojfR/yr9aueNeEYe0dZ/6jb5B6dW+XXTS2OVMH4K+UNMEtOuuu4qbxLiy27VuxhkC2EWGgde36knck/Plnq4RTffy8xdEzHYvx2K7IDlUdANp0qm5I4U4xmJvbWRFpANnKgFiD2Bke9j2pWDxZcQgn3Vq+XkPhCRB10+PX1rg0M/e5JdatvcsW+S6Q0bKCINEtReI4vIMq+023p617JAhdAYpMxTgsxttTGBwca9f1qxUVCsj0WYdxUkoDSGtVSFcuUudYBMdszbwJ9J29doqcH7VU8V4aATdUHRXzZXKEEgQ6tMCIkjQHcyVAqdgbjMil0KMQCVMSNB0BPeKiVFJgehNJApVUgVACkvcCgsxAAEknYCkYTFLcXMhkeoIInUSDqNNaAdIpnEYZHEOoOhHqAwytB3EgkaVIojQGe/s+zgbIt2QVUzALE5RmZjqdd2O/p2FVicUtEx4qE9swqv8ApZusPq6gkKQ8x1IK/wBTXOSK5MrbkduKC6bOyW7tTLDVzPlPjjI4tOSUYwJ+6enwro+GNYwk7pmM40XOGNTVEiq/DVYW66kczIxNEao+Kc14OzeazdxKK4MEebyzr5iBC79TVtavBgGUhgRIIMgg7EEb1mQdNNs1KJpi4DPf3GgLKjoqMVCBilqtEgpriGLFq2zkEhRsNST0A99AVXNnMC4S1OhuNoin82P7I/Pas1g2e+jY3D+It4uSLGZVS7eChS4YwzoASchO4Yd6zXM2IuXB494EvfOW0gB8iA7gep8qjr5m7VAFvEYnF27FtshtCAFJy4VV1Ylh94bs3VjFUFjbxHgZsQztcZLzG1KwcRiAhW65b2vBtmdOsxpJFbbhvHxa8KzjL9rxrgBQoTDqQCrPoAhJJA6GNN6zDcw4e/igbdzJiLSm3ZxFyDbxHlIi6oEJLEkERM9JioQwrYW817F/aNbuHw4DZ8ZiGACN3yoDCxG4I1MUboptf/pxLZueFOVzmyf5Z6hey+nT3bZ+/wAEvgt0U6AbEj+tT+X+Jvhrn1fE3lZzbF0oF/8ASj8DXJOYapAPU+qzpMYsqSe8j3V4ntS4x6oLfl7bG7DijJ/EVOCwCISyjKIAjUwBtvrU/AXcpy9Caj4m5oBGsbij4epnOfZXcmvE0csr1cZRdtvf07/Y9CeOKxO9kW+KxAtrJ+A7moGCsFmLtqTSFm6+Y7dB2FRubOYk4fh/EIzOxy202zNEkk9FG5PuHWvteTyuDRIKVNcR4Hxe/j8UzYy4z2Ldq5duW1Z0XKFIARLbCWzMsTJ99aO7yri8MRcwOKdGgE2Lj51BkApmPlbzHKMyj2WMisiHTKFZ/lfjrYgPavoLWJsZRdQEEEMJW4hBMqw9THyJviagARUI4AeJnkiDmEHc6ghidWWCQF0Amd4InRUTiXErVhc964ltSYBdgoJgmJPoDQg9duKoLMQANyajYXF5wzkZUB0J3Mbkjp7t+8HQDA4hL6+IvnQ6o0QCI3SdSNT5vlRYm5lOVlHhlYAAOkaRoNzoABERvJFAKv3yMrickAnQ7HqQdRAjQak/GsHjuD4jAY365ggbyYh2+sB9fDDXEcqFUhidWy6EjaDOu0P2RM+a20yfKACAxYtJ1PlGvvHalqFtiVPlMgA+UAakhpGhGoAjSAI3qhMl4a+txQ67MJHx/wCdNKcbaq/OVytb8yeVQo1yyRK5V0kCIJ21kxU2zeDrmUyDUBl/pF4Ub2FzqJay2eP2CIb5b/CuRGvQNyQe/wCh99c45q5GcMbuEXMh1NoboeuXuvpvWjLDe0dWDIkulmLwKk3EA3LCPnXY8KKw/LHL5tuLt4Qw9lOoPc/0re4K0T0rTDeRsyss8KKnTAk0xYtwNabxN0toNv1rrRxvc5hx/gtu79YvX8N4d577LaAuBS6wAlxiz5WLs3QEAADSJrWcpcM+qWfB8R3t5yULjKVB3AG4GYEwQCCTvubzHYa3dtm3cRXRhBVgCD8DUPB4BbSBEEIghRqY7akkk/1rIWTLpgadATPypIX/AJvQZeh22+fSk+LGhIn10mhC0oxSaOoBatTeKuQNppVNYseXSfhXNq5Sjhk4cmWOupWZzibZ82RfPBybShiPL2MbHpWQ4lwS7hsKMNhlzPeYC/cG7awtpf2NdT116E1tcQCrZ++89Kr7uAbEwFuNaZXVsygHyg6gDoYnXUelfP8As/XZ3l93d27d/X5HoZsEHDr8kZ3C4NcBgbty/hB4lq6MjPBNxzAVpG1tewMGD1qPw3ma+L2FbGi1dF4lrRyp4ljO3hrcAUDyknYySBO4pjjfGrlw8Rs4m4q21GW3ZYS3iK/2Rt9Y8oZjqIaetSOCMU4SMU9lXu4ZnOHZhJUMwGf1VWZzB08g7A19UkeaMczcIvYfwrAt3MS2Ju+JeugR9YdSTbsyD5FHtEadwRGmrwvFr1gWrN9kuXXPmgZQZMxbG7KBAkKF09rpWP5Yv4zNhrwxF24MVcui4jC46C3bnPLCYuEBiAoBGmsVpOHr42LkRlSTAKxnMrJCSJA8Qas59RtUlFSW5lFtM162VbWImolw+I2VPYB/9xpWKuk/ZJ/3HsO1TMJhwoitGPTYsTbhFJszlklJbscw9mK4/wDTHiWbGoh9lLCwPV2YsfjCj/trtAFcz+mHgDOqYy2s+GuS7HRJlH9wJYH94dAa6Ea1yYjkfhAxOKAcMUtKbrBSVZssBFRgQQzOyAQQa1/HeYn4dft2s7YtCoukXoV138MpeC6iS58wZgZk61WcnYTCDCtdvBLjDxL9wgkXLFuyuS0qMrBrd17rhgRuB6CsfxbHtfuvddnYsdM7Z2C/dUtAmBAmBVHLNX9H3FXfi4eI+sG8GUbKpV7oUeilFA9BXbFOvurkn0QcDY3GxriERWS2T95jo7D0AlZ7se1dZTajIxRbtTd3Co0Z0VoMjMAYMESJ2ME/OnBRk1CBARSbiBhB2/pqNRSqFAV/g5Dl3RjooklYAgiATplGvu0nUuYi4UPTIVgLtoo1g/iOYALH3d6l0m4gYFTsQQfcdKoIDEoc2bMjZVUaQwOmpA9527byaO5diLqeZT5YB6aiABpAM66noOgMxbQAIOs7z16bbRHSmEwuU6Hy65p82eSdCNgBPT/yA7avB1zDY/yJB/MGiKdqjLY8JmbMAmrsSx7a5p0j2jm3Gg2FSkYMAQZB1BGoPrNAFl7gH3iqHmrmX6rh3uWVS5cW4tkKdluMARn9ACDHqNqu8diltW3uuYS2jOx7KoJP5CuXcFu4riCXVx0W8JiAFtswS0FvFw1o2QYNwljB3zTvSkVHU0zEDMZMCSNiY1IFKArnHAeR+IW7wN3HsltIA8K5cYuq7LlcZVEd5jt1recW4vYwqZ791UXpO7eiqNWPuFQEwiiy1k+BfSFhsVfGHVLiFyQjOFhoEwYaVJgwP/FaVeIWiwTxFDkZgjHK8Hr4bQw+VAOlZ3pBJGhE1V8K4xcuYi9au2haQMVsMxAa+EkXGCE5ioIBDARBq6qkJNHRUdYgBNECe1HR0BHvYRW3/Kjt4UL7Ip+hNaoYccJOUYpNmbnJqm9ii4zy5hcUQ1+yrsPvSymB0JUgkehrmvMF5sJjcT9Y8QWnw7WrFtBFu6hTJbtnoqpmYmBIInrr2V0momIwyuMrorDswBHyNbjA55yHh3s8NuG4NL1z7JWE5iwVVJUjYsOoIgE9a0HCsIbCnzF7jnc+4CQOiiNB0q54pYSEZ5+zMqo2LQVEj0k0zgbBPmbc/l6VGZodwOGyiTud6sFFJVaVREbHJpLLOh2pM0c1SGK4x9GWDvMXt57BO4twV+CMDHuBA9Ka4Z9FuEtsGutcvR91iFX4hRJ90xW6zUKotjAtKoW2oCqAIAAACrsABsNqfBppNZPf9On9fjSpqAXNCaQDRk1SCzRTSJoTQC5oppGahmoBc0i7cCgsxAAEkkwABqSSdhQzVGxmCS8Mt1cyTOQ+y3bMv3h6HT00EAc+49icXxdvBwalMGD5rzyq3iDuNJZB0AGu5jSIGI5V4hgLtpOH3rri4pLEQqK4PmLo0oFggiZPtVsuY+dcLg5Qt4lwaeFbglfRm2T3HX0rlnMnO2KxcqzeFaP/AE7ZIBH7bbv+npVMkdD47zFiTatWcPYtYu9cGS69s+Jat3UCF1I0H3gfMQB6xWE4rgcS9+5bxgxN/GwPBW3BQBgDnzDZVPRQBIMkVf8A0R4XFW3dzbK4W4urP5QWHsMgPtbkTtqNdIqu4xx29jQz4nFLhcLmZRYt+a7cymCDaBknoS5Cg9KBGz5g4zjreCsNh0S7ffLbvNb+1Nu4UE5VWQfNm1Og00M1zTjWGNty+OvG9iTvZVsxTqPGujRP/wBaSfVa0vIVoC5duWxcwmCuWPBz3LkNduswCOraDxPMfY0G2pNUvFMJh8JebC2rFzFYpWylrwOXMQD9nh01uSDPnJHoaBEXgnEMJhMt42zir4IZAZSzaYagyfNccHXYAdJ3rU464ly0vE7FvD2nugnEX7p8Q4e6gVMtmwZBuNupgk9YmaqLnLwtxe4tiPCkeXD28rXWHQBF8lpfcI16VbcI5m4feQ8PXCCwlwjw2eLgN3Tw2vDcnMFGpadjpQpT8ofWbl5sXbtG9dBP/wBzimK2rS6gktPmeCRAJyg7GdOzYXEpdQXLbq6NsyEMpgwYYb6g1xm7gcTiL9zCOTi7trKujNbw2HgHOWQKsZToIgGDodqmWObf7JH1OwVxSg5muC5C52AzqgCmFBHc6knrAEas7PR0VCsDEVQoqFCh0VChQgc0TQd6KhQEHEYLM+ZjIGw7f71gOeudb+FxH1fDhFyKpZmGYksJAA2AAj59I16Wa4f9I4T+07uclVi1JAkgeGkkDrVRkgj9I2P/AMy3/DWj/vHx/wDmW/4a1lbK2y5DuwTWGCyTvHlze7r/AFosILZD+IzKQpyBROZvuhj0E/8AO9opqv7yMf8A5lv+GtEfpJx/47f8NaytsWshLO4fWALasp7S5uAjX9kx67U2cmSczZ59nKMsRvnzTM9MvxoDW/3k8Q/Hb/hrQP0kY/8AzLf8Nayt4W8iFXY3CX8RSICgEZMrfekZp7QKbvZPLlLHTzSIgxqAZ1E0Brf7ycf/AJlv+GtD+8nH/wCZb/hrWTxAQN5GYr3KgH5Tr+X86URa8WMz+Fm9rKM2Wd8sxPxoDVf3k4/8dv8AhrQ/vJx/47f8NaydgJmh2YJrqoBOxjykgbx1orAQznZhoYyqGk9AZYQPXX3VQa3+8nH/AOZb/hrRf3k4/wDzLf8ADWslbCZTmZg33QFBB/eYsCvwBoQmSczZ52yjLHfPmmfTL8aCjXN9I3EJjxLXT7iRr67UkfSPxCY8S32/w1rL3VteGhVnNwk51IAUCTGVpk6RRYoWwE8NnJK+cMAIfqFIJlfU60FG44b9IWKTEWvrjDwZlwiKDDKygmASQDrA10+FM86c64u5cewrCzbB08ImbiESjm7oSrKQYEaHWaxpS2XQK7BTlzM6+wSfMQqkllA17ntXQMHcwbYX64+Bu3lwapYtl9FvrsLjjbysWBHmgMu/QKMnwPlfFYsFrNo5ACc7eVTHQMfaPTSfWKZ5b4smGu+M+HS/CEKr7K8gq+x1EduvSpfMXN+JxYyu4t2elq35UA6BurfHTsBUvlvkTFYuGK+DaP37gMkfsW9295getB6lbx7mXFY1vtrhifLbSVRT0hRuZ2Jk+tbHF4Jhaw+JHCTcxl/MHNzNkW4v/VexOWXHn82UAzPra4Y8J4T98XL43Ol25PYAeW3+XxqsxfPVvHuMHctNZw98i2bmf7RSSMjQBlAzQCDmEE0IZviK3b926MS13F3lQLbGGIe3auOGAViogZY9m2IJUidDW44vxlrHDmvobf15VtYfEXFyM9poiHYT5htGwYntUK1xtMKz4Hg+Da5eBK3Ljg+0pKy0wTBzasVUdN6aw/CLmGvk8RxFhkxqMuJQuFYGR4RVVElgx3AAXza7SBnLfCrFsDEcQxJd7gDixZYXLtyQCDdukxbBHcz6zSk8biTJhsJhksWbbTFsSLc6G5dvnVmj3T2NWfF+XeG8PuHx713EMNVw65VOu3iuuw/9pPQGqfGcxYjF5MNa8PC2GORbSEWrfr4lzTNvr01GkmoU33NeBsYjNdPEFtYNTlxC2ss3LwAEMy+05UqIOb2RAqgw3HcOgy4HgrYiyDHiuhYsw3k+G57bn4CoXJItW8a2AZ7eKsYhQGygm34tsG6CJ3AysMw307VAx3ET4jLi8diMPdVmXwbNshLSqxCqoF1BEaiBsRqaEO+UdERFCoYh0dJo6gDoqFFQB0VChVAk1w76T2A4jeJ6onQHe0Bsf16b13I1xP6RsSLXFHcoHARPK0EGbcCQwIMEzqOlEZIxaEZWBOsgjSZ769P5xTuHuqLd1TllguWUzHRhOR/uaTJ6gRTd0Fy7qhC5pOUaICdASBA3jpRYzE+IxYhVJjRRlAgAaDpMT7yayKHh3ULcBy6oMsrmM519k/cMT5u0jrR4R1GfNl1QgZlLa6Rl/C37XTXvScbifEbMVRdAIRQo06wOvrScRfzkEgCFVdBEhQFBPqYknqaAcwdxQWzZdbbAZlz6wYj8LTEN0pGGyyczBRlbUrm1yNAjpJgZukz0osRfzxIUZVC+UATHVu7dzSbl2QAY8oge7MW17mW/SoBzBXFVwWiIYHMucaqQPLI17a6GD0oYEr4i5yFWRJK5wBPVPve6m3uyFGnlEaAAnUnU9TrHuAFG96VVYUZZ1A1aTPmPWOlCh4MrnTOQFzDMSucASJJX7w9OtFYIzrJgZhJImBOpK9fdSc+gGmhJnrqBpPbT8zSzf8gSFgMWmPNqAIzdtNqAS8ZjGok9IkT26e6iYidNp/L4n+dK8Y5MmkZs2wmYj2t49PWgrjIR1LKdugDdfiNKAGIYF2IiCxIhcuk9FHs+7pTuFxptggJbaTPnto/yLDQUnDoWVlUEnMraDoAwJnpqw981acF5eu4jxUHlZUF0AgHOAcpCmf2vyio5JGyGGcqpcur7X68FdiMULlxWyIgECFRY0MyUAAbfY77VpeD8SS3cF3G4i5eJRrX1a1D5kdchRjPhovXIkmQNBFRbHJ2IlXNq41rOA+UBXifMVDaHTr3q84HhMRiGa3gLKYK0hy3L7HNe9Qbh84MGcqwB3opJ8DJhnjtSVUM4u/hOFXTbt4VsRiFAIvYmAoDKGVrdpd9xqYMzr0ql4pzTjsYcjXXIYwLVoFQfTKur+4zWzu8uYHFeFhhjy9zCoxu3PKS1osSVFw+UBGPdsoaD6YvjzYexilbh91itvIQ51i4p1KsfaXQHaNTGlZGoW/KdyzbF3GOuFQ+yree6/wC5ZU/mxWOtU4seJcyWVdsxhF9pm+Cjf3bfnVrw3huL4nfJBa4xPnuufKg9T09FHwFdGwtnh/Bbcu+a+y6mAbj+iIPYT3kDaSaWLK7mO1xGzg7dw37WG+yP1jKwV7t0aJ9oqy9x1AEA6EHUisxw/gSYtfEANjDrrexeJeWdvvKg0U6yI1OmrT5atcTz79cvCxes21wjnKQ8sQ0/Z3HYEaKwUlRGmbU1Sc12rniLYu3jfxKwvh2RFqxppatIF8zbeyABt5jtAjU8ZuYDEWDjVt3sV9SC2GDHw/FHlyXLpjMVBJ2g6mRFVGAwOI4i1u7ilSxgLQaCAti3bUj/AKQPtEkL5jI0+FXPCrmIwCWrmLRbGDLeD9WVVcnxN7t9id4EkmToRlWYqj5iweKxXEvqeIxAAL/ZFpFsIQWQoi6ZiNPU6TUAS8ewfDy39nob14gqcTf2UdRbQAfOB8RWx5c459dw6XXxngXFHh3Fy2oZ11zjOp9pWUwNBqKZ5T5FuYTGs5Fu7YCDI7gZw5AMqsHKQQwmdiKvbPIOAGacMrFmLeYsYkzA10UbAUbIzYkU0yRTtChiR6OnWSmmWKAFCioUAdGBRUGeKjMkrGsZcKqcsZuk/wC1YS5ykbmMfGYq4cogJb8pLKtsITdJBAnU5R33G1bG9io0XzOdB/z+dRRkWWukMw1jovw6n1rTKe+x2QxpRpr+/wBGXHK4cu+bLbZXVQVVVUOCDlRYzDX0HUkms3juAYbBr57we2oOjKM7zupI0jbX0071pOO8wPccWbCm5db2UXr3JOyqJ1J0qNd5NQp4mLvF70A+X2LR3hVPtdsx+AFaE/p+T0llbkuqrrp4TpfT8b/U5NcZgqqykASyyIJDQJnqPKI+ND6wfD8PSAxeY1kgDftptV7zbjLYe3asyfBJYu0EliV0iIjyjT/es8l0hgw3BzfEGdq7YSco2zyM8IwyOMXaXcWLxyZOmbNsN4jf3dPWjTEEIbekMwaY1kAgQe2tIa4S2adZzT6zP60L1wuSzbsSToBqTJ0Gg36VkahVu+QrKIh4nQE6GRDbj4b0lLkBhp5oE9RBB07agUrF32uOzv7TkkwANTvoNBQxWIa4xdzLNuQANgBsNOlAC3fIVlEQ4AOgOzBhB6aikpcjMNPMI16agyOxkD86Xi8S1xs7mWMCYA20GgAFIuvJ3nQDYDYARp2iJ670ALbAT7ooW3gnU7EaeoI/nQuPMSdgBsBsIjT9aVeuZsupMKBrGkSYEdNaAu+TeO28Lebx0z2bq5HjUrrIYDqBrI/pFdh4bwvCsivhMuVtQ6HXXSc2/pXK+QUw95nwuIuMniFWt6jKWEhlMiJPkj9359S4dypaw2uGzWzuSGMN+8nsn5e6K05Fb4O7DJxxJKffjf8ATLBvFtrD/aD5N89j8ah47gmGxdpwFjOIaJVu8NG+vfSrG3jvuXgAdg33W9/4T6H51W8YlCGtnKe4/wCflWtyrcKLls9vwzG4/hlnhqWrgwl289sXEuMrQlxHGVjeGpPlmAAFknbSqNOVbNtzdxOIFvByGtMCGuYhGAZQiCSNCAzEaEH3jot5nxFso0Bxv2Yd47Gs1xzlj6zbsWLQW3cs+VWYnK1smWU7mQdQNfvbTW3HlvZmjLh6d0UfFOfWW39X4faGFsrs2huHuZ1Ck9TqfWsdeZixLkljqxaSTPUk6n3mtlxmzheGfZWYxGMjzXXAK4f1S3qPE6iZI37A5BL7B/EzHOGzZjqc0zmJO5nWa3I0G15Z4bh8AFxnEDFwjNZw8Zn7i4ydD2zQBudYi7sc1+KlzE4HAK2Ke6LT/eZVKfZO2UAlSFIOoAK6k1leX+ScXjT4jTbRjJu3ZJeeqqfM59TA9a6zyryhYwIJthmuMIa4x1YTMADQCe3zNYsxZlcLyFiMWfG4liGLEHLbQiEkd4yiNPKo1jetXw3lOyq4c3gL93DIES646Agr5ZI8sCCZI7yTWiCUqKjZLGwkUcGlE0nKagHooRQoVkQKKBFHQoBprfamyKkURFQDIpm5uT2EfE/8/OpJWNagYhWyhert8h/4E1jI3YlZG4bhozXT1kL7p1PxP6VkuMm9ev8Ag2IzvME7Ko3Zo6aj5gda2HF8QLaQNABp7gKi8GwItWzecfaXRJn7qbqv8z6n0Fc8oJtR+bO6GRpOb77Iq+FYOxgLTQ2e80eJcb2nPQeijWFH5kknnvOHNbFmt221PtH8PoPX9K1PHb+e5pou1Y3iLK7+HbURPmaPyFSLUncuEZuMl8MOX3MmxzHQanoJNHiH19kJoojUbKATr1MT8a6Hwng0CETM0baD5npWv4LwTKC1wIWMbDQAdBO+++nurfHK5PZbHNl08ccd5b+RwrOO4oeIO4r0pawSAewvyFOfVU/AvyFbbOSzzPnHcUM47ivTP1ZPwL8hQ+rr+EfIUsWeZS47in3xSlAvhoCCPOC+YwDIILFdZGwG1ek/q6/hHyFGLC/hHyFLFnm18WptLb8NAQ0m4Pab2vKT21/+IpK4gBCmVDJnMQcw20BmI07dTXpYWF/CPkKULC9h8qWLPM+FTORbCg5mHvAE5o9Ikn90V2fBcyjC27TXiTZZvDznXLAUZz+zmzg9gAa1xwyT7I+VZzjyK2JwqACBdB+ABJ0+FacnKPQ00o+7lFrne/RMt+KuPDJGsjQ6EQf5VT8LxLBhbvagmEY9D+Gf0P8AtWhW0CuWNth6VUcTwYIKx/t6jsRWvJFqVjHNOPSFjrRVsy6Ebf0PoagYi7MOJn8wR/OrPhtw3LeV/bQw3r2PxGtQMfYyk9jrWL8wvI583I2Iu4hltQUJz+I7eyCdc33mafQzXQuWPo/w2Gh3HjXR95x5VP7FvYe8yfWneCXPtVj1/Q1q0auiE3JbnFlj0ypDiJSxSQaWFmsjUCaGUmnFSlxQg2tul5aOiNAN0KTNHNZAOhQmhQAmio6EUAi4dKZvOAM3XYfGpDrIPuquxQ9gf82FYSNuNJkK7gzdcF/YXUz1jWPj+k03zFjsqETvUziWKyKI6msfzBiy5+H51om0k0uTtxRcmm+EZfjmJZQSOugM01wfBQkkanX41BtcMOcidz+m9SuYscbNpUtsVYncGCAOxGxmKwrqajE3uXRFyZ0bg3D/AA0AOrbse5q5tLXDcFzzjrW1/OO1xVb84DfnV9g/pXvL/iYa2/qjNb/Ihq61GlR5kpOTtnXFFA1z7DfSxhj/AIli8nuyOP8AUD+VWVn6SOHtveZf3rdz9VUiqYGvoVnLfOmAbbF2h+8Sv+oCpVrmbBtti8Of/wCtv+tUlFzR1VjjuG//ACbH8W3/AFpX9vYXrirH8W3/AFoKLMUoVUNzNghvi7H8RD+hqLf544em+KQ/uh2/0qaCi9xA0msRzKGR1uCT4bq8DrlMx8akYr6TeHgEBrj/ALtth/rirLiNhLqBlYMrAEEagg7EHtWjNF1Z3aSdOnwR+F8xjEsfAtuckTmgb9N6v8RaBE1B5fwS2wQqhY3PfrU/HXgqmltq2JqKlUCtu+Ri0RIqu4hj1ZfWdqb4vxbNCL03P9KpAfNNaG7dG1RpWy/5fE3Qff8Aoa2Nu3WZ5XtbsfcP51qrbV0wWx5+Z3IWqU4KQDRiszULmjpGYd6PMO9AKoUWcdxRFx3FAR6MUVCsiC6OhQoUFGKFCgDFQL+49/8AIUKFYyNmPkqeM7/OslxHehQrkycnpYvCiqse3Wb5v/xB+7/M0KFZafxmOo/1mbak0KFdh54VFQoUIClLQoUA01O2KOhVQJp2qPcoUKoGzXWfo/8A/QWve/8ArahQrTm8J0YPEbnh+x+H86jcX9g0KFaX4Db/ADMk/wDifKmxv8TQoVzrk6JcGt5Z9g+8/wAq0aUKFdsPCeVk8THVo22NChWRgMUdChQgKI0dChT/2Q==');

-- --------------------------------------------------------

--
-- Table structure for table `request_request_ability`
--

DROP TABLE IF EXISTS `request_request_ability`;
CREATE TABLE IF NOT EXISTS `request_request_ability` (
  `request_ability_id` bigint(20) NOT NULL,
  `request_id` bigint(20) NOT NULL,
  PRIMARY KEY (`request_id`,`request_ability_id`),
  KEY `FKew5hm469als01o55dm2wm1357` (`request_ability_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'ACTIVE'),
(2, 'EXPIRED'),
(3, 'PENDING'),
(4, 'DOING');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE IF NOT EXISTS `tbl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role_name`) VALUES
(1, 'INTERN'),
(2, 'ORGANIZATION'),
(3, 'TEACHER'),
(4, 'USER'),
(5, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type_user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nd3esfcj63fbhresv6jy8x6il` (`password`),
  UNIQUE KEY `UK_k0bty7tbcye41jpxam88q5kj2` (`username`),
  UNIQUE KEY `UK_85c4qrnqobh9j8g1ervs6sq7b` (`type_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `password`, `username`, `type_user`, `email`, `type_user_id`) VALUES
(2, '3', 'organization', NULL, NULL, 3),
(3, '$2a$10$oZlR5RWqrcrE3dcO1sSmcO/JFXMsL56tHlOqDvZVp8NHSwCD0H2ja', 'company', '2', NULL, 2),
(4, '$2a$10$KTUGfKnWD7WgrdxjYlYMHu0X9SQJFDofzigWewNBiCfU5iFpt/ija', 'teacher', '3', NULL, 1),
(5, '$2a$10$qbzVJ7AYUnFouI.9Iukj1ub4qFaqtcazOEl.6Gqm1LIME9rYCeF6K', 'intern', '1', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `class_name`, `contact`, `password`, `email`, `address`, `code`) VALUES
(1, 'Lan Nguyễn', 'Buckinghamshire Legacy', 9436, 'Incredible', 'Coby71@gmail.com', 'neural', NULL),
(2, 'Refined Fresh Chicken', 'Security gold', 44160, 'invoice Computers', 'Clara.Waters2@gmail.com', 'invoice Pizza', NULL),
(3, 'e-business', 'Cotton Bhutan convergence', 28686, 'Auto Loan Account', 'Brennan43@gmail.com', 'Research', NULL),
(4, 'nga', 'nga', NULL, NULL, 'nga', NULL, NULL),
(5, 'firmware Sleek', 'Run Cheese AGP', 67441, 'Executive', 'Hector_Keebler55@yahoo.com', 'multi-byte', NULL),
(6, 'Fresh', 'Radial Automotive', 46610, 'Isle Digitized Union', 'Carroll_Rath96@gmail.com', 'Monaco Saint Martin', NULL),
(7, 'Tasty', 'Bedfordshire primary architectures', 25123, 'withdrawal', 'Delbert_Kohler22@hotmail.com', 'recontextualize', NULL),
(8, 'array', 'Oregon', 47498, 'Personal Loan Account Future', 'Janelle_Hermiston4@hotmail.com', 'auxiliary', NULL),
(9, 'Soap radical', 'Martinique', 13274, 'Infrastructure', 'Joanie_Doyle66@yahoo.com', 'Missouri Nebraska', NULL),
(10, 'deposit', 'payment Savings Account compress', 50522, 'Macao Equatorial Guinea Baby', 'Lottie70@gmail.com', 'web-readiness support Rustic Metal Salad', NULL),
(11, NULL, NULL, NULL, '$2a$10$xqrNG2lXzW8MrSIx.YJqpO8nCMf1Y34f6PUq4tQvLmgEGOsNVg2QS', 'teacher@gmail.com', NULL, 'YVO4w5'),
(12, NULL, NULL, NULL, '$2a$10$KTUGfKnWD7WgrdxjYlYMHu0X9SQJFDofzigWewNBiCfU5iFpt/ija', 'teacher@gmail.com', NULL, 'w8qXnx');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKlk065bxeqkbi8kq8acaarsmp2` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(4, 1),
(4, 2),
(4, 3),
(5, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
