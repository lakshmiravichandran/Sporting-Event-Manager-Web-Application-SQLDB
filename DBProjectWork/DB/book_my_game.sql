-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 03:10 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `phone_number`, `username`) VALUES
(1, 'August', 'Hanna', '854-456-7520', 'augusthanna@gmail.com'),
(2, 'Zaniyah', 'Mendoza', '562-745-4856', 'zanimen@yahoo.com'),
(3, 'Owen', 'Long', '785-412-8965', 'owenlong@gmail.com'),
(4, 'Axel', 'Hays', '852-156-7549', 'axelhays@gmail.com');

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
  `Zipcode` int(11) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_details`
--

INSERT INTO `field_details` (`field_id`, `field_name`, `field_location`, `City`, `State`, `Zipcode`, `Latitude`, `Longitude`, `contact_number`) VALUES
(1, 'Wrigley Field', '1060 West Addison Street', 'Chicago', 'Illinois', 60613, 41.948, 87.6557, '854-412-7589'),
(2, 'PPG Paint Arena', '1001 Fifth Ave', 'Pittsburgh', 'Pennsylvania', 15219, 40.4398, 79.9879, '521-789-6958');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`team_id`, `team_name`, `sport_played`, `total_win`, `total_loss`, `total_match`) VALUES
(1, 'Manchester United', 'Soccer', 150, 70, 225),
(2, 'Liverpool', 'Soccer', 180, 50, 235),
(3, 'LA Angels', 'Baseball', 100, 70, 170),
(4, 'NY Yankees', 'Baseball', 150, 30, 182),
(5, 'India', 'Cricket', 200, 100, 320),
(6, 'Australia', 'Cricket', 210, 90, 315);

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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
