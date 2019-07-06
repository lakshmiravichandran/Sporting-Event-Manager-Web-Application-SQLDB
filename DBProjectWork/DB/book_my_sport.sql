-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2018 at 09:22 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_my_sport`
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
  `name` varchar(20) NOT NULL DEFAULT 'Event Name',
  `event_date` datetime NOT NULL,
  `team1_id` int(11) NOT NULL,
  `team2_id` int(11) NOT NULL,
  `event_location` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soldout_datetime` datetime DEFAULT NULL,
  `r_remaining_seats` int(11) NOT NULL DEFAULT '100',
  `event_status` varchar(25) NOT NULL DEFAULT 'upcoming',
  `v_remaining_seats` int(11) NOT NULL DEFAULT '50'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_list`
--

INSERT INTO `event_list` (`event_id`, `name`, `event_date`, `team1_id`, `team2_id`, `event_location`, `create_datetime`, `soldout_datetime`, `r_remaining_seats`, `event_status`, `v_remaining_seats`) VALUES
(1, 'PPG Event 2019', '2018-11-19 20:30:00', 1, 2, 1, '2018-09-19 20:30:00', '2018-11-17 12:01:00', 0, 'completed', 50),
(2, 'PPG Event 2018', '2018-11-27 19:05:00', 3, 4, 2, '2018-09-27 19:05:00', '0000-00-00 00:00:00', 10, 'upcoming', 50);

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
  `contact_number` varchar(20) NOT NULL,
  `r_capacity` int(11) NOT NULL DEFAULT '50',
  `v_capacity` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_details`
--

INSERT INTO `field_details` (`field_id`, `field_name`, `field_location`, `City`, `State`, `Zipcode`, `Latitude`, `Longitude`, `contact_number`, `r_capacity`, `v_capacity`) VALUES
(1, 'Wrigley Field', '1060 West Addison Street', 'Chicago', 'Illinois', '60613', 41.948, -87.6557, '854-412-7589', 50, 100),
(2, 'PPG Paint Arena', '1001 Fifth Ave', 'Pittsburgh', 'Pennsylvania', '15219', 40.4398, -79.9879, '521-789-6958', 50, 100),
(3, 'Heinz Field', '100 Art Rooney Ave', 'Pittsburgh', 'Pennsylvania', '15212', 40.4468, -80.0158, '412-697-7150', 50, 100),
(4, 'Lincoln Financial Field', '1 Lincoln Financial Field Way', 'Philadelphia', 'Pennsylvania', '19148', 39.9008, -75.1675, '412-697-1111', 50, 100),
(5, 'Wells Fargo Center Philadelphia', '3601 S Broad St', 'Philadelphia', 'Pennsylvania', '19148', 39.9012, -75.172, '412-697-1112', 50, 100),
(6, 'Citizens Bank Park', '1 Citizens Bank Way', 'Philadelphia', 'Pennsylvania', '19148', 39.9061, -75.1665, '412-697-1113', 50, 100),
(7, 'McCarthy Stadium', '1900 W Olney Ave', 'Philadelphia', 'Pennsylvania', '19141', 40.0372, -75.1541, '412-697-1114', 50, 100),
(8, 'Hagan Arena', '2450 N 54th St', 'Philadelphia', 'Pennsylvania', '19131', 39.9957, -75.2351, '412-697-1115', 50, 100),
(9, 'Dodger Stadium', '1000 Vin Scully Ave', 'Los Angeles', 'California', '90012', 34.0739, -118.24, '412-697-1116', 50, 100),
(10, 'Staples Center', '1111 S Figueroa St', 'Los Angeles', 'California', '90015', 34.043, -118.267, '412-697-1117', 50, 100),
(11, 'Drake Stadium', '340 Bruin Walk', 'Los Angeles', 'California', '90095', 34.0716, -118.448, '412-697-1118', 50, 100),
(12, 'StubHub Center', '18400 S Avalon Blvd', 'Los Angeles', 'California', '90746', 33.8644, -118.261, '412-697-1119', 50, 100),
(13, 'LA Memorial Coliseum', '3911 S Figueroa St', 'Los Angeles', 'California', '90037', 34.0141, -118.288, '412-697-1120', 50, 100),
(14, 'Banc of California Stadium', '3939 S Figueroa St', 'Los Angeles', 'California', '90037', 34.0128, -118.285, '412-697-1121', 50, 100),
(16, 'Guaranteed Rate Field', '333 W 35th St', 'Chicago', 'Illinois', '60616', 41.8299, -87.6338, '412-697-1122', 50, 100),
(17, 'United Center', '1901 W Madison St', 'Chicago', 'Illinois', '60612', 41.8807, -87.6742, '412-697-1123', 50, 100),
(18, 'Soldier Field', '1410 Museum Campus Dr', 'Chicago', 'Illinois', '60605', 41.8623, -87.6167, '412-697-1124', 50, 100),
(19, 'Millennium Park', '201 E Randolph St', 'Chicago', 'Illinois', '60602', 41.8826, -87.6226, '412-697-1125', 50, 100),
(20, 'Credit Union 1 Arena', '525 S Racine Ave', 'Chicago', 'Illinois', '60607', 41.8749, -87.6561, '412-697-1126', 50, 100),
(21, 'Citi Field', '123-01 Roosevelt Ave', 'New York', 'New York', '11368', 40.7571, -73.8458, '412-697-1127', 50, 100),
(22, 'Yankee Stadium', '1 E 161st St', 'New York', 'New York', '10451', 40.8296, -73.9262, '412-697-1128', 50, 100),
(23, 'Richmond County Bank Ballpark', '75 Richmond Terrace', 'New York', 'New York', '10301', 40.6456, -74.0772, '412-697-1129', 50, 100),
(24, 'Madison Square Garden', '4 Pennsylvania Plaza', 'New York', 'New York', '10001', 40.7505, -73.9934, '412-697-1130', 50, 100),
(25, 'Red Bull Arena', '600 Cape May St', 'New York', 'New York', '07029', 40.7368, -74.1502, '412-697-1131', 50, 100),
(26, 'MetLife Stadium', '1 MetLife Stadium Dr', 'New York', 'New York', '07073', 40.8128, -74.0742, '412-697-1132', 50, 100),
(27, 'MCU Park', '1904 Surf Ave', 'New York', 'New York', '11224', 40.5745, -73.9843, '412-697-1133', 50, 100),
(28, 'Icahn Stadium', '20 Randalls Island', 'New York', 'New York', '10035', 40.793, -73.9244, '412-697-1134', 50, 100),
(29, 'Fenway Park', '4 Yawkey Way', 'Boston', 'Massachusetts', '02215', 42.3467, -71.0972, '412-697-1135', 50, 100),
(30, 'Boston Common', '139 Tremont St', 'Boston', 'Massachusetts', '02111', 42.355, -71.0655, '412-697-1136', 50, 100),
(31, 'TD Garden', '100 Legends Way', 'Boston', 'Massachusetts', '02114', 42.3662, -71.0621, '412-697-1137', 50, 100),
(32, 'Boston Public Garden', '4 Charles St', 'Boston', 'Massachusetts', '02116', 42.3542, -71.0704, '412-697-7151', 50, 100),
(33, 'PNC Park', '115 Federal St', 'Pittsburgh', 'Pennsylvania', '15212', 40.4469, 80.0057, '412-697-1138', 50, 100);

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
  `seat_category` enum('VIP','Regular') NOT NULL,
  `adult_price` int(11) NOT NULL DEFAULT '10',
  `child_price` int(11) NOT NULL DEFAULT '6'
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

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
(14, 'Borussia Dortmund', 'Soccer', 60, 20, 90),
(15, 'Boston Red Sox', 'Baseball', 55, 21, 78),
(16, 'Philadelphia Phillies', 'Baseball', 20, 30, 55),
(17, 'Mills-Denesik', 'Baseball', 144, 45, 394),
(18, 'Bailey, Boyle and Reichert', 'Baseball', 291, 61, 385),
(19, 'Powlowski Inc', 'Baseball', 287, 52, 399),
(20, 'Kris, Runolfsson and Schneider', 'Baseball', 200, 62, 385),
(27, 'Grant LLC', 'Baseball', 240, 63, 388),
(28, 'Howell LLC', 'Baseball', 46, 43, 372),
(29, 'McKenzie-McGlynn', 'Baseball', 172, 62, 374),
(30, 'Marks and Sons', 'Baseball', 167, 5, 372),
(31, 'DuBuque, Reilly and Conroy', 'Baseball', 267, 36, 383),
(32, 'Conn and Sons', 'Baseball', 253, 6, 389),
(33, 'Swaniawski-Renner', 'Baseball', 107, 45, 383),
(34, 'Halvorson, Smitham and Schmidt', 'Baseball', 242, 4, 386),
(35, 'Osinski Group', 'Baseball', 198, 51, 383),
(36, 'Kiehn-Gleichner', 'Baseball', 221, 38, 377),
(37, 'King and Sons', 'Baseball', 196, 34, 397),
(38, 'Stanton, Bogan and Lemke', 'Baseball', 71, 47, 376),
(39, 'Bernhard, Corwin and Rice', 'Baseball', 199, 1, 385),
(40, 'Spinka Inc', 'Baseball', 206, 48, 392),
(41, 'Hegmann-Bashirian', 'Baseball', 193, 29, 392),
(42, 'Lueilwitz-Grimes', 'Baseball', 51, 21, 378),
(86, 'Schoen, Simonis and O''Kon', 'Ice Hockey', 200, 63, 381),
(87, 'Wolf, Marquardt and Block', 'Ice Hockey', 62, 16, 374),
(88, 'Wiza-Legros', 'Ice Hockey', 115, 47, 372),
(89, 'Reynolds Inc', 'Ice Hockey', 104, 29, 375),
(90, 'Doyle-Larson', 'Ice Hockey', 290, 40, 400),
(91, 'Sauer LLC', 'Ice Hockey', 183, 10, 386),
(92, 'Sawayn-Heaney', 'Ice Hockey', 277, 9, 386),
(93, 'O''Conner Group', 'Ice Hockey', 242, 9, 378),
(94, 'Block LLC', 'Ice Hockey', 206, 51, 371),
(95, 'Kutch-Moen', 'Ice Hockey', 31, 58, 376),
(96, 'Wuckert-Kuhn', 'Ice Hockey', 245, 14, 382),
(97, 'Russel Group', 'Ice Hockey', 41, 44, 376),
(98, 'Bernhard-Lind', 'Ice Hockey', 95, 31, 385),
(99, 'Monahan-Collins', 'Ice Hockey', 124, 67, 396),
(100, 'Bartoletti-Jast', 'Ice Hockey', 262, 70, 399),
(101, 'Prohaska Inc', 'Ice Hockey', 122, 40, 392),
(102, 'Okuneva-Torphy', 'Ice Hockey', 133, 17, 372),
(103, 'Roob LLC', 'Ice Hockey', 177, 43, 396),
(104, 'Kozey, Grimes and Beer', 'Ice Hockey', 125, 67, 375),
(105, 'Haag LLC', 'Ice Hockey', 279, 38, 380),
(106, 'Yundt-Jakubowski', 'Cricket', 62, 14, 391),
(107, 'Mann-Rohan', 'Cricket', 245, 21, 379),
(108, 'Howell Group', 'Cricket', 127, 38, 391),
(109, 'Kuphal-Batz', 'Cricket', 107, 63, 399),
(110, 'Metz LLC', 'Cricket', 170, 20, 373),
(111, 'Streich, Waelchi and Zemlak', 'Cricket', 203, 9, 391),
(112, 'Rohan, Labadie and Emmerich', 'Cricket', 35, 27, 376),
(113, 'Oberbrunner, Purdy and Hermiston', 'Cricket', 220, 32, 400),
(114, 'Walter, Macejkovic and Schumm', 'Cricket', 142, 59, 388),
(115, 'Borer Inc', 'Cricket', 198, 36, 379),
(116, 'Keeling, Nienow and Schinner', 'Basketball', 97, 23, 384),
(117, 'Kris, Parker and Hyatt', 'Basketball', 69, 58, 383),
(118, 'Blanda-Yundt', 'Basketball', 180, 55, 383),
(119, 'Kessler LLC', 'Basketball', 52, 20, 378),
(120, 'Larson and Sons', 'Basketball', 105, 46, 389),
(121, 'McKenzie Inc', 'Basketball', 58, 2, 388),
(122, 'Marks-Gerlach', 'Basketball', 171, 16, 398),
(123, 'Rohan-Witting', 'Basketball', 236, 45, 380),
(124, 'Block-Lakin', 'Basketball', 31, 9, 396),
(125, 'Thiel-Mertz', 'Basketball', 273, 68, 393),
(126, 'Shanahan Inc', 'Basketball', 133, 2, 398),
(127, 'Oberbrunner, Steuber and Wyman', 'Basketball', 136, 38, 392),
(128, 'Heaney-Vandervort', 'Basketball', 282, 35, 385),
(129, 'Nitzsche, Breitenberg and Casper', 'Basketball', 107, 50, 395),
(130, 'Murphy Inc', 'Basketball', 155, 15, 395),
(131, 'Hettinger-Jerde', 'Basketball', 282, 53, 371),
(132, 'Rogahn Group', 'Basketball', 210, 48, 375),
(133, 'Ondricka, Nolan and Harber', 'Basketball', 267, 37, 380),
(134, 'Franecki-Ullrich', 'Basketball', 242, 51, 371),
(135, 'Grimes-Altenwerth', 'Basketball', 179, 45, 387),
(136, 'Jones Inc', 'Tennis', 177, 35, 371),
(137, 'Cormier, Lueilwitz and Lebsack', 'Tennis', 127, 10, 390),
(138, 'Bergnaum-Frami', 'Tennis', 34, 65, 375),
(139, 'O''Connell-McGlynn', 'Tennis', 99, 62, 380),
(140, 'Greenholt, Mayer and Goldner', 'Tennis', 39, 7, 380),
(141, 'Goyette-Hodkiewicz', 'Tennis', 250, 63, 392),
(142, 'Towne, Gerhold and Jenkins', 'Tennis', 112, 49, 396),
(143, 'Sawayn, Wolf and Moore', 'Tennis', 294, 33, 382),
(144, 'Murphy, Kub and Cartwright', 'Tennis', 294, 62, 399),
(145, 'Dicki, Schmeler and Wuckert', 'Tennis', 79, 26, 391),
(146, 'Wiza and Sons', 'Tennis', 99, 57, 387),
(147, 'Hilll-Considine', 'Tennis', 134, 6, 391),
(148, 'Graham LLC', 'Tennis', 201, 5, 390),
(149, 'Koss-Olson', 'Tennis', 35, 32, 396),
(150, 'Fritsch, Langworth and Tillman', 'Tennis', 170, 4, 392),
(151, 'Kemmer Inc', 'Tennis', 157, 3, 374),
(152, 'Kreiger and Sons', 'Tennis', 30, 54, 383),
(153, 'Bosco LLC', 'Tennis', 99, 11, 370),
(154, 'Upton Inc', 'Tennis', 132, 41, 386),
(155, 'Feeney-Morar', 'Tennis', 185, 15, 391);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `seat_id` int(11) NOT NULL,
  `adult_seats_booked` int(11) DEFAULT '0',
  `child_seats_booked` int(11) NOT NULL DEFAULT '0',
  `ticket_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `card_no` char(16) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

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
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `seat_details`
--
ALTER TABLE `seat_details`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
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
