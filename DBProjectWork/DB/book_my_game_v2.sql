-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 10:12 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_my_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `phone_number`, `username`) VALUES
(1, 'Melany', 'Cruickshank', '7908443468', 'rex.sauer@hotmail.com'),
(2, 'Rory', 'Champlin', '1955413832', 'pspencer@yahoo.com'),
(3, 'America', 'Rice', '1773388315', 'rory58@hotmail.com'),
(4, 'Chase', 'Wehner', '8743809224', 'hirthe.florine@gmail.com'),
(5, 'Garret', 'Collins', '2068179007', 'windler.jeremy@gmail.com'),
(6, 'Toni', 'Wiegand', '5102263116', 'monserrate59@hotmail.com'),
(7, 'Dayne', 'West', '7586625856', 'gia.cremin@gmail.com'),
(8, 'Ernest', 'Hackett', '450939219', 'gaylord.wolff@hotmail.com'),
(9, 'Ellis', 'Ferry', '1258861911', 'nova77@yahoo.com'),
(10, 'Hailie', 'Lynch', '2356036705', 'lehner.letha@gmail.com'),
(11, 'Freeman', 'Morar', '3412080784', 'toy.aaron@hotmail.com'),
(12, 'Madalyn', 'Champlin', '2293718960', 'bechtelar.elvera@hotmail.com'),
(13, 'Buster', 'Upton', '6749320477', 'gcollier@yahoo.com'),
(14, 'Vena', 'Beer', '6948793819', 'schultz.clark@yahoo.com'),
(15, 'Melyssa', 'Konopelski', '880958642', 'dgreen@hotmail.com'),
(16, 'Ezekiel', 'Kuhlman', '4009758513', 'ystracke@yahoo.com'),
(17, 'Kamille', 'Bashirian', '9365239008', 'initzsche@hotmail.com'),
(18, 'Chris', 'Hoeger', '7271312414', 'mbeer@gmail.com'),
(19, 'Ivy', 'Robel', '6199835883', 'schultz.brielle@gmail.com'),
(20, 'Rusty', 'Lang', '7248616707', 'fritchie@gmail.com'),
(21, 'Miller', 'O''Keefe', '9434108650', 'pcrooks@gmail.com'),
(22, 'Cortney', 'Frami', '4195540603', 'alfonso01@gmail.com'),
(23, 'Foster', 'Olson', '5175540070', 'ada21@gmail.com'),
(24, 'Fannie', 'Langworth', '1274351077', 'telly.borer@yahoo.com'),
(25, 'Nakia', 'Monahan', '7550385328', 'xpouros@gmail.com'),
(26, 'Terrill', 'Zemlak', '9782562474', 'verlie.witting@hotmail.com'),
(27, 'Marcos', 'Prohaska', '8648357386', 'shanny.pollich@gmail.com'),
(28, 'Anastasia', 'Jakubowski', '3179670288', 'uconn@gmail.com'),
(29, 'Brice', 'Ferry', '2830138700', 'qlesch@hotmail.com'),
(30, 'Roy', 'Ritchie', '6960022607', 'stewart50@hotmail.com'),
(31, 'George', 'Rogahn', '2312590251', 'omiller@hotmail.com'),
(32, 'Henderson', 'Hermiston', '2393596260', 'dina.white@gmail.com'),
(33, 'Zackery', 'Torp', '7160624004', 'jeromy.leannon@hotmail.com'),
(34, 'Uriel', 'Bogisich', '3705687788', 'clint.kub@hotmail.com'),
(35, 'Allison', 'Runte', '6915192580', 'jakubowski.ignacio@gmail.com'),
(36, 'Bette', 'Skiles', '9866311764', 'cecilia36@hotmail.com'),
(37, 'Armando', 'McLaughlin', '453989868', 'botsford.osbaldo@gmail.com'),
(38, 'Letha', 'Ebert', '8182111578', 'vanessa.bayer@yahoo.com'),
(39, 'Arnold', 'Mayer', '3733898322', 'orville50@yahoo.com'),
(40, 'Neal', 'Metz', '7451514396', 'rhianna.ruecker@hotmail.com'),
(41, 'Loyal', 'Jenkins', '426639355', 'lavonne.rippin@hotmail.com'),
(42, 'Neva', 'Corwin', '8857294302', 'erika98@gmail.com'),
(43, 'Jailyn', 'Schaefer', '2326856656', 'ruth14@yahoo.com'),
(44, 'Dejah', 'Leannon', '2899231184', 'memmerich@yahoo.com'),
(45, 'Dino', 'Kunze', '3928870521', 'kristofer82@yahoo.com'),
(46, 'King', 'Mosciski', '434721624', 'mupton@yahoo.com'),
(47, 'Reagan', 'Farrell', '5631596925', 'purdy.phyllis@hotmail.com'),
(48, 'Samanta', 'Stokes', '7876879321', 'kunde.claire@yahoo.com'),
(49, 'Mateo', 'Padberg', '7389187635', 'lulu37@yahoo.com'),
(50, 'Tierra', 'Dickens', '5682765138', 'qwalter@hotmail.com'),
(51, 'Aimee', 'Veum', '5652044177', 'greenholt.angie@yahoo.com'),
(52, 'Thaddeus', 'Russel', '9095685896', 'zackary.grady@hotmail.com'),
(53, 'Clara', 'Schamberger', '9711840245', 'clegros@hotmail.com'),
(54, 'Ernesto', 'Jakubowski', '2006565365', 'esta.littel@hotmail.com'),
(55, 'Theodora', 'Morar', '8692486900', 'hilbert.marks@gmail.com'),
(56, 'Zola', 'Predovic', '6383406426', 'keaton42@hotmail.com'),
(57, 'Dominic', 'Reynolds', '2842273367', 'hilll.amir@yahoo.com'),
(58, 'Easter', 'Hermann', '773887028', 'robel.vivienne@gmail.com'),
(59, 'Mckenzie', 'Crist', '8131396286', 'katelin18@yahoo.com'),
(60, 'Ila', 'O''Keefe', '5520288776', 'jswaniawski@hotmail.com'),
(61, 'Solon', 'Dach', '9907213295', 'vsauer@gmail.com'),
(62, 'Deborah', 'Orn', '4849724355', 'barrows.damon@gmail.com'),
(63, 'Genoveva', 'Champlin', '8437866', 'stoy@yahoo.com'),
(64, 'Scot', 'Shields', '6752498252', 'luettgen.izaiah@yahoo.com'),
(65, 'Marlen', 'Smitham', '8725517154', 'murray.leila@hotmail.com'),
(66, 'Renee', 'Steuber', '3079109881', 'wbartoletti@yahoo.com'),
(67, 'Kristian', 'Reinger', '4398270631', 'jayne.robel@gmail.com'),
(68, 'Madisen', 'D''Amore', '8140844162', 'hortense.bernhard@yahoo.com'),
(69, 'Thurman', 'Ziemann', '4305291278', 'vidal87@hotmail.com'),
(70, 'Jayne', 'Hermann', '6411535274', 'javonte.padberg@hotmail.com'),
(71, 'Suzanne', 'Bode', '7618493428', 'losinski@gmail.com'),
(72, 'Tomasa', 'Hegmann', '1639328300', 'hoeger.sheldon@hotmail.com'),
(73, 'Ruthie', 'Kuhic', '5517137674', 'rath.harmony@hotmail.com'),
(74, 'Vicky', 'Sauer', '5042952769', 'barton.violette@yahoo.com'),
(75, 'Hildegard', 'Sporer', '2357155657', 'jamal.nader@yahoo.com'),
(76, 'Bailee', 'Braun', '5516467643', 'woodrow37@gmail.com'),
(77, 'Ara', 'Howell', '1889728037', 'enolan@hotmail.com'),
(78, 'Hallie', 'Lehner', '5341501594', 'ypollich@gmail.com'),
(79, 'Sonya', 'Wilkinson', '5614096997', 'gnikolaus@hotmail.com'),
(80, 'Ashly', 'O''Kon', '1776588307', 'robel.ardella@hotmail.com'),
(81, 'Colt', 'Considine', '5788964326', 'jalen59@gmail.com'),
(82, 'Asa', 'Emard', '235415124', 'maximillian.dickinson@gmail.co'),
(83, 'Eloise', 'Gutmann', '5564507874', 'nframi@gmail.com'),
(84, 'Christiana', 'Gislason', '4253919580', 'carlos53@yahoo.com'),
(85, 'Sophie', 'Casper', '1924550533', 'kohler.darlene@yahoo.com'),
(86, 'Johnathan', 'Rippin', '7805706961', 'ycrist@hotmail.com'),
(87, 'Felicity', 'Nader', '4189484645', 'maye51@gmail.com'),
(88, 'Hortense', 'Rippin', '3661383031', 'irving29@gmail.com'),
(89, 'Leilani', 'Osinski', '4148532920', 'carlee.beahan@hotmail.com'),
(90, 'Ward', 'Wiza', '8630507676', 'ziemann.harvey@hotmail.com'),
(91, 'Brandy', 'Spinka', '6197254257', 'jayda37@yahoo.com'),
(92, 'Salvador', 'Senger', '2290457049', 'britney68@gmail.com'),
(93, 'Brody', 'Rosenbaum', '8543801731', 'ohane@gmail.com'),
(94, 'Serena', 'Greenholt', '3415160882', 'pedro86@gmail.com'),
(95, 'Christina', 'Kreiger', '1809537489', 'stamm.colby@gmail.com'),
(96, 'Jada', 'Mante', '937733817', 'thompson.gracie@hotmail.com'),
(97, 'Eunice', 'Corwin', '933726630', 'pink.stracke@yahoo.com'),
(98, 'Monserrate', 'Treutel', '5793162072', 'catalina.kunde@hotmail.com'),
(99, 'Percy', 'Daugherty', '4996820595', 'ufeest@gmail.com'),
(100, 'Margaret', 'Smitham', '7159753292', 'anya.glover@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `event_list`
--

CREATE TABLE IF NOT EXISTS `event_list` (
  `event_id` int(11) NOT NULL,
  `event_date` datetime NOT NULL,
  `team1_id` int(11) NOT NULL,
  `team2_id` int(11) NOT NULL,
  `event_location` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soldout_datetime` datetime DEFAULT NULL,
  `remaining_seats` int(11) NOT NULL,
  `event_status` varchar(25) NOT NULL DEFAULT 'upcoming'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_list`
--

INSERT INTO `event_list` (`event_id`, `event_date`, `team1_id`, `team2_id`, `event_location`, `create_datetime`, `soldout_datetime`, `remaining_seats`, `event_status`) VALUES
(1, '2018-11-19 20:30:00', 1, 2, 1, '2018-09-19 20:30:00', '2018-11-17 12:01:00', 0, 'completed'),
(2, '2018-11-27 19:05:00', 3, 4, 2, '2018-09-27 19:05:00', '0000-00-00 00:00:00', 10, 'upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `field_details`
--

CREATE TABLE IF NOT EXISTS `field_details` (
  `field_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_location` varchar(255) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Zipcode` char(5) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_details`
--

INSERT INTO `field_details` (`field_id`, `field_name`, `field_location`, `City`, `State`, `Zipcode`, `Latitude`, `Longitude`, `contact_number`) VALUES
(1, 'Wrigley Field', '1060 West Addison Street', 'Chicago', 'Illinois', '60613', 41.948, 87.6557, '854-412-7589'),
(2, 'PPG Paint Arena', '1001 Fifth Ave', 'Pittsburgh', 'Pennsylvania', '15219', 40.4398, 79.9879, '521-789-6958');

-- --------------------------------------------------------

--
-- Table structure for table `login_creds`
--

CREATE TABLE IF NOT EXISTS `login_creds` (
  `customer_id` int(11) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_creds`
--

INSERT INTO `login_creds` (`customer_id`, `pwd`) VALUES
(1, 'randompwd'),
(2, 'protectedpwd');

-- --------------------------------------------------------

--
-- Table structure for table `seat_details`
--

CREATE TABLE IF NOT EXISTS `seat_details` (
  `seat_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `seat_category` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE IF NOT EXISTS `team_details` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `sport_played` varchar(100) NOT NULL,
  `total_win` int(11) NOT NULL,
  `total_loss` int(11) NOT NULL,
  `total_match` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`team_id`, `team_name`, `sport_played`, `total_win`, `total_loss`, `total_match`) VALUES
(1, 'Manchester United', 'Soccer', 150, 70, 225),
(2, 'Liverpool', 'Soccer', 180, 50, 235),
(3, 'LA Angels', 'Baseball', 100, 70, 170),
(4, 'NY Yankees', 'Baseball', 150, 30, 182),
(5, 'India', 'Cricket', 200, 100, 320),
(6, 'Australia', 'Cricket', 210, 90, 315),
(7, 'Real Madrid', 'Soccer', 50, 20, 75),
(8, 'Barcelona', 'Soccer', 110, 20, 130),
(9, 'Athletico Madrid', 'Soccer', 200, 10, 222),
(10, 'Jueventus', 'Soccer', 75, 12, 90),
(11, 'PSG', 'Soccer', 210, 15, 230),
(12, 'LA Galaxy', 'Soccer', 55, 10, 69),
(13, 'Bayern Munchen', 'Soccer', 140, 40, 186),
(14, 'Borussia Dortmund', 'Soccer', 60, 20, 90);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `seats_booked` int(11) DEFAULT NULL,
  `ticket_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `unique_customer_id` (`customer_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `unique_phone_no` (`phone_number`);

--
-- Indexes for table `event_list`
--
ALTER TABLE `event_list`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `FK_team1` (`team1_id`),
  ADD KEY `FK_teamid2` (`team2_id`),
  ADD KEY `FK_eventlocation` (`event_location`);

--
-- Indexes for table `field_details`
--
ALTER TABLE `field_details`
  ADD PRIMARY KEY (`field_id`),
  ADD UNIQUE KEY `unique_field_name` (`field_name`),
  ADD UNIQUE KEY `unique_contact_no` (`contact_number`);

--
-- Indexes for table `login_creds`
--
ALTER TABLE `login_creds`
  ADD KEY `FK_customerid` (`customer_id`);

--
-- Indexes for table `seat_details`
--
ALTER TABLE `seat_details`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `unique_team_name` (`team_name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `event_list`
--
ALTER TABLE `event_list`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `field_details`
--
ALTER TABLE `field_details`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `seat_details`
--
ALTER TABLE `seat_details`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_list`
--
ALTER TABLE `event_list`
  ADD CONSTRAINT `FK_eventlocation` FOREIGN KEY (`event_location`) REFERENCES `field_details` (`field_id`),
  ADD CONSTRAINT `FK_team1` FOREIGN KEY (`team1_id`) REFERENCES `team_details` (`team_id`),
  ADD CONSTRAINT `FK_teamid2` FOREIGN KEY (`team2_id`) REFERENCES `team_details` (`team_id`);

--
-- Constraints for table `login_creds`
--
ALTER TABLE `login_creds`
  ADD CONSTRAINT `FK_customerid` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_custpwd` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
