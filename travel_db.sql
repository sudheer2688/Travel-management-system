-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 12:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `title`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 'Travel Planning', NULL, 'khalid', ''),
(2, 'Destination', NULL, 'khalid', ''),
(3, 'Travel Experience ', NULL, '', ''),
(4, 'Family Travel', NULL, '', ''),
(5, 'City Guides', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf32 DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `hotel_desc` text DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `title`, `addedBy`, `location`, `image`, `hotel_desc`, `owner`, `addedOn`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(2, 'Hotel Edison', 'shreya', 'New York, USA', 'dist/img/hotel-1-1.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'navika', '2018-08-12 07:14:51', NULL, 'khalid', NULL),
(3, 'Hotel Raddison', 'khalid', 'Dhaka, Bangladesh', 'dist/img/hotel-2-1.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'nashrif', '2018-08-13 07:14:51', NULL, 'nashrif', NULL),
(5, 'Hotel Agrabad', 'khalid', 'New Delhi, India', 'dist/imghotel-4.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'ishrak', '2018-08-14 07:14:51', NULL, 'ishrak', NULL),
(6, 'Le Meridien Dhaka', 'khalid', 'Dhaka, Bangladesh', 'dist/imglemeridien.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'ishrak', '2018-08-15 07:17:56', NULL, 'khalid', NULL),
(7, 'Hotel Sheraton', 'khalid', 'Dhaka, Bangladesh', 'dist/img/36485389.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'nashrif', '2018-08-17 01:39:07', NULL, 'nashrif', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_enquiry`
--

CREATE TABLE `hotel_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `total_room` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `hotel_enquiry`
--

INSERT INTO `hotel_enquiry` (`enquiry_id`, `hotel_id`, `room_type_id`, `name`, `email`, `phone`, `checkin`, `checkout`, `total_room`, `child`, `adult`, `message`, `count`, `addedBy`, `deletedAt`) VALUES
(27, 7, 8, 'Khalid', 'khalid@gmail.com', '01825698512', '2018-08-24', '2018-08-25', 1, 1, 1, 'I want this room.', 0, 'khalid', '2018-08-25 21:44:59'),
(29, 2, 1, 'Walid', 'walid@gmail.com', '01742712141', '2018-08-23', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'khalid', NULL),
(30, 3, 3, 'Noman', 'noman@gmail.com', '01856214896', '2018-08-21', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'khalid', '2018-08-25 21:49:24'),
(31, 5, 6, 'Nashrif', 'nashrif@gmail.com', '01541236987', '2018-08-23', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'Hasan', NULL),
(32, 3, 3, 'Tareq', 'tareq@gmail.com', '01825698512', '2018-08-25', '2018-08-26', 2, 2, 2, 'I want this room', 0, 'Hasan', NULL),
(33, 5, 5, 'Fariha', 'fariha@gmail.com', '01589621456', '2018-08-26', '2018-08-28', 1, 2, 2, 'I want this room. ', 0, 'khalid', NULL),
(34, 6, 7, 'Ishrak', 'ishrak@gmail.com', '01594532145', '2018-08-25', '2018-08-27', 1, 2, 2, 'I want this room. ', 0, 'khalid', '2018-08-25 22:02:14'),
(35, 5, 5, 'Imtiaz', 'imtiaz@gmail.com', '01569874123', '2018-08-27', '2018-08-29', 1, 1, 1, 'I want this package.', 0, 'Hasan', NULL),
(36, 2, 1, 'Shohan', 'shohan@gmail.com', '01820570771', '2018-08-18', '2018-08-24', 2, 2, 2, 'I want this room. ', 0, 'khalid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `cat_id`, `title`, `description`, `addedOn`, `addedBy`, `deletedAt`, `image`, `last_modified`, `deletedBy`) VALUES
(1, 1, 'A Definitive Guide to the Best Dining', '&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/travel/Admin/dist/img/cox.png&quot; alt=&quot;&quot; width=&quot;800&quot; height=&quot;533&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.&lt;/p&gt;\r\n&lt;p&gt;Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.&lt;/p&gt;\r\n&lt;p&gt;Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.&lt;/p&gt;\r\n&lt;p&gt;Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum.&lt;/p&gt;', '2018-08-28 10:15:38', 'khalid', NULL, 'dist/img/cox.png', 'khalid', ''),
(2, 2, 'How These 5 People Found The Path to Their Dream Trip Activities', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.&lt;/p&gt;\r\n&lt;p&gt;Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.&lt;/p&gt;\r\n&lt;p&gt;Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.&lt;/p&gt;\r\n&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/travel/Admin/dist/img/cox.png&quot; alt=&quot;&quot; width=&quot;800&quot; height=&quot;533&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum.&lt;/p&gt;', '2018-08-28 09:34:06', 'khalid', NULL, 'dist/img/sajek.jpg', 'khalid', ''),
(3, 2, 'Our Secret Island Boat Tour Is just for You', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/saint.jpg\" alt=\"\" width=\"795\" height=\"530\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum.</p>', '2018-08-28 09:51:39', 'khalid', NULL, 'dist/img/giant_26168.jpg', 'khalid', ''),
(4, 3, 'The Ultimate Packing List For  Travelers', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/nua_hero.jpg\" alt=\"\" width=\"800\" height=\"450\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum.</p>', '2018-08-28 09:51:49', 'khalid', NULL, 'dist/img/nua_hero.jpg', 'khalid', ''),
(5, 4, 'Planning your Sundarbans adventure', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/sundarban.jpg\" alt=\"\" width=\"800\" height=\"450\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum.</p>', '2018-08-28 09:51:58', 'khalid', NULL, 'dist/img/sundarbans_deer.jpg', 'khalid', ''),
(6, 3, 'Bangladesh: A country with contrasts and diversity', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/sundarban.jpg\" alt=\"\" width=\"800\" height=\"450\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum..</p>', '2018-08-28 09:48:14', 'Hasan', NULL, 'dist/img/bd.jpg', 'khalid', '');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `room_desc` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `hotel_id`, `room_name`, `room_desc`, `price`, `image`, `capacity`, `available`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 2, 'Single', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 300, 'dist/img/test_room.jpg', 5, 5, NULL, 'khalid', ''),
(2, 2, 'Double', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 300, 'dist/img/402ee4a6712baee81f19b3e7efcba934hotel-room-view.jpg', 3, 3, NULL, 'khalid', ''),
(3, 3, 'Single', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 400, 'dist/img/room-3.jpg', 5, 5, NULL, 'khalid', ''),
(4, 3, 'Quad', 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.', 750, 'dist/img/room-4.jpg', 2, 2, NULL, '', ''),
(5, 5, 'Family', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 1000, 'dist/img/room-4.jpg', 4, 3, NULL, '', ''),
(6, 5, 'Family', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 1000, 'dist/imgroom-5.jpg', 4, 4, '2018-08-25 08:16:50', '', ''),
(7, 6, 'Presidential', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 2000, 'dist/img/Meridien-Mina-Seyahi.gif', 1, 1, NULL, '', ''),
(8, 7, 'Triple', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 900, 'dist/img/room-5.jpg', 3, 3, NULL, '', ''),
(18, 2, 'Triple', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 700, 'dist/img/507faaa3e58d44a2ab8997d75c6f8e5broom-1.jpg', 10, 10, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tour_id`, `title`, `price`, `days`, `location`, `description`, `image`, `capacity`, `available`, `owner`, `addedOn`, `addedBy`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 'North india Tour', 1500, 3, 'Uttarpradesh , Manali , Rajasthan', '<p>Uttar Pradesh</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/4c7740a189b1172516ce5481571c716dTaj-Mahal-Agra-India.jpg\" alt=\"\" width=\"696\" height=\"464\" /></p>\r\n<p>Manali</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/ad385e6eec089e686416ab9e4c942de6GettyImages-930881934-5ae56fe48023b90036464e72.jpg\" alt=\"\" width=\"683\" height=\"512\" /></p>\r\n<p>Rajasthan</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/98b58433fa89e8617fbe6892c8900e68jaipur2-1.jpg\" alt=\"\" width=\"680\" height=\"453\" /></p>', 'dist/img/0acdd9cdec0106f4d7a79006385dffe5nanital.jpg', 30, 8, 'ishrak', '2018-08-08 07:15:18', 'Hasan', NULL, 'khalid', ''),
(2, 'South India Tour', 2500, 6, 'Andhra pradesh , Tamil Nadu , kerala', '<p>Andhra Pradesh</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/1e6f4a87fa5672ebd42915a7504c3079Tirupati-Chittoor.jpg\" alt=\"\" width=\"604\" height=\"443\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Tamil Nadu</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/b146b1f4bfb4746f927e3875f4caa2a3Madurai-video-state-Indian-Tamil-Nadu-Hindu.jpg\" alt=\"\" width=\"600\" height=\"338\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Kerala</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/79e3d260e40c896cae2edfa089f72681Paravoor--lake--kollam-kerala-tourism-shut.jpg\" alt=\"\" width=\"650\" height=\"379\" /></p>\r\n<p>&nbsp;</p>', 'dist/img/e2a7e08508c63a845c1ec127d50ce3d5Humpi-1280x720.jpg', 30, 11, 'nashrif', '2018-08-09 07:15:18', 'Hasan', NULL, 'khalid', ''),
(3, 'East  India Tour', 1500, 5, 'Assam ,Meghalaya , Arunachal pradesh', '<p>Assam</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/872334882d6589d65e8fb58a4b4d1365assam.jpg\" alt=\"\" width=\"887\" height=\"430\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Meghalaya</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/a5b3dec100c81d9c43edeeb30e59c4c4Meghalaya (1).jpg\" alt=\"\" width=\"820\" height=\"430\" /></p>\r\n<p>Arunachal pradesh</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/0d1383073c15c0c8447976b756d6e195aru-lake.jpg\" alt=\"\" width=\"783\" height=\"636\" /></p>', 'dist/img/efea7a15b2ecca54506d71bf12a66927northeast-india.jpg', 30, 28, 'nashrif', '2018-08-10 07:15:18', 'khalid', NULL, 'khalid', ''),
(4, 'west India Tour', 3500, 6, 'Gujarat , Goa', '<p>Gujarat</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/a6e28acdfd17f93a065a10a78ee890f3312px-Akshardham_Gandhinagar_Gujarat.jpg\" alt=\"\" width=\"650\" height=\"419\" /></p>\r\n<p>Goa</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/d93e62988eca8fd4d2cef5288c0c3c7adont-do-things-while-in-goa1.jpg\" alt=\"\" width=\"650\" height=\"341\" /></p>', 'dist/img/fd31973ae3f4a0732dd67528b30dd986featured-image.jpg', 40, 40, 'ishrak', '2018-08-11 07:15:18', 'khalid', NULL, 'khalid', ''),
(5, 'Central India Tour', 100, 3, 'Bhopal , Chattisgarh', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/1bc0c3942bb334ed7746d845a8be05abSanchi-Stupa-in-Bhopal.jpg\" alt=\"\" width=\"647\" height=\"386\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Chattisgarh</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/GhurteJai-master/Admin/dist/img/1f9c3c79812d3da415fe6ce118375b91chhattisgarh-705.jpg\" alt=\"\" width=\"650\" height=\"226\" /></p>', 'dist/img/795d00696ddabc5dd2f547e4cc22ee22khajuraho.jpg', 40, 40, 'nashrif', '2018-08-12 07:15:18', 'khalid', NULL, 'khalid', ''),
(6, 'Pokhara Tour', 300, 2, 'Pokhara, Nepal', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/imagestour-2-1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BORACAY, PHILIPPINES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">&nbsp;</p>', 'dist/imgpokhara.jpg', 40, 40, 'nashrif', '2018-08-13 07:15:18', 'khalid', '2021-01-03 17:46:28', '', 'khalid'),
(7, 'Bhutan Tour', 400, 5, 'Thimpu, Bhutan', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/imagestour-2-1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BORACAY, PHILIPPINES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">&nbsp;</p>', 'dist/imgbhutan.jpg', 50, 46, 'ishrak', '2018-08-14 07:15:18', 'khalid', '2021-01-03 17:26:31', '', 'khalid'),
(8, 'Sri Lanka Tour', 700, 5, 'Colombo, Sri Lanka', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/imagestour-2-1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BORACAY, PHILIPPINES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">&nbsp;</p>', 'dist/imgsrilanka.jpg', 50, 50, 'nashrif', '2018-08-15 13:06:22', 'khalid', '2021-01-03 17:26:25', '', 'khalid'),
(9, 'Ladakh Tour', 500, 7, 'Ladakh, India', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/ladakh.jpg\" alt=\"\" width=\"800\" height=\"443\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BORACAY, PHILIPPINES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost&nbsp;unorthographic&nbsp;life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>\r\n<p>&nbsp;</p>', 'dist/img/ladakh.jpg', 50, 50, 'ishrak', '2018-08-15 07:44:32', 'khalid', '2021-01-03 17:26:22', '', 'khalid'),
(10, 'Singapore Tour', 3500, 5, 'Changi, Singapore', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/Singapore.jpg\" alt=\"\" width=\"800\" height=\"450\" /></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">ATHENS, GREECE</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost&nbsp;unorthographic&nbsp;life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>', 'dist/img/sing.jpg', 30, -4, 'ishrak', '2018-08-26 05:10:10', 'khalid', '2021-01-03 17:26:19', '', 'khalid'),
(11, 'Maldives Tour', 4000, 5, 'Male, Maldives', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/74e84db258c9e7341f5596a9feb8ea23maldives-bungalow-four-seasons.jpg\" alt=\"\" width=\"800\" height=\"450\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BORACAY, PHILIPPINES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost&nbsp;unorthographic&nbsp;life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of&nbsp;Grammar..</p>', 'dist/img/afc8a1c6951951f4e70c4b69d6a2a68dmaldives-bungalow-four-seasons.jpg', 30, NULL, NULL, '2018-08-27 18:09:14', 'khalid', '2021-01-03 17:26:16', '', 'khalid');

-- --------------------------------------------------------

--
-- Table structure for table `tour_enquiry`
--

CREATE TABLE `tour_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tour_enquiry`
--

INSERT INTO `tour_enquiry` (`enquiry_id`, `tour_id`, `name`, `email`, `phone`, `days`, `child`, `adult`, `message`, `addedBy`, `deletedAt`) VALUES
(1, 1, 'Fardin', 'fardin@gmail.com', '01786423154', 3, 2, 2, 'We want this package. ', 'khalid', '2018-08-25 21:56:47'),
(2, 1, 'Chris', 'chris@yahoo.com', '01658974123', 5, 0, 3, 'We want this package.', 'khalid', NULL),
(3, 1, 'Jenia', 'jenia@gmail.com', '0175898451', 3, 1, 2, 'We want this package.', 'Hasan', NULL),
(4, 2, 'Mustafa', 'mustafa@gmail.com', '01896541235', 6, 0, 5, 'We want this package.', 'Hasan', NULL),
(5, 1, 'Fardin', 'fardin@gmail.com', '01856321478', 5, 2, 3, 'I want to book this package. ', 'khalid', NULL),
(6, 1, 'Fariha', 'fariha@gmail.com', '01745623156', 3, 2, 2, 'I want this package. ', 'khalid', NULL),
(7, 2, 'Sumaiya', 'sumaiya@gmail.com', '01485623145', 2, 2, 2, 'I want this package. ', 'Hasan', NULL),
(8, 10, 'Tasnim', 'tasnim@gmail.com', '01985621456', 2, 2, 2, 'I want this package. ', 'khalid', NULL),
(9, 7, 'Tanjima', 'tanjima@gmail.com', '01856321489', 2, 2, 2, 'I want this package. ', 'khalid', NULL),
(10, 2, 'Afiqur', 'afiqur@gmail.com', '0185621456', 2, 5, 10, 'I want this package.', 'khalid', NULL),
(11, 1, 'Ibne', 'ibne@gmail', '01820570', 2, 2, 4, 'I want this package.', 'khalid', NULL),
(12, 1, 'Ibne', 'ibne@gmail', '01820570', 2, 2, 4, 'I want this package.', 'khalid', NULL),
(13, 1, 'Saif', 'saif@gmail.com', '01820547896', 2, 2, 4, 'Blah blhah', 'khalid', NULL),
(14, 3, 'sudheer', 'sudheerbollapragada18@gmail.com', '06302668395', 3, 2, 0, 'ff', 'khalid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `name`, `password`, `email`, `phone`, `user_role`, `image`, `deletedAt`, `addedOn`, `last_modified`, `deletedBy`) VALUES
('', '', '', '', '', 'Subscriber', 'dist/img/a36ac46cab133974a28f6662068d8649', NULL, '2018-09-02 07:53:31', '', ''),
('khalid', 'sudheer Bollapragada', '123456', 'sudheerbollapragada18@gmail.com', '06302668395', '', 'dist/img/Humpi-1280x720.jpg', NULL, '2021-01-03 22:46:59', 'khalid', ''),
('navika', 'shreya', '123456', 'shreya@gmail.com', '0185263548', 'Owner', 'dist/img/ishrak.jpg', NULL, '2021-01-03 20:54:31', 'shreya', ''),
('saumya', 'Navika', '123456', 'saumya@gmail.com', '01820570771', 'Subscriber', 'dist/img/94e240c668024a26980b4d3ef0329dd6VISA-PIC.jpg', NULL, '2021-01-03 20:59:25', '', ''),
('shreya', 'shreya govil', 'shreya', 'shreyagovil2000@gmail.com', '6302668395', 'Admin', 'dist/img/WhatsApp Image 2021-01-04 at 03.42.40.jpeg', NULL, '2021-01-03 22:53:33', 'shreya', ''),
('sudheer', 'sudheer Bollapragada', 'sudheer268', 'sudheerbollapragada18@gmail.com', '06302668395', 'Admin', 'dist/img/jaipur2-1.jpg', NULL, '2021-01-03 22:13:06', 'khalid', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `hotels_users_username_fk` (`addedBy`);

--
-- Indexes for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `hotel-enquiry_hotels_hotel_id_fk` (`hotel_id`),
  ADD KEY `hotel-enquiry_room_type_room_type_id_fk` (`room_type_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_categories_cat_id_fk` (`cat_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD KEY `room_type_hotels_hotel_id_fk` (`hotel_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`),
  ADD KEY `tours_users_username_fk` (`addedBy`);

--
-- Indexes for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `tour_enquiry_tours_tour_id_fk` (`tour_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD CONSTRAINT `hotel-enquiry_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `hotel-enquiry_room_type_room_type_id_fk` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categories_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`);

--
-- Constraints for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD CONSTRAINT `tour_enquiry_tours_tour_id_fk` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
