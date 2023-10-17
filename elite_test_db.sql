-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 03:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elite_test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales` int(11) NOT NULL,
  `last_update` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `year`, `name`, `sales`, `last_update`, `cover_image`) VALUES
(2, 2, '220117', 'Complete with You: Special Album', 43058, '220131', 'images/1697509101.jpg'),
(3, 3, '211005', 'Savage', 19629, '220430', ''),
(4, 4, '220214', 'Horn', 58641, '220228', ''),
(5, 5, '211210', 'Zero: Fever Epilogue', 3578, '220131', ''),
(6, 6, '220330', 'Intersection: Blaze', 16801, '220430', ''),
(7, 7, '220118', 'B', 87540, '220131', ''),
(8, 8, '220302', '2', 6933, '220331', ''),
(9, 9, '220223', 'The Collective Soul and Unconscious: Chapter One', 66885, '220430', ''),
(10, 10, '220103', 'Bobbin', 17719, '220131', ''),
(11, 11, '220420', 'Seoul', 2596, '220430', ''),
(12, 12, '220315', 'Thank You', 33605, '220331', ''),
(13, 13, '220221', 'Be Together', 121528, '220331', ''),
(14, 14, '220117', 'Smiley', 84346, '220331', ''),
(15, 15, '220322', 'Liberty: In Our Cosmos Part.2', 123922, '220430', ''),
(16, 16, '220302', 'Cherry Wish', 20250, '220331', ''),
(17, 17, '220126', 'Love', 41148, '220131', ''),
(18, 18, '220412', 'Chase, Ep.2-Maum', 118583, '220430', ''),
(19, 19, '220412', 'Apocalypse: Save Us', 94706, '220430', ''),
(20, 20, '220117', 'Villian', 37535, '220430', ''),
(21, 21, '220427', 'Roar', 48695, '220430', ''),
(22, 22, '211012', 'Dimension: Dilemma', 27591, '220430', ''),
(23, 22, '220110', 'Dimension: Answer', 621425, '220430', ''),
(24, 23, '220411', 'Book of Anxiety Chapter1. 21st Century Boys', 71584, '220430', ''),
(25, 24, '220214', 'Epik High is Here', 5382, '220228', ''),
(26, 25, '220107', 'There and Back Again', 2183, '220430', ''),
(27, 26, '211201', 'Return of the Girl', 2450, '220131', ''),
(28, 27, '220117', 'Midnight Guest', 120245, '220331', ''),
(29, 28, '220314', 'I Never Die', 198589, '220430', ''),
(30, 29, '220407', 'Arcade: V', 9311, '220430', ''),
(31, 30, '220209', 'You', 18717, '220228', ''),
(32, 31, '220321', 'Daydream', 86293, '220430', ''),
(33, 32, '220404', 'Love in Bloom', 3181, '220430', ''),
(34, 33, '211201', 'Eleven', 37284, '220430', ''),
(35, 33, '220405', 'Love Dive', 440067, '220430', ''),
(36, 34, '220117', 'Restore', 57401, '220228', ''),
(37, 35, '220414', 'Just Begun', 51504, '220430', ''),
(38, 36, '211130', 'Peaches', 5373, '220131', ''),
(39, 37, '220104', 'Winter Special Album: W', 18305, '220131', ''),
(40, 38, '220103', 'First Impact', 271048, '220430', ''),
(41, 39, '220315', 'Voyager', 141407, '220430', ''),
(42, 40, '211228', 'The Letter', 9639, '220131', ''),
(43, 41, '220317', 'Dimension', 55470, '220430', ''),
(44, 42, '220422', 'Savior', 28082, '220430', ''),
(45, 43, '220307', 'Reve: 3rd Desire', 67957, '220331', ''),
(46, 44, '220110', 'Illusoin', 51754, '220131', ''),
(47, 45, '220331', 'History of Kingdom: Pt. 4: Dann', 19450, '220430', ''),
(48, 46, '220404', 'Color', 55923, '220430', ''),
(49, 47, '220125', 'Love Story (4 Season Project 季)', 37215, '220228', ''),
(50, 48, '220324', 'Same Spot', 7673, '220331', ''),
(51, 49, '211124', 'Even if it becomes ruins', 7640, '220228', ''),
(52, 50, '210910', 'Lalisa', 73336, '220430', ''),
(53, 51, '220117', 'Moonlight', 3705, '220131', ''),
(54, 52, '220113', 'Devil', 21831, '220228', ''),
(55, 53, '220112', 'Marvelous', 48067, '220131', ''),
(56, 54, '220427', 'My', 90064, '220430', ''),
(57, 55, '211119', 'No Limit', 23015, '220228', ''),
(58, 55, '220426', 'Shape of Love', 284668, '220430', ''),
(59, 56, '220315', 'Refuge', 144205, '220430', ''),
(60, 57, '220119', '6equence', 78120, '220228', ''),
(61, 57, '220428', 'CITT: Cheese in the Trap', 86508, '220430', ''),
(62, 58, '210917', 'Sticker', 31194, '220430', ''),
(63, 58, '211025', 'Favorite', 30331, '220331', ''),
(64, 59, '211214', 'Universe', 118633, '220430', ''),
(65, 60, '220328', 'Glitch Mode', 1649993, '220430', ''),
(66, 61, '220330', 'New World', 3618, '220430', ''),
(67, 62, '220222', 'Ad Mare', 406936, '220430', ''),
(68, 63, '220315', 'Need & Bubble: Nu\'est the Best Album', 63446, '220331', ''),
(69, 64, '220328', 'Real Love', 66912, '220430', ''),
(70, 65, '220105', 'Love Me Like', 86941, '220131', ''),
(71, 66, '220411', 'Dice', 119006, '220430', ''),
(72, 67, '220104', 'Planet Nine: Voyager', 18075, '220228', ''),
(73, 68, '211203', 'Goosebumps', 4396, '220131', ''),
(74, 69, '220114', 'Instint, Pt.2', 49362, '220131', ''),
(75, 70, '220103', 'Disharmony: Find Out', 91969, '220131', ''),
(76, 71, '220124', 'In:Vite U', 90114, '220228', ''),
(77, 72, '220329', 'Memem', 32266, '220331', ''),
(78, 73, '220208', 'Love & Fight', 10359, '220228', ''),
(79, 74, '220321', 'The Reve Festival 2022: Feel My Rhythm', 560838, '220430', ''),
(80, 75, '220228', 'Yellow Punch', 20055, '220430', ''),
(81, 76, '211022', 'Attacca', 30049, '220430', ''),
(82, 77, '220316', 'Face', 43599, '220430', ''),
(83, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 56940, '220131', ''),
(84, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 12971, '220331', ''),
(85, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 5974, '220331', ''),
(86, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 74162, '220331', ''),
(87, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 74087, '220331', ''),
(88, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 41833, '220331', ''),
(89, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 5265, '220131', ''),
(90, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 62545, '220331', ''),
(91, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 14336, '220131', ''),
(92, 78, '211227', '2021 Winter SMTOWN: SMCU Express', 2218, '220131', ''),
(93, 79, '220404', 'Gray Suit', 186465, '220430', ''),
(94, 80, '220221', 'Young-Luv.com', 182131, '220430', ''),
(95, 81, '211129', 'Christmas EveL', 14418, '220430', ''),
(96, 81, '220318', 'Oddinary', 1000088, '220430', ''),
(97, 82, '220228', 'The Road: Winter for Spring', 142663, '220430', ''),
(98, 83, '211209', 'Countdown Zero (Epilogue)', 8458, '220131', ''),
(99, 84, '220214', 'INVU', 179611, '220430', ''),
(100, 85, '220302', 'It\'s Me, It\'s We', 82307, '220430', ''),
(101, 86, '220310', 'Limited Edition \'1TAN\'', 8870, '220430', ''),
(102, 87, '211101', 'Maverick', 5566, '220228', ''),
(103, 87, '220318', 'Webtoon Level Up Alone (OST)', 10573, '220331', ''),
(104, 88, '220215', 'The Second Step: Chapter One', 668539, '220430', ''),
(105, 89, '220105', 'Blue Set Chapter 1. Tracks', 6170, '220131', ''),
(106, 90, '211217', 'Formula of Love: OT=<3', 8293, '220331', ''),
(107, 91, '220103', 'Novella', 31415, '220430', ''),
(108, 92, '220425', 'Serioues O-Round 3: Whole', 97187, '220430', ''),
(109, 93, '220118', 'Chronograph', 60959, '220228', ''),
(110, 94, '220210', 'Beam of Prism', 43638, '220228', ''),
(111, 95, '220307', 'Play Game: Awake', 81537, '220331', ''),
(112, 96, '220316', 'Love Pt. 1: First Love', 119853, '220331', ''),
(113, 97, '220117', 'Whee', 69470, '220131', ''),
(114, 98, '220216', 'Obsession', 56627, '220331', ''),
(115, 99, '220210', 'Pilmography', 33668, '220228', ''),
(116, 100, '220105', 'Super Yuppers!', 15135, '220131', ''),
(117, 101, '220330', 'End Theory Final Ed.', 7001, '220331', ''),
(118, 102, '220427', 'Miro', 6595, '220430', ''),
(119, 103, '220422', 'Youni-Birth', 21927, '220430', ''),
(120, 104, '220121', 'Rec.', 22970, '220131', '');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(2, 'AB6IX'),
(3, 'aespa'),
(4, 'Apink'),
(5, 'ATEEZ'),
(6, 'BAE173'),
(7, 'BamBam'),
(8, 'Bang Yongguk'),
(9, 'Billlie'),
(10, 'Blitzers'),
(11, 'Bolbbalgan4'),
(12, 'Brave Girls'),
(13, 'BTOB'),
(14, 'Choi Yena'),
(15, 'Cravity'),
(16, 'Cherry Bullet'),
(17, 'Def.'),
(18, 'DKZ'),
(19, 'Dreamcatcher'),
(20, 'Drippin'),
(21, 'E\'LAST'),
(22, 'Enhypen'),
(23, 'Epex'),
(24, 'Epik High'),
(25, 'Eric Nam'),
(26, 'Everglow'),
(27, 'fromis_9'),
(28, '(G)I-dle'),
(29, 'Ghost9'),
(30, 'Ha Sungwoon'),
(31, 'Highlight'),
(32, 'ILY:1'),
(33, 'IVE'),
(34, 'Jinjin & Rocky'),
(35, 'Just B'),
(36, 'Kai'),
(37, 'Kang Hyewon'),
(38, 'Kep1er'),
(39, 'Kihyun'),
(40, 'Kim Jaehwan'),
(41, 'Kim Junsu'),
(42, 'Kim Sungkyu'),
(43, 'Kim Wooseok'),
(44, 'Kim Yohan'),
(45, 'Kingdom'),
(46, 'Kwon Eunbi'),
(47, 'Kyuhyun'),
(48, 'Lee Seokhoon'),
(49, 'Lee Seungyoon'),
(50, 'Lisa'),
(51, 'LUNA'),
(52, 'Max Changmin'),
(53, 'Mirae'),
(54, 'Miyeon'),
(55, 'Monsta X'),
(56, 'Moonbin & Sanha'),
(57, 'Moonbyul'),
(58, 'NCT 127'),
(59, 'NCT 2021'),
(60, 'NCT Dream'),
(61, 'NINE.i'),
(62, 'NMIXX'),
(63, 'NU\'EST'),
(64, 'Oh My Girl'),
(65, 'Omega X'),
(66, 'Onew'),
(67, 'ONEWE'),
(68, 'ONF'),
(69, 'OnlyOneOf'),
(70, 'P1Harmony'),
(71, 'Pentagon'),
(72, 'Purple Kiss'),
(73, 'Ravi'),
(74, 'Red Velvet'),
(75, 'Rocket Punch'),
(76, 'Seventeen'),
(77, 'Solar'),
(78, 'SMTOWN'),
(79, 'Suho'),
(80, 'StayC'),
(81, 'Stray Kids'),
(82, 'Super Junior'),
(83, 'Super Junior - D&E'),
(84, 'Taeyeon'),
(85, 'Tempest'),
(86, 'Tan'),
(87, 'The Boyz'),
(88, 'Treasure'),
(89, 'Trendz'),
(90, 'Twice'),
(91, 'UP10TION'),
(92, 'Verivery'),
(93, 'Victon'),
(94, 'Viviz'),
(95, 'Weeekly'),
(96, 'WEi'),
(97, 'Wheein'),
(98, 'Wonho'),
(99, 'Wonpil'),
(100, 'WJSN Chocome'),
(101, 'Younha'),
(102, 'Yoon Jisung'),
(103, 'Younite'),
(104, 'Yuju');

-- --------------------------------------------------------

--
-- Table structure for table `data_reference__album_sales_`
--

CREATE TABLE `data_reference__album_sales_` (
  `Artist` varchar(18) DEFAULT NULL,
  `Album` varchar(48) DEFAULT NULL,
  `2022_Sales` varchar(10) DEFAULT NULL,
  `Date_Released` varchar(13) DEFAULT NULL,
  `Last_Update` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_reference__album_sales_`
--

INSERT INTO `data_reference__album_sales_` (`Artist`, `Album`, `2022_Sales`, `Date_Released`, `Last_Update`) VALUES
('Artist', 'Album', '2022 Sales', 'Date Released', 'Last Update'),
('AB6IX', 'Complete with You: Special Album', '43058.00', '220117', '220131'),
('aespa', 'Savage', '19629.00', '211005', '220430'),
('Apink', 'Horn', '58641.00', '220214', '220228'),
('ATEEZ', 'Zero: Fever Epilogue', '3578.00', '211210', '220131'),
('BAE173', 'Intersection: Blaze', '16801.00', '220330', '220430'),
('BamBam', 'B', '87540.00', '220118', '220131'),
('Bang Yongguk', '2', '6933.00', '220302', '220331'),
('Billlie', 'The Collective Soul and Unconscious: Chapter One', '66885.00', '220223', '220430'),
('Blitzers', 'Bobbin', '17719.00', '220103', '220131'),
('Bolbbalgan4', 'Seoul', '2596.00', '220420', '220430'),
('Brave Girls', 'Thank You', '33605.00', '220315', '220331'),
('BTOB', 'Be Together', '121528.00', '220221', '220331'),
('Choi Yena', 'Smiley', '84346.00', '220117', '220331'),
('Cravity', 'Liberty: In Our Cosmos Part.2', '123922.00', '220322', '220430'),
('Cherry Bullet', 'Cherry Wish', '20250.00', '220302', '220331'),
('Def.', 'Love', '41148.00', '220126', '220131'),
('DKZ', 'Chase, Ep.2-Maum', '118583.00', '220412', '220430'),
('Dreamcatcher', 'Apocalypse: Save Us', '94706.00', '220412', '220430'),
('Drippin', 'Villian', '37535.00', '220117', '220430'),
('E\'LAST', 'Roar', '48695.00', '220427', '220430'),
('Enhypen', 'Dimension: Dilemma', '27591.00', '211012', '220430'),
('Enhypen', 'Dimension: Answer', '621425.00', '220110', '220430'),
('Epex', 'Book of Anxiety Chapter1. 21st Century Boys', '71584.00', '220411', '220430'),
('Epik High', 'Epik High is Here', '5382.00', '220214', '220228'),
('Eric Nam', 'There and Back Again', '2183.00', '220107', '220430'),
('Everglow', 'Return of the Girl', '2450.00', '211201', '220131'),
('fromis_9', 'Midnight Guest', '120245.00', '220117', '220331'),
('(G)I-dle', 'I Never Die', '198589.00', '220314', '220430'),
('Ghost9', 'Arcade: V', '9311.00', '220407', '220430'),
('Ha Sungwoon', 'You', '18717.00', '220209', '220228'),
('Highlight', 'Daydream', '86293.00', '220321', '220430'),
('ILY:1', 'Love in Bloom', '3181.00', '220404', '220430'),
('IVE', 'Eleven', '37284.00', '211201', '220430'),
('IVE', 'Love Dive', '440067.00', '220405', '220430'),
('Jinjin & Rocky', 'Restore', '57401.00', '220117', '220228'),
('Just B', 'Just Begun', '51504.00', '220414', '220430'),
('Kai', 'Peaches', '5373.00', '211130', '220131'),
('Kang Hyewon', 'Winter Special Album: W', '18305.00', '220104', '220131'),
('Kep1er', 'First Impact', '271048.00', '220103', '220430'),
('Kihyun', 'Voyager', '141407.00', '220315', '220430'),
('Kim Jaehwan', 'The Letter', '9639.00', '211228', '220131'),
('Kim Junsu', 'Dimension', '55470.00', '220317', '220430'),
('Kim Sungkyu', 'Savior', '28082.00', '220422', '220430'),
('Kim Wooseok', 'Reve: 3rd Desire', '67957.00', '220307', '220331'),
('Kim Yohan', 'Illusoin', '51754.00', '220110', '220131'),
('Kingdom', 'History of Kingdom: Pt. 4: Dann', '19450.00', '220331', '220430'),
('Kwon Eunbi', 'Color', '55923.00', '220404', '220430'),
('Kyuhyun', 'Love Story (4 Season Project 季)', '37215.00', '220125', '220228'),
('Lee Seokhoon', 'Same Spot', '7673.00', '220324', '220331'),
('Lee Seungyoon', 'Even if it becomes ruins', '7640.00', '211124', '220228'),
('Lisa', 'Lalisa', '73336.00', '210910', '220430'),
('LUNA', 'Moonlight', '3705.00', '220117', '220131'),
('Max Changmin', 'Devil', '21831.00', '220113', '220228'),
('Mirae', 'Marvelous', '48067.00', '220112', '220131'),
('Miyeon', 'My', '90064.00', '220427', '220430'),
('Monsta X', 'No Limit', '23015.00', '211119', '220228'),
('Monsta X', 'Shape of Love', '284668.00', '220426', '220430'),
('Moonbin & Sanha', 'Refuge', '144205.00', '220315', '220430'),
('Moonbyul', '6equence', '78120.00', '220119', '220228'),
('Moonbyul', 'CITT: Cheese in the Trap', '86508.00', '220428', '220430'),
('NCT 127', 'Sticker', '31194.00', '210917', '220430'),
('NCT 127', 'Favorite', '30331.00', '211025', '220331'),
('NCT 2021', 'Universe', '118633.00', '211214', '220430'),
('NCT Dream', 'Glitch Mode', '1649993.00', '220328', '220430'),
('NINE.i', 'New World', '3618.00', '220330', '220430'),
('NMIXX', 'Ad Mare', '406936.00', '220222', '220430'),
('NU\'EST', 'Need & Bubble: Nu\'est the Best Album', '63446.00', '220315', '220331'),
('Oh My Girl', 'Real Love', '66912.00', '220328', '220430'),
('Omega X', 'Love Me Like', '86941.00', '220105', '220131'),
('Onew', 'Dice', '119006.00', '220411', '220430'),
('ONEWE', 'Planet Nine: Voyager', '18075.00', '220104', '220228'),
('ONF', 'Goosebumps', '4396.00', '211203', '220131'),
('OnlyOneOf', 'Instint, Pt.2', '49362.00', '220114', '220131'),
('P1Harmony', 'Disharmony: Find Out', '91969.00', '220103', '220131'),
('Pentagon', 'In:Vite U', '90114.00', '220124', '220228'),
('Purple Kiss', 'Memem', '32266.00', '220329', '220331'),
('Ravi', 'Love & Fight', '10359.00', '220208', '220228'),
('Red Velvet', 'The Reve Festival 2022: Feel My Rhythm', '560838.00', '220321', '220430'),
('Rocket Punch', 'Yellow Punch', '20055.00', '220228', '220430'),
('Seventeen', 'Attacca', '30049.00', '211022', '220430'),
('Solar', 'Face', '43599.00', '220316', '220430'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '56940.00', '211227', '220131'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '12971.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '5974.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '74162.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '74087.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '41833.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '5265.00', '211227', '220131'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '62545.00', '211227', '220331'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '14336.00', '211227', '220131'),
('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '2218.00', '211227', '220131'),
('Suho', 'Gray Suit', '186465.00', '220404', '220430'),
('StayC', 'Young-Luv.com', '182131.00', '220221', '220430'),
('Stray Kids', 'Christmas EveL', '14418.00', '211129', '220430'),
('Stray Kids', 'Oddinary', '1000088.00', '220318', '220430'),
('Super Junior', 'The Road: Winter for Spring', '142663.00', '220228', '220430'),
('Super Junior - D&E', 'Countdown Zero (Epilogue)', '8458.00', '211209', '220131'),
('Taeyeon', 'INVU', '179611.00', '220214', '220430'),
('Tempest', 'It\'s Me, It\'s We', '82307.00', '220302', '220430'),
('Tan', 'Limited Edition \'1TAN\'', '8870.00', '220310', '220430'),
('The Boyz', 'Maverick', '5566.00', '211101', '220228'),
('The Boyz', 'Webtoon Level Up Alone (OST)', '10573.00', '220318', '220331'),
('Treasure', 'The Second Step: Chapter One', '668539.00', '220215', '220430'),
('Trendz', 'Blue Set Chapter 1. Tracks', '6170.00', '220105', '220131'),
('Twice', 'Formula of Love: OT=<3', '8293.00', '211217', '220331'),
('UP10TION', 'Novella', '31415.00', '220103', '220430'),
('Verivery', 'Serioues O-Round 3: Whole', '97187.00', '220425', '220430'),
('Victon', 'Chronograph', '60959.00', '220118', '220228'),
('Viviz', 'Beam of Prism', '43638.00', '220210', '220228'),
('Weeekly', 'Play Game: Awake', '81537.00', '220307', '220331'),
('WEi', 'Love Pt. 1: First Love', '119853.00', '220316', '220331'),
('Wheein', 'Whee', '69470.00', '220117', '220131'),
('Wonho', 'Obsession', '56627.00', '220216', '220331'),
('Wonpil', 'Pilmography', '33668.00', '220210', '220228'),
('WJSN Chocome', 'Super Yuppers!', '15135.00', '220105', '220131'),
('Younha', 'End Theory Final Ed.', '7001.00', '220330', '220331'),
('Yoon Jisung', 'Miro', '6595.00', '220427', '220430'),
('Younite', 'Youni-Birth', '21927.00', '220422', '220430'),
('Yuju', 'Rec.', '22970.00', '220121', '220131');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_10_16_220752_create_artists_table', 2),
(8, '2023_10_16_220827_create_albums_table', 2),
(9, '2023_10_17_021316_cover_image', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '57487e0d8c103459abcf87c983f82f58960cde21133d00c4a266e86fd49f5e95', '[\"*\"]', NULL, NULL, '2023-10-16 10:43:27', '2023-10-16 10:43:27'),
(2, 'App\\Models\\User', 1, 'token', '1663cd9905258708e25012119c49165e8086e837ac8fc68f7dbe456ef0f337bc', '[\"*\"]', NULL, NULL, '2023-10-16 10:48:41', '2023-10-16 10:48:41'),
(3, 'App\\Models\\User', 1, 'token', 'e37de22cf7a502503cf2f9d5ab10c736084701a3318781a0aa1403ae2d9fb93b', '[\"*\"]', '2023-10-16 11:09:44', NULL, '2023-10-16 10:59:28', '2023-10-16 11:09:44'),
(4, 'App\\Models\\User', 1, 'token', '1fd482c9e6c29e083d8fca3945f3ec0fe65140e17e6db052b7a0366f5baafad9', '[\"*\"]', '2023-10-16 11:10:03', NULL, '2023-10-16 11:10:00', '2023-10-16 11:10:03'),
(5, 'App\\Models\\User', 1, 'token', 'e7e1f8f6f221de8bb0c0b04c5aa2fd1cbf34e5b690c45c458b79528c667850b6', '[\"*\"]', '2023-10-16 11:11:49', NULL, '2023-10-16 11:11:02', '2023-10-16 11:11:49'),
(6, 'App\\Models\\User', 1, 'token', '936f743ecc3f2e88134f2ab0d5c9564d0a6c1b78c6b1fdd8097bb4f9f614446b', '[\"*\"]', NULL, NULL, '2023-10-16 12:24:26', '2023-10-16 12:24:26'),
(7, 'App\\Models\\User', 1, 'token', 'a884017e6706393ec30f097c77988c539a730f9885708eb1f721c6b7f7ed21b8', '[\"*\"]', NULL, NULL, '2023-10-16 12:29:27', '2023-10-16 12:29:27'),
(8, 'App\\Models\\User', 1, 'token', 'a902a34969789b7399e1f3183ffb78b89ed0388b8a0e143ac7665c3108f0ffb1', '[\"*\"]', NULL, NULL, '2023-10-16 12:29:28', '2023-10-16 12:29:28'),
(9, 'App\\Models\\User', 1, 'token', 'd9f033b4aafb4e64c29eaee95e70c007c47d13dec03a40c45b8863429531d00b', '[\"*\"]', NULL, NULL, '2023-10-16 12:29:47', '2023-10-16 12:29:47'),
(10, 'App\\Models\\User', 1, 'token', '58258fc86e46d07f446bf78902a7adffad4427310eb58614319ac66192ae300a', '[\"*\"]', NULL, NULL, '2023-10-16 12:50:25', '2023-10-16 12:50:25'),
(11, 'App\\Models\\User', 1, 'token', '104846cae400f635eecc2dd4539137263fa5b799e0f8a892f9adda8ded12070b', '[\"*\"]', NULL, NULL, '2023-10-16 12:50:30', '2023-10-16 12:50:30'),
(12, 'App\\Models\\User', 1, 'token', '58c779a248b3550fcc074fcd6568bd71508c6e58b314900a684efb3aefca1efd', '[\"*\"]', NULL, NULL, '2023-10-16 12:52:45', '2023-10-16 12:52:45'),
(13, 'App\\Models\\User', 1, 'token', '98248c671da7c4980384844681afe67462a887ede6042b22202e04c3d5eacc36', '[\"*\"]', NULL, NULL, '2023-10-16 12:56:35', '2023-10-16 12:56:35'),
(14, 'App\\Models\\User', 1, 'token', '7926e83eda8843c0be5382d47d8aa5db665a543583e137c2b66a31098ca06b51', '[\"*\"]', NULL, NULL, '2023-10-16 13:00:36', '2023-10-16 13:00:36'),
(15, 'App\\Models\\User', 1, 'token', '2793eee2a35d33e9319eeaa3939cae989c19cf538509b6d352183e7c3b9b46cb', '[\"*\"]', NULL, NULL, '2023-10-16 13:04:20', '2023-10-16 13:04:20'),
(16, 'App\\Models\\User', 1, 'token', 'fb8ef09a02ec5a8aedc4e5c3e721c61180e90bf31eef8c854f0e6f7c33721607', '[\"*\"]', NULL, NULL, '2023-10-16 13:04:36', '2023-10-16 13:04:36'),
(17, 'App\\Models\\User', 1, 'token', '8e513ef026109766549a48f38f782a3c41603fa0e4be094d281cd1b4d70ed3f6', '[\"*\"]', NULL, NULL, '2023-10-16 13:05:21', '2023-10-16 13:05:21'),
(18, 'App\\Models\\User', 1, 'token', '4ecfa673582e3e7e0b516cca64a70f4b59b7a8a1c6f677d9d5850d17fcd7d786', '[\"*\"]', NULL, NULL, '2023-10-16 13:07:31', '2023-10-16 13:07:31'),
(19, 'App\\Models\\User', 1, 'token', '6ac3602c97841c0c5b31b42915c29730e914731f35e6b4130a45758ca9d89da8', '[\"*\"]', NULL, NULL, '2023-10-16 13:08:18', '2023-10-16 13:08:18'),
(20, 'App\\Models\\User', 1, 'token', 'a95b8763c145c63fcce807c8d3c34b4feb01a0855c704fc62387212b6fbac63c', '[\"*\"]', '2023-10-16 13:20:59', NULL, '2023-10-16 13:08:49', '2023-10-16 13:20:59'),
(21, 'App\\Models\\User', 1, 'token', '2748ace7be4733fdc021eb9121533c878d99b11d61e4033c20c0f4f772088c5a', '[\"*\"]', NULL, NULL, '2023-10-16 13:09:48', '2023-10-16 13:09:48'),
(22, 'App\\Models\\User', 1, 'token', 'fe7bedd353e4ae3ea5910c17e562f8c9356621b773b371d620b64e540b1ab371', '[\"*\"]', NULL, NULL, '2023-10-16 13:10:08', '2023-10-16 13:10:08'),
(23, 'App\\Models\\User', 1, 'token', 'a5de13a9103551bc349584a04ccedef3938494ef5b92ae3b8fca4dafa7bad309', '[\"*\"]', NULL, NULL, '2023-10-16 13:12:12', '2023-10-16 13:12:12'),
(24, 'App\\Models\\User', 1, 'token', 'fdca777415a9d055fe798eac306097beee06aa2d206c7e6829ad60f9cbb923d2', '[\"*\"]', NULL, NULL, '2023-10-16 13:13:47', '2023-10-16 13:13:47'),
(25, 'App\\Models\\User', 1, 'token', '13dfdd779d96e25c72aeefc343eb54207816591cb478e6e44aa0ed3fdf9e8da8', '[\"*\"]', NULL, NULL, '2023-10-16 13:14:19', '2023-10-16 13:14:19'),
(26, 'App\\Models\\User', 1, 'token', '6ddc6c0e68266334ab8c0e81cecc765506bdb1021aa861f0cd37bc09e89579bc', '[\"*\"]', NULL, NULL, '2023-10-16 13:17:12', '2023-10-16 13:17:12'),
(27, 'App\\Models\\User', 1, 'token', '8a4afa55319c4f0bc9395e388e3fae3d6deec6aaed95c2d91bd75ce2769c40c7', '[\"*\"]', NULL, NULL, '2023-10-16 13:19:31', '2023-10-16 13:19:31'),
(28, 'App\\Models\\User', 1, 'token', 'c4747fad2fb9bb76edf2385b4419fd1c83c1ceeb73d7d8c74dfe3aa0a7a5a64d', '[\"*\"]', NULL, NULL, '2023-10-16 13:22:13', '2023-10-16 13:22:13'),
(29, 'App\\Models\\User', 1, 'token', 'c5a0cb93dbdc44bdd911b8ebd32c6de8443bf6c7ba051a047db0f75a8c2c6f36', '[\"*\"]', NULL, NULL, '2023-10-16 13:25:12', '2023-10-16 13:25:12'),
(30, 'App\\Models\\User', 1, 'token', 'bf15db6c143ed7313a953596d792c26cc69565d7b0f0d1212334547b6edeea62', '[\"*\"]', NULL, NULL, '2023-10-16 13:28:12', '2023-10-16 13:28:12'),
(31, 'App\\Models\\User', 1, 'token', 'f1c14d0d0de30f5ba59262f0a50a76572a8c3fe204a35ea98bc9f014402f24d3', '[\"*\"]', NULL, NULL, '2023-10-16 13:33:16', '2023-10-16 13:33:16'),
(32, 'App\\Models\\User', 1, 'token', 'c66bd801a2ee309de925e265fadc2b7e8a07065c319e732ffd7614d8021d853b', '[\"*\"]', NULL, NULL, '2023-10-16 13:35:17', '2023-10-16 13:35:17'),
(33, 'App\\Models\\User', 1, 'token', 'bad09b9464f73e6b9092d44d7d62d17b65d0afc7e08be78e6aeea387da4e2cbc', '[\"*\"]', NULL, NULL, '2023-10-16 13:35:19', '2023-10-16 13:35:19'),
(34, 'App\\Models\\User', 1, 'token', 'ebbd03d78ff3ec3648743d7fbb097f85da407662ffcc2feea4c562596c264109', '[\"*\"]', NULL, NULL, '2023-10-16 13:35:53', '2023-10-16 13:35:53'),
(35, 'App\\Models\\User', 1, 'token', 'a9d00c894f3af3f040edf27406f952d2eb42079996874620b7284fab8c2769c9', '[\"*\"]', NULL, NULL, '2023-10-16 13:36:14', '2023-10-16 13:36:14'),
(36, 'App\\Models\\User', 1, 'token', 'e9a509a7fd015e783552b403eb49ff72ca7b63271a54fdd82319bd90810dd61c', '[\"*\"]', '2023-10-16 18:04:48', NULL, '2023-10-16 13:41:24', '2023-10-16 18:04:48'),
(37, 'App\\Models\\User', 1, 'token', '39243d21eccc21e763afcfb6a8e28032c47f7241c3b47d4b4434d2e2447895b7', '[\"*\"]', NULL, NULL, '2023-10-16 13:41:40', '2023-10-16 13:41:40'),
(38, 'App\\Models\\User', 1, 'token', 'bc656d968ac6c82e668e3433ba41c268244fe6a2938b5834ad12a6f28f26ceb2', '[\"*\"]', NULL, NULL, '2023-10-16 13:48:09', '2023-10-16 13:48:09'),
(39, 'App\\Models\\User', 1, 'token', 'a49deb3f5806242f494c80a132d43a2e2b1d855a0e85e0137337080b103dfa99', '[\"*\"]', NULL, NULL, '2023-10-16 13:48:24', '2023-10-16 13:48:24'),
(40, 'App\\Models\\User', 1, 'token', 'f6ec4680cb63fbce0dcc94d8ed999b7d65e2279db2b505f7f73cc259550c759a', '[\"*\"]', NULL, NULL, '2023-10-16 13:49:22', '2023-10-16 13:49:22'),
(41, 'App\\Models\\User', 1, 'token', 'a6b8205470e9f25648dbc75323a9b9a344fcfee774b152bbe309dafc350774b8', '[\"*\"]', NULL, NULL, '2023-10-16 13:49:26', '2023-10-16 13:49:26'),
(42, 'App\\Models\\User', 1, 'token', 'ef3fcedabad6102ccafd6e3fd7db8cae109c4c8bcc159f2534f38cdf5903cbf5', '[\"*\"]', NULL, NULL, '2023-10-16 13:55:50', '2023-10-16 13:55:50'),
(43, 'App\\Models\\User', 1, 'token', '920541e4c23c0c84af262bd71bb09f9144253e1ff7c7d8b2928fae010aea9c37', '[\"*\"]', NULL, NULL, '2023-10-16 13:56:02', '2023-10-16 13:56:02'),
(44, 'App\\Models\\User', 1, 'token', '92f88444ff6fd0993b0d5121d31b536ffacdc7c40ed3bd0989a222f8844c07de', '[\"*\"]', NULL, NULL, '2023-10-16 13:56:24', '2023-10-16 13:56:24'),
(45, 'App\\Models\\User', 1, 'token', '4c103597e299a7a7221ccb4b623834fc24883037bf68d957e012e43ee08b31ad', '[\"*\"]', NULL, NULL, '2023-10-16 13:58:07', '2023-10-16 13:58:07'),
(46, 'App\\Models\\User', 1, 'token', 'd3bee1a6114205f06b6673ed04d1044bd04b0cc2057dbdf6c015c57c3e270dfe', '[\"*\"]', '2023-10-16 14:00:49', NULL, '2023-10-16 13:59:57', '2023-10-16 14:00:49'),
(47, 'App\\Models\\User', 1, 'token', 'ad620eaa980a2a254606b6d456a5ade3f14a4b8c99dbc6c8ccf8a53e420a285e', '[\"*\"]', '2023-10-17 01:06:52', NULL, '2023-10-16 18:04:55', '2023-10-17 01:06:52'),
(48, 'App\\Models\\User', 1, 'token', '34d2315bac46a579ba5b8c16484254dc299c137db14377824b9db3b2a784b669', '[\"*\"]', '2023-10-17 00:39:03', NULL, '2023-10-16 23:32:56', '2023-10-17 00:39:03'),
(49, 'App\\Models\\User', 1, 'token', '283f825d4bfbfcb386d77bab3d47f7408364d1a9d3efbb6ffa27a70429dda342', '[\"*\"]', '2023-10-17 01:15:38', NULL, '2023-10-17 01:02:55', '2023-10-17 01:15:38'),
(50, 'App\\Models\\User', 1, 'token', 'a4115213e10ee9e80580d528deb071ebf3428e73f548370425c151d0cc2f8010', '[\"*\"]', '2023-10-17 01:22:54', NULL, '2023-10-17 01:22:48', '2023-10-17 01:22:54'),
(51, 'App\\Models\\User', 1, 'token', 'd894cfe393dd220031225d5f0fb364681adc10be09ab176e6e042d85c7bbdaee', '[\"*\"]', '2023-10-17 01:47:51', NULL, '2023-10-17 01:32:31', '2023-10-17 01:47:51'),
(52, 'App\\Models\\User', 1, 'token', '1ca6c76c63100cb651f82ab41f3cb6e4df349c57824d9ea5545da584760a627c', '[\"*\"]', '2023-10-17 01:54:53', NULL, '2023-10-17 01:54:52', '2023-10-17 01:54:53'),
(53, 'App\\Models\\User', 1, 'token', '6575cab90308c710ad5e3c69430c8f86625d6b4d35313c031351d544b7f19aaa', '[\"*\"]', '2023-10-17 01:57:29', NULL, '2023-10-17 01:54:53', '2023-10-17 01:57:29'),
(54, 'App\\Models\\User', 1, 'token', 'ff0dbd04053751fa8a81854243241375852d8d6439531b583e2d2d448abb879e', '[\"*\"]', '2023-10-17 02:03:57', NULL, '2023-10-17 01:57:53', '2023-10-17 02:03:57'),
(55, 'App\\Models\\User', 1, 'token', '1c45cbf65ff7c247539e25d75edcd04072aa1fe5e5d78cad9cf131ed44d1ff3e', '[\"*\"]', '2023-10-17 02:04:15', NULL, '2023-10-17 02:04:13', '2023-10-17 02:04:15'),
(56, 'App\\Models\\User', 1, 'token', '8b17151cd974043bfc6fe59e909a54d5b8d9cf1d8f8fe877ac588f6f32a33ca3', '[\"*\"]', '2023-10-17 02:12:36', NULL, '2023-10-17 02:11:19', '2023-10-17 02:12:36'),
(57, 'App\\Models\\User', 1, 'token', '672388d52d1b185cb56b2df6eeca62927a4bbfd0b25a1bb20a5e1d4cf99abd3f', '[\"*\"]', '2023-10-17 02:13:40', NULL, '2023-10-17 02:12:44', '2023-10-17 02:13:40'),
(58, 'App\\Models\\User', 1, 'token', 'd79aa4fc43c472b8e5e3701393a53879173bb6624e0d7e7211969c5305b2ae50', '[\"*\"]', '2023-10-17 02:14:01', NULL, '2023-10-17 02:13:53', '2023-10-17 02:14:01'),
(59, 'App\\Models\\User', 1, 'token', '2cc2308da06fd71a61671887c46c1671d763c526a5bab81bbfdb686cfae5d5be', '[\"*\"]', '2023-10-17 02:14:25', NULL, '2023-10-17 02:14:22', '2023-10-17 02:14:25'),
(60, 'App\\Models\\User', 1, 'token', '284807cb0c635c2b2f140a236744f0819730ac1824366ad5f522caf592afff12', '[\"*\"]', '2023-10-17 02:16:34', NULL, '2023-10-17 02:16:31', '2023-10-17 02:16:34'),
(61, 'App\\Models\\User', 1, 'token', 'f3bf40d1914ce6df11bd5c1267a411f33aee720eab01397b10eba398c0885ddb', '[\"*\"]', NULL, NULL, '2023-10-17 02:18:57', '2023-10-17 02:18:57'),
(62, 'App\\Models\\User', 1, 'token', '12d382cb037e6c77275cc7b568eb5381ffd90abe140a59d6170130bd1493c43e', '[\"*\"]', '2023-10-17 02:19:46', NULL, '2023-10-17 02:19:04', '2023-10-17 02:19:46'),
(63, 'App\\Models\\User', 1, 'token', 'b9b816019cc2297628e6724475f86e2bdc42494cf21c2cf32991a7fd7e281a00', '[\"*\"]', '2023-10-17 02:31:06', NULL, '2023-10-17 02:25:23', '2023-10-17 02:31:06'),
(64, 'App\\Models\\User', 1, 'token', '6d3b9d32833818d9cd233a89741f3edb2e172b5ec90077d022e0eebe0ae726e1', '[\"*\"]', '2023-10-17 02:31:23', NULL, '2023-10-17 02:31:17', '2023-10-17 02:31:23'),
(65, 'App\\Models\\User', 1, 'token', '2b487d3bbbd9bd794a1184ba5b053b93148da4144ff3d56030b43adcb92931a4', '[\"*\"]', '2023-10-17 02:32:35', NULL, '2023-10-17 02:32:23', '2023-10-17 02:32:35'),
(66, 'App\\Models\\User', 1, 'token', '4af1191b8b16b1973377148c6171bb1844fa264cd8db1ea79974a989bbcfa790', '[\"*\"]', '2023-10-17 02:32:41', NULL, '2023-10-17 02:32:38', '2023-10-17 02:32:41'),
(67, 'App\\Models\\User', 1, 'token', '0dbba944b91fe60a23c2614c4deee7f5833c530f037f8bfde63724ea263fae2c', '[\"*\"]', '2023-10-17 02:32:53', NULL, '2023-10-17 02:32:47', '2023-10-17 02:32:53'),
(68, 'App\\Models\\User', 1, 'token', 'bab139912318e6cc04c76a3e956d28f101f325d4fb260e09e71eabc2b42462be', '[\"*\"]', '2023-10-17 03:02:50', NULL, '2023-10-17 02:58:25', '2023-10-17 03:02:50'),
(69, 'App\\Models\\User', 1, 'token', 'fc512d6ec8659ab93240c26332301954d90af8518aa3922dcb59437538295559', '[\"*\"]', '2023-10-17 03:03:21', NULL, '2023-10-17 03:03:13', '2023-10-17 03:03:21'),
(70, 'App\\Models\\User', 1, 'token', '725a3db56220cc6b70e7cdf46a88a33b2077c540f6bee123f83ebad9bde85bc6', '[\"*\"]', '2023-10-17 03:05:27', NULL, '2023-10-17 03:04:25', '2023-10-17 03:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Adrian Kim Espallardo', 'username', '$2y$10$aFYjfTfNgkncfzo5YrjkTuzzv4PxfDxlfXBwqrHpqb1URLXcn73Qu', '2023-10-16 10:19:22', '2023-10-16 10:19:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_artist_id_foreign` (`artist_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
