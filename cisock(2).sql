-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 08:47 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cisock`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `datetime` date NOT NULL,
  `section` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `event`, `description`, `datetime`, `section`, `userId`) VALUES
(2, 'Radio News ', 'Here it is news ', '2016-12-18', 2, 1),
(4, 'event123', 'Here is event', '2016-12-18', 4, 1),
(5, 'event 123fsdf', 'sdaf asdf asdf asdfs asd', '2016-12-19', 3, 1),
(26, 'event343', 'afdasdfasdf', '2016-12-20', 1, 1),
(27, 'Event', 'here is message', '2016-12-22', 1, 1),
(32, 'It is event', 'Here is message', '2016-12-23', 3, 1),
(33, 'This is event', 'It is message', '2016-12-17', 3, 1),
(34, 'New event', 'Enter Message', '2016-12-21', 4, 1),
(35, 'Event on 22', 'Message on 22', '2016-12-22', 4, 1),
(36, 'evesdfas', 'asdfs fasf sadf sd', '2016-12-16', 4, 1),
(37, 'gdfgsdf gdg', 'sdfg dsg sdfg dsfg', '2016-12-20', 4, 1),
(39, 'Event 234', 'Messagesd', '2016-12-17', 3, 1),
(40, 'This is a Event', 'Here it is message', '2017-06-01', 1, 1),
(41, 'This is not a event', 'This is not a message', '2017-06-01', 2, 1),
(42, '          This is Event123', 'This is Messagd      ', '2017-06-06', 4, 1),
(54, ' This is event123', 'This is messag ', '2017-06-05', 1, 1),
(56, '  This is Event 6577', 'This is description  7676887', '2017-06-04', 3, 1),
(95, 'this is', '3:00', '2017-06-04', 7, 1),
(97, 'This is 3baj ke ', 'This is message 4 baje ', '2017-06-05', 4, 1),
(98, 'New Event ', 'This is message', '2017-06-10', 5, 1),
(99, '3:00 PM Work', 'It is 3:00 PM work ', '2017-06-08', 5, 1),
(100, '  Event Management', 'It is Event Management  ', '2017-06-07', 4, 1),
(101, 'It is Event here ', 'This is a 45 Event ', '2017-06-06', 6, 1),
(102, '8 Event', 'Here is Message', '2017-06-08', 6, 1),
(103, ' Event 123', 'Message 1232', '2017-06-07', 6, 1),
(104, ' Today work edit', 'Work Description Edit', '2017-06-09', 2, 1),
(105, 'New Event ', 'Here it is message ', '2017-06-06', 2, 1),
(106, 'New Event', 'New Mesage', '2017-06-04', 9, 1),
(107, 'Event45', 'Message45', '2017-06-07', 1, 1),
(108, 'Event 456', 'Message 456', '2017-06-08', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('40b0ce3a3a459317ef53da8acc6491fd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:49.0) Gecko/20100101 Firefox/49.0', 1496723492, 'a:9:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:4:"name";s:15:"Admin Schmadmin";s:5:"email";s:17:"admin@example.com";s:6:"avatar";s:15:"assassin_avatar";s:7:"tagline";s:42:"They see me mowin...<br/>...my front lawn.";s:7:"isAdmin";s:1:"1";s:6:"teamId";s:1:"1";s:10:"isLoggedIn";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `body` varchar(320) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `userId`, `body`, `createdDate`) VALUES
(24, '1', 'Hello', '2017-06-01 08:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `section` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `section`) VALUES
(1, '12:00 -- 1:00'),
(2, '1:00 -- 2:00'),
(3, '2:00 -- 3:00'),
(4, '3:00 -- 4:00'),
(5, '4:00 -- 5:00'),
(6, '5:00 -- 6:00'),
(7, '6:00 -- 7:00'),
(8, '7:00 -- 8:00'),
(9, '8:00 - 9:00'),
(10, '9:00 -- 10:00'),
(11, '10:00 --  11:00'),
(12, '11:00 --12:00'),
(13, '12:00 -- 13:00'),
(14, '13:00-- 14:00'),
(15, '14:00 -- 15:00'),
(16, '15:00 -- 16:00'),
(17, '16:00 -- 17:00'),
(18, '17:00 -- 18:00'),
(19, '18:00 --19:00'),
(20, '19:00 -- 20:00'),
(21, '20:00 -- 21:00'),
(22, '21:00 -- 22:00'),
(23, '22:00 -- 23:00'),
(24, '23:00 -- 24:00');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(255) NOT NULL COMMENT 'id auto increment',
  `name` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endtime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `name`, `starttime`, `date`, `endtime`) VALUES
(38, '2nd Shift', '2:00 PM', '0000-00-00 00:00:00', '10:00PM'),
(43, '3rd Shift', '10:00 AM', '0000-00-00 00:00:00', '10:00 PM'),
(44, 'Day Shift', '8:00 AM', '0000-00-00 00:00:00', '8:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `teamId` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `shift_id` int(11) NOT NULL,
  `up_shift` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstName`, `lastName`, `avatar`, `tagline`, `teamId`, `isAdmin`, `shift_id`, `up_shift`) VALUES
(1, 'admin@example.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Admin', 'Schmadmin', 'assassin_avatar', 'They see me mowin...<br/>...my front lawn.', 1, 1, 44, 43),
(2, 'bb@example.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'bb', 'example', NULL, NULL, NULL, 0, 43, 0),
(3, 'jj@example.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'jj', 'Last', NULL, NULL, NULL, 0, 43, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id auto increment', AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
