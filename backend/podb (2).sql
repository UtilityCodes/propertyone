-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2025 at 10:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `methods_id` int(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `ibalance` double NOT NULL,
  `balance` double NOT NULL,
  `sent` double NOT NULL,
  `received` double NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `dates`, `timee`, `code`, `name`, `number`, `methods_id`, `note`, `ibalance`, `balance`, `sent`, `received`, `company_id`) VALUES
(1, '2025-03-10', '19:38:14', 'ac-34627834', 'DEFAULT', '000001', 1, 'no note', 999, 654000, 45000, 698001, 1),
(2, '2025-03-10', '19:38:14', 'ac-13423424', 'DRAWER', '000002', 1, 'No Note', 777, 378200, 468000, 845423, 1),
(3, '2025-03-10', '19:40:43', 'ac-14123423', 'NMB', '01234567654', 2, 'NOTHING', 10000, 1388000, 12000, 1390000, 1),
(4, '2025-03-10', '19:40:43', 'ac-23423413r42', 'AZANIA', '18763562892', 2, 'nnn', 19000, 549000, 1503000, 2033000, 1),
(5, '2025-03-10', '19:42:59', 'ac-134134134', 'LIPA-VODA', '0757640118', 3, 'NNN', 1000, 833000, 0, 832000, 1),
(6, '2025-03-10', '19:42:59', 'AC-134134234213', 'LIPA-AIRTEL', '0789236112', 3, 'ZZZ', 3500, 10000, 500, 7000, 1),
(7, '2025-03-10', '19:46:00', 'ac-12414134', 'CRDB-POS', '423167890', 4, 'VVV', 0, 6603000, 0, 6603000, 1),
(8, '2025-03-10', '19:46:00', 'AC-4367890765', 'NBC-POS', '214367890', 4, 'CCC', 0, 4601500, 0, 4601500, 1),
(9, '2025-03-11', '13:47:41', 'ac-1741690061-849', 'Counter', '0000003', 1, 'No Note', 9000, 720000, 39000, 750000, 1),
(10, '2025-03-11', '14:06:12', 'ac-1741691172-125', 'LIPA-TIGO', '0712345667', 3, 'No Note', 19000, 162000, 6000, 149000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`) VALUES
(1, 'BOOKINGS'),
(2, 'EXPENSES'),
(3, 'WITHDRAWS'),
(4, 'DEPOSITS'),
(5, 'HOUSE-KEEPING');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `website`, `note`, `company_id`) VALUES
(1, 'Booking.com', 'www.booking.com', 'the main', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `fromdate` date NOT NULL,
  `fromtime` time NOT NULL,
  `checkindate` date DEFAULT NULL,
  `checkintime` time DEFAULT NULL,
  `checkoutdate` date DEFAULT NULL,
  `checkouttime` time DEFAULT NULL,
  `cancdate` date DEFAULT NULL,
  `canctime` time DEFAULT NULL,
  `todate` date NOT NULL,
  `totime` time NOT NULL,
  `rooms_id` int(255) NOT NULL,
  `ogprice` double NOT NULL,
  `mprice` double NOT NULL,
  `nights` int(255) NOT NULL,
  `adults` int(255) NOT NULL,
  `children` int(255) NOT NULL,
  `babies` int(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `customer_idno` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `amount` double NOT NULL,
  `paid` double NOT NULL,
  `refund` double NOT NULL,
  `vat` double NOT NULL,
  `vatpercent` int(255) NOT NULL,
  `booktype_id` int(255) NOT NULL,
  `agent_id` int(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `code`, `dates`, `timee`, `fromdate`, `fromtime`, `checkindate`, `checkintime`, `checkoutdate`, `checkouttime`, `cancdate`, `canctime`, `todate`, `totime`, `rooms_id`, `ogprice`, `mprice`, `nights`, `adults`, `children`, `babies`, `note`, `customer_idno`, `discount`, `amount`, `paid`, `refund`, `vat`, `vatpercent`, `booktype_id`, `agent_id`, `company_id`, `user_id`) VALUES
(1, 'rs-2323123', '2025-03-10', '13:09:43', '2025-03-10', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-16', '10:00:00', 4, 200000, 200000, 0, 1, 0, 0, 'no note', '19898765467567', 0, 200000, 0, 0, 0, 0, 2, 0, 1, 2),
(2, 'rs-245356646', '2025-03-10', '14:16:52', '2025-03-20', '17:16:52', NULL, '00:00:00', NULL, '00:00:00', NULL, '00:00:00', '2025-03-23', '10:00:00', 4, 200000, 200000, 0, 1, 0, 0, 'no note', '1', 0, 200000, 0, 0, 0, 0, 2, 0, 1, 1),
(3, 'rs-2242453245', '2025-03-08', '17:02:40', '2025-03-08', '22:30:00', '2025-03-08', '23:00:00', '2025-03-09', '09:30:00', NULL, '00:00:00', '2025-03-09', '10:00:00', 5, 250000, 230000, 0, 1, 0, 0, 'nothing', '1992890765432', 0, 280000, 280000, 0, 0, 0, 2, 0, 1, 2),
(4, 'rs-245345345', '2025-03-12', '16:41:36', '2025-03-09', '18:00:00', NULL, '00:00:00', NULL, '00:00:00', '2025-03-10', '16:00:36', '2025-03-14', '10:00:00', 3, 960000, 960000, 0, 2, 0, 0, 'nothing', '19890909-0984768624', 0, 960000, 0, 0, 0, 0, 2, 0, 1, 2),
(5, 'rs-65786756', '2025-03-13', '18:19:00', '2025-03-23', '22:00:00', NULL, '00:00:00', NULL, '00:00:00', '2025-03-21', '16:09:21', '2025-03-25', '10:00:00', 2, 370000, 350000, 0, 1, 0, 0, 'no note just trial', '19980908-234282849023', 0, 350000, 0, 0, 0, 0, 2, 0, 1, 2),
(6, 'rs-7867543546', '2025-03-13', '19:40:00', '2025-03-13', '21:00:00', '2025-03-14', '02:00:00', '2025-03-14', '01:49:14', NULL, NULL, '2025-03-16', '10:00:00', 6, 290000, 250000, 0, 1, 0, 0, 'nothing for this student', '19990203-776755434567', 0, 300000, 300000, 0, 0, 0, 2, 0, 1, 2),
(7, 'rs-1741999143-293', '2025-03-15', '03:39:03', '2025-03-15', '03:37:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-17', '10:00:00', 2, 370000, 370000, 0, 2, 0, 0, 'trial 3', '9254309216178', 0, 415000, 410000, 0, 0, 0, 2, 0, 1, 2),
(8, 'rs-1742030371-060', '2025-03-15', '12:19:31', '2025-03-19', '12:18:00', '2025-03-19', '18:02:25', NULL, NULL, NULL, NULL, '2025-03-22', '10:00:00', 5, 250000, 250000, 0, 1, 0, 0, '', '19990203-776755434567', 5000, 245000, 240000, 0, 0, 0, 2, 0, 1, 2),
(9, 'rs-1742038204-669', '2025-03-15', '14:30:04', '2025-04-05', '20:30:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-19', '10:00:00', 6, 290000, 290000, 0, 1, 0, 0, 'jane doe from france', '19890909-9045678998', 10000, 300000, 290000, 0, 0, 0, 2, 0, 1, 2),
(10, 'rs-1742142635-177', '2025-03-16', '19:30:35', '2025-03-16', '20:30:00', '2025-03-17', '18:00:00', '2025-03-21', '10:42:00', NULL, NULL, '2025-03-21', '10:00:00', 3, 960000, 960000, 0, 2, 0, 0, '', '19501002-7456789076', 0, 990000, 850000, 0, 0, 0, 2, 0, 1, 2),
(11, 'rs-1742224738-884', '2025-03-17', '18:18:58', '2025-03-17', '18:15:00', NULL, NULL, NULL, NULL, '2025-03-19', '03:53:24', '2025-03-23', '10:00:00', 8, 145000, 145000, 0, 1, 0, 0, '', '20020422-64326789654', 0, 157000, 157000, 0, 0, 0, 2, 0, 1, 2),
(12, 'rs-1742327347-501', '2025-03-18', '22:49:07', '2025-03-18', '22:47:00', '2025-03-19', '03:47:09', '2025-03-19', '16:02:00', NULL, NULL, '2025-03-19', '10:00:00', 1, 350000, 343000, 0, 2, 0, 0, '', '19890909-0984768624', 0, 386600, 386600, 0, 0, 0, 2, 0, 1, 2),
(13, 'rs-1742473028-610', '2025-03-20', '15:17:08', '2025-03-25', '15:15:10', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-28', '10:00:00', 1, 350000, 350000, 3, 1, 0, 0, '0', '19501002-7456789076', 3000, 1266000, 1266000, 0, 192960, 18, 2, 0, 1, 2),
(14, 'rs-1742562349-242', '2025-03-21', '16:05:49', '2025-03-21', '16:03:44', '2025-03-21', '16:03:44', NULL, NULL, NULL, NULL, '2025-03-22', '10:00:00', 7, 290000, 290000, 1, 2, 0, 0, '0', '1992890765432', 4000, 349400, 349000, 0, 53280, 18, 2, 0, 1, 2),
(15, 'rs-1742562451-651', '2025-03-21', '16:07:31', '2025-03-21', '16:05:49', '2025-03-21', '16:09:09', NULL, NULL, NULL, NULL, '2025-03-23', '10:00:00', 8, 145000, 145000, 2, 1, 0, 0, '0', '19990203-776755434567', 0, 321200, 321200, 0, 29200, 10, 2, 0, 1, 2),
(16, 'rs-1742577260-647', '2025-03-21', '20:14:20', '2025-03-21', '20:12:43', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-26', '10:00:00', 9, 330000, 330000, 5, 1, 0, 0, '0', '1992890765432', 0, 1947000, 1943000, 0, 297000, 18, 2, 0, 1, 2),
(17, 'rs-1742582492-663', '2025-03-21', '21:41:32', '2025-03-21', '21:40:46', '2025-03-21', '21:40:46', NULL, NULL, NULL, NULL, '2025-03-24', '10:00:00', 3, 960000, 960000, 3, 1, 0, 0, '0', '19898765467567', 0, 3398400, 3000000, 0, 518400, 18, 2, 0, 1, 2),
(18, 'rs-1742590928-818', '2025-03-22', '00:02:08', '2025-03-22', '00:01:30', '2025-03-22', '00:01:30', NULL, NULL, NULL, NULL, '2025-03-24', '10:00:00', 6, 290000, 290000, 3, 1, 0, 0, '0', '9254309216178', 0, 1026600, 5000000, 0, 156600, 18, 2, 0, 1, 2),
(19, 'rs-1742591455-430', '2025-03-22', '00:10:55', '2025-03-22', '00:09:58', '2025-03-22', '00:09:58', NULL, NULL, NULL, NULL, '2025-03-24', '10:00:00', 4, 200000, 200000, 3, 1, 0, 0, '0', '19980908-234282849023', 0, 600000, 400000, 0, 0, 0, 2, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE `booktype` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`id`, `name`) VALUES
(1, 'Agent'),
(2, 'In-House');

-- --------------------------------------------------------

--
-- Table structure for table `cashflow`
--

CREATE TABLE `cashflow` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `accounts_id` int(255) NOT NULL,
  `amount` double NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `activity_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashflow`
--

INSERT INTO `cashflow` (`id`, `code`, `dates`, `timee`, `accounts_id`, `amount`, `note`, `company_id`, `activity_id`, `user_id`) VALUES
(4, 'dp-1741701545-802', '2025-03-11', '16:59:05', 2, 223, 'No Note', 1, 4, 2),
(5, 'wd-1741702845-726', '2025-03-11', '17:20:45', 4, 2000, 'No Note', 1, 3, 2),
(6, 'dp-1741789891-409', '2025-03-12', '17:31:31', 9, 30000, 'No Note', 1, 4, 2),
(7, 'dp-1741789908-087', '2025-03-12', '17:31:48', 3, 450000, 'No Note', 1, 4, 2),
(8, 'dp-1741789923-849', '2025-03-12', '17:32:03', 5, 230000, 'No Note', 1, 4, 2),
(9, 'wd-1741789998-683', '2025-03-12', '17:33:18', 3, 12000, 'No Note', 1, 3, 2),
(10, 'wd-1741790031-088', '2025-03-12', '17:33:51', 9, 14000, 'No Note', 1, 3, 2),
(11, 'dp-1741790184-561', '2025-03-12', '17:36:24', 1, 901, 'No Note', 1, 4, 2),
(12, 'dp-1741790593-071', '2025-03-12', '17:43:13', 9, 240000, 'No Note', 1, 4, 2),
(13, 'dp-1741790608-673', '2025-03-12', '17:43:28', 2, 320000, 'No Note', 1, 4, 2),
(14, 'dp-1741790626-053', '2025-03-12', '17:43:46', 1, 175000, 'No Note', 1, 4, 2),
(15, 'dp-1742048553-784', '2025-03-15', '17:22:33', 4, 500000, 'No Note', 1, 4, 2),
(16, 'wd-1742048577-269', '2025-03-15', '17:22:57', 2, 5000, 'No Note', 1, 3, 2),
(17, 'wd-1742345998-302', '2025-03-19', '03:59:58', 4, 1000, 'No Note', 1, 3, 2),
(18, 'dp-1742346017-027', '2025-03-19', '04:00:17', 9, 20000, 'No Note', 1, 4, 2),
(19, 'wd-1742585726-481', '2025-03-21', '22:35:26', 4, 1500000, 'No Note', 1, 3, 2),
(20, 'dp-1742591317-315', '2025-03-22', '00:08:37', 3, 250000, 'No Note', 1, 4, 2),
(21, 'dp-1742591330-419', '2025-03-22', '00:08:50', 1, 500000, 'No Note', 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `code`, `note`, `region`, `city`, `country`, `phone`, `email`, `dates`, `timee`) VALUES
(1, 'Demo Inn', 'c1', 'demo company', 'Kisasa', 'Dodoma', 'Tanzania', '0757630119', 'propertyone@yutiliti.com', '2025-03-09', '19:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `languages_id` int(255) NOT NULL,
  `idtype_id` int(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `code`, `dates`, `timee`, `fname`, `lname`, `name`, `languages_id`, `idtype_id`, `idno`, `phone`, `email`, `city`, `state`, `country`, `note`, `company_id`) VALUES
(2, 'cs-6478968', '2025-03-12', '15:16:10', 'Kevin', 'Lobe', 'Kevin Lobe', 1, 1, '19898765467567', '098657367', 'lobe@gmail.com', 'Munchen', 'Bavaria', 'Germany', 'European Customer', 1),
(3, 'cu-17364637', '2025-03-13', '18:58:00', 'Terryson', 'Michael', 'Terryson Michael', 1, 1, '19890909-0984768624', '0765123456', 'terry@gmail.com', 'Arusha', 'Tanzania', 'Tanzania', 'Tanzanian Customer', 1),
(4, 'cu-77656786', '2025-03-13', '19:34:00', 'Sai', 'Andre', 'Sai Andre', 2, 2, '19980908-234282849023', '0789654321', 'sai@gmail.com', 'Mbeya', 'Tanzania', 'Tanzania', 'still on trial', 1),
(5, 'cu-765456789', '2025-03-13', '19:39:00', 'Oscar', 'Isaac', 'Oscar Isaac', 2, 3, '19990203-776755434567', '0987654', 'oscar@gmail.com', 'Mwanza', 'Tanzania', 'Tanzania', 'student', 1),
(6, 'cu-87689087', '2025-03-13', '19:45:00', 'Aisha', 'Zabibu', 'Aisha Zabibu', 1, 1, '1992890765432', '098765432', 'no email', 'Nairobi', 'Kenya', 'Kenya', 'nothing', 1),
(7, 'cu-1741999143-983', '2025-03-15', '03:39:03', 'Sam', 'Parr', 'Sam Parr', 1, 1, '9254309216178', '+1-800-098235', 'samparr@mfm.com', 'Los Angeles', 'California ', 'United States of America', 'trial 3', 1),
(8, 'cu-1742038204-082', '2025-03-15', '14:30:04', 'Jane', 'Doe', 'Jane Doe', 3, 2, '19890909-9045678998', '07652523e61', 'janedoe@gmail.com', 'Paris', 'France', 'France', 'jane doe from france', 1),
(9, 'cu-1742142635-191', '2025-03-16', '19:30:35', 'Sugar-Rey', 'Johnson', 'Sugar-Rey Johnson', 1, 1, '19501002-7456789076', '+1-800-02525761', 'sugarrey@ufc.com', 'Atlanta', 'Georgia', 'United States of America', '', 1),
(10, 'cu-1742224738-815', '2025-03-17', '18:18:58', 'Ghati ', 'Masatu', 'Ghati  Masatu', 2, 3, '20020422-64326789654', '0785612954', 'ghati@jelia.com', 'Dar es Salaam', 'Dar es Salaam', 'Dar es Salaam', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `etype`
--

CREATE TABLE `etype` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etype`
--

INSERT INTO `etype` (`id`, `name`, `code`, `dates`, `timee`, `note`, `company_id`) VALUES
(1, 'USAFI', 'et-1741707281-596', '2025-03-11', '18:34:41', 'office and hotel cleanliness', 1),
(2, 'TRANSPORT', 'et-1741790686-644', '2025-03-12', '17:44:46', 'usafiri', 1),
(3, 'RENT', 'et-1741790699-725', '2025-03-12', '17:44:59', 'No Note', 1),
(4, 'ELECTRICITY', 'et-1741790711-128', '2025-03-12', '17:45:11', 'Umeme', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `etype_id` int(255) NOT NULL,
  `accounts_id` int(255) NOT NULL,
  `amount` double NOT NULL,
  `note` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `code`, `dates`, `timee`, `etype_id`, `accounts_id`, `amount`, `note`, `user_id`, `company_id`) VALUES
(1, 'ex-1741708802-756', '2025-03-11', '19:00:02', 1, 6, 500, 'No Note', 2, 1),
(2, 'ex-1741790751-897', '2025-03-12', '17:45:51', 4, 9, 25000, 'No Note', 2, 1),
(3, 'ex-1741790780-673', '2025-03-12', '17:46:20', 2, 2, 52000, 'No Note', 2, 1),
(5, 'ex-1742048209-997', '2025-03-15', '17:16:49', 4, 10, 5000, 'No Note', 2, 1),
(6, 'ex-1742334246-657', '2025-03-19', '00:44:06', 2, 2, 2000, 'No Note', 2, 1),
(7, 'ex-1742474975-905', '2025-03-20', '15:49:35', 3, 10, 1000, 'No Note', 2, 1),
(8, 'ex-1742565560-047', '2025-03-21', '16:59:20', 1, 1, 45000, 'No Note', 2, 1),
(9, 'ex-1742585598-630', '2025-03-21', '22:33:18', 3, 2, 400000, 'No Note', 2, 1),
(10, 'ex-1742585664-707', '2025-03-21', '22:34:24', 2, 2, 9000, 'No Note', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hktype`
--

CREATE TABLE `hktype` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hktype`
--

INSERT INTO `hktype` (`id`, `name`) VALUES
(1, 'Cleanliness'),
(2, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `house_keeping`
--

CREATE TABLE `house_keeping` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `rooms_id` int(11) NOT NULL,
  `hktype_id` int(255) NOT NULL,
  `fromdate` date NOT NULL,
  `fromtime` time NOT NULL,
  `todate` date NOT NULL,
  `totime` time NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `house_keeping`
--

INSERT INTO `house_keeping` (`id`, `code`, `dates`, `timee`, `rooms_id`, `hktype_id`, `fromdate`, `fromtime`, `todate`, `totime`, `note`, `company_id`, `user_id`) VALUES
(2, 'hk-1741711254-149', '2025-03-11', '19:40:54', 3, 1, '2025-03-11', '20:30:00', '2025-03-11', '22:00:00', 'No Note', 1, 2),
(3, 'hk-1741711440-772', '2025-03-11', '19:44:00', 5, 2, '2025-03-12', '11:00:00', '2025-03-12', '12:00:00', 'No Note', 1, 2),
(5, 'hk-1742069900-418', '2025-03-15', '23:18:20', 5, 1, '2025-03-16', '10:30:00', '2025-03-16', '12:00:00', 'No Note', 1, 2),
(6, 'hk-1742124730-718', '2025-03-16', '14:32:10', 8, 1, '2025-03-16', '14:31:00', '2025-03-16', '15:00:00', 'trial', 1, 2),
(7, 'hk-1742124891-585', '2025-03-16', '14:34:51', 3, 1, '2025-03-16', '14:36:00', '2025-03-16', '15:00:00', 'No Note', 1, 2),
(8, 'hk-1742322690-166', '2025-03-18', '21:31:30', 7, 1, '2025-03-18', '21:31:00', '2025-03-18', '22:00:00', 'No Note', 1, 2),
(9, 'hk-1742569286-622', '2025-03-21', '18:01:26', 9, 1, '2025-03-21', '18:01:00', '2025-03-21', '18:20:00', 'No Note', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `idtype`
--

CREATE TABLE `idtype` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idtype`
--

INSERT INTO `idtype` (`id`, `name`) VALUES
(1, 'LICENCE ID'),
(2, 'NATIONAL ID'),
(3, 'STUDENT ID'),
(4, 'VOTING ID'),
(5, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'English'),
(2, 'KiSwahili'),
(3, 'French');

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`) VALUES
(1, 'CASH'),
(2, 'BANK'),
(3, 'MOBILE'),
(4, 'POS');

-- --------------------------------------------------------

--
-- Table structure for table `paycat`
--

CREATE TABLE `paycat` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paycat`
--

INSERT INTO `paycat` (`id`, `name`) VALUES
(1, 'Direct Payments'),
(2, 'Refunds'),
(3, 'Expenses'),
(4, 'Withdraws'),
(5, 'Deposits');

-- --------------------------------------------------------

--
-- Table structure for table `paydirect`
--

CREATE TABLE `paydirect` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paydirect`
--

INSERT INTO `paydirect` (`id`, `name`) VALUES
(1, 'SENT'),
(2, 'RECEIVED');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `accounts_id` int(255) NOT NULL,
  `act_code` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `activity_id` int(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `paydirect_id` int(255) NOT NULL,
  `paytype_id` int(255) NOT NULL,
  `paycat_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `code`, `dates`, `timee`, `accounts_id`, `act_code`, `amount`, `activity_id`, `company_id`, `user_id`, `note`, `paydirect_id`, `paytype_id`, `paycat_id`) VALUES
(4, 'py-1741701545-701', '2025-03-11', '16:59:05', 2, 'dp-1741701545-802', 223, 4, 1, 2, 'No Note', 2, 1, 5),
(5, 'py-1741702845-064', '2025-03-11', '17:20:45', 4, 'wd-1741702845-726', 2000, 3, 1, 2, 'No Note', 1, 1, 4),
(6, 'py-1741708802-017', '2025-03-11', '19:00:02', 6, 'ex-1741708802-756', 500, 2, 1, 2, 'No Note', 1, 1, 3),
(7, 'py-1741789891-449', '2025-03-12', '17:31:31', 9, 'dp-1741789891-409', 30000, 4, 1, 2, 'No Note', 2, 1, 5),
(8, 'py-1741789908-197', '2025-03-12', '17:31:48', 3, 'dp-1741789908-087', 450000, 4, 1, 2, 'No Note', 2, 1, 5),
(9, 'py-1741789923-251', '2025-03-12', '17:32:03', 5, 'dp-1741789923-849', 230000, 4, 1, 2, 'No Note', 2, 1, 5),
(10, 'py-1741789998-049', '2025-03-12', '17:33:18', 3, 'wd-1741789998-683', 12000, 3, 1, 2, 'No Note', 1, 1, 4),
(11, 'py-1741790031-649', '2025-03-12', '17:33:51', 9, 'wd-1741790031-088', 14000, 3, 1, 2, 'No Note', 1, 1, 4),
(12, 'py-1741790184-206', '2025-03-12', '17:36:24', 1, 'dp-1741790184-561', 901, 4, 1, 2, 'No Note', 2, 1, 5),
(13, 'py-1741790593-452', '2025-03-12', '17:43:13', 9, 'dp-1741790593-071', 240000, 4, 1, 2, 'No Note', 2, 1, 5),
(14, 'py-1741790608-382', '2025-03-12', '17:43:28', 2, 'dp-1741790608-673', 320000, 4, 1, 2, 'No Note', 2, 1, 5),
(15, 'py-1741790626-113', '2025-03-12', '17:43:46', 1, 'dp-1741790626-053', 175000, 4, 1, 2, 'No Note', 2, 1, 5),
(16, 'py-1741790751-996', '2025-03-12', '17:45:51', 9, 'ex-1741790751-897', 25000, 2, 1, 2, 'No Note', 1, 1, 3),
(17, 'py-1741790780-734', '2025-03-12', '17:46:20', 2, 'ex-1741790780-673', 52000, 2, 1, 2, 'No Note', 1, 1, 3),
(18, 'py-1741999143-967', '2025-03-15', '03:39:03', 9, 'rs-1741999143-293', 10000, 1, 1, 2, 'trial 3', 2, 1, 1),
(19, 'py-1741999143-967', '2025-03-15', '03:39:03', 7, 'rs-1741999143-293', 400000, 1, 1, 2, 'trial 3', 2, 1, 1),
(20, 'py-1742030371-602', '2025-03-15', '12:19:31', 9, 'rs-1742030371-060', 200000, 1, 1, 2, '', 2, 1, 1),
(21, 'py-1742030371-602', '2025-03-15', '12:19:31', 10, 'rs-1742030371-060', 40000, 1, 1, 2, '', 2, 1, 1),
(22, 'py-1742038204-082', '2025-03-15', '14:30:04', 3, 'rs-1742038204-669', 90000, 1, 1, 2, 'jane doe from france', 2, 1, 1),
(23, 'py-1742038204-082', '2025-03-15', '14:30:04', 7, 'rs-1742038204-669', 200000, 1, 1, 2, 'jane doe from france', 2, 1, 1),
(24, 'py-1742048209-666', '2025-03-15', '17:16:49', 10, 'ex-1742048209-997', 5000, 2, 1, 2, 'No Note', 1, 1, 3),
(25, 'py-1742048553-742', '2025-03-15', '17:22:33', 4, 'dp-1742048553-784', 500000, 4, 1, 2, 'No Note', 2, 1, 5),
(26, 'py-1742048577-137', '2025-03-15', '17:22:57', 2, 'wd-1742048577-269', 5000, 3, 1, 2, 'No Note', 1, 1, 4),
(27, 'py-1742142635-483', '2025-03-16', '19:30:35', 4, 'rs-1742142635-177', 350000, 1, 1, 2, '', 2, 1, 1),
(28, 'py-1742142635-483', '2025-03-16', '19:30:35', 8, 'rs-1742142635-177', 500000, 1, 1, 2, '', 2, 1, 1),
(29, 'py-1742224738-464', '2025-03-17', '18:18:58', 9, 'rs-1742224738-884', 100000, 1, 1, 2, '', 2, 1, 1),
(30, 'py-1742224738-464', '2025-03-17', '18:18:58', 5, 'rs-1742224738-884', 57000, 1, 1, 2, '', 2, 1, 1),
(31, 'py-1742327347-806', '2025-03-18', '22:49:07', 2, 'rs-1742327347-501', 60000, 1, 1, 2, '', 2, 1, 1),
(32, 'py-1742327347-806', '2025-03-18', '22:49:07', 8, 'rs-1742327347-501', 300000, 1, 1, 2, '', 2, 1, 1),
(33, 'py-1742334246-285', '2025-03-19', '00:44:06', 2, 'ex-1742334246-657', 2000, 2, 1, 2, 'No Note', 1, 1, 3),
(34, 'PAY20250319031420662', '2025-03-19', '03:14:20', 1, 'rs-1742327347-501', 1000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(35, 'PAY20250319031420662', '2025-03-19', '03:14:20', 4, 'rs-1742327347-501', 2000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(36, 'PAY20250319031420662', '2025-03-19', '03:14:20', 6, 'rs-1742327347-501', 5000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(37, 'PAY20250319031420662', '2025-03-19', '03:14:20', 7, 'rs-1742327347-501', 1500, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(38, 'PAY20250319032826185', '2025-03-19', '03:28:26', 1, 'rs-1742327347-501', 1100, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(39, 'PAY20250319032826185', '2025-03-19', '03:28:26', 4, 'rs-1742327347-501', 1000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(40, 'PAY20250319032826185', '2025-03-19', '03:28:26', 5, 'rs-1742327347-501', 2000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(41, 'PAY20250319032826185', '2025-03-19', '03:28:26', 8, 'rs-1742327347-501', 1500, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(42, 'PAY20250319033336143', '2025-03-19', '03:33:36', 2, 'rs-1742327347-501', 8000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(43, 'PAY20250319033336143', '2025-03-19', '03:33:36', 6, 'rs-1742327347-501', 2000, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(44, 'PAY20250319033336143', '2025-03-19', '03:33:36', 7, 'rs-1742327347-501', 1500, 1, 1, 2, 'Payment for booking rs-1742327347-501', 2, 2, 1),
(45, 'py-1742345998-374', '2025-03-19', '03:59:58', 4, 'wd-1742345998-302', 1000, 3, 1, 2, 'No Note', 1, 1, 4),
(46, 'py-1742346017-384', '2025-03-19', '04:00:17', 9, 'dp-1742346017-027', 20000, 4, 1, 2, 'No Note', 2, 1, 5),
(47, 'py-1742473028-506', '2025-03-20', '15:17:08', 9, 'rs-1742473028-610', 50000, 1, 1, 2, '', 2, 1, 1),
(48, 'py-1742473028-506', '2025-03-20', '15:17:08', 3, 'rs-1742473028-610', 200000, 1, 1, 2, '', 2, 1, 1),
(49, 'py-1742473028-506', '2025-03-20', '15:17:08', 7, 'rs-1742473028-610', 1000000, 1, 1, 2, '', 2, 1, 1),
(50, 'py-1742474975-600', '2025-03-20', '15:49:35', 10, 'ex-1742474975-905', 1000, 2, 1, 2, 'No Note', 1, 1, 3),
(51, 'py-1742562349-640', '2025-03-21', '16:05:49', 2, 'rs-1742562349-242', 300000, 1, 1, 2, '', 2, 1, 1),
(52, 'py-1742562349-640', '2025-03-21', '16:05:49', 5, 'rs-1742562349-242', 40000, 1, 1, 2, '', 2, 1, 1),
(53, 'py-1742562451-759', '2025-03-21', '16:07:31', 1, 'rs-1742562451-651', 20000, 1, 1, 2, '', 2, 1, 1),
(54, 'py-1742562451-759', '2025-03-21', '16:07:31', 8, 'rs-1742562451-651', 300000, 1, 1, 2, '', 2, 1, 1),
(55, 'py-1742565560-019', '2025-03-21', '16:59:20', 1, 'ex-1742565560-047', 45000, 2, 1, 2, 'No Note', 1, 1, 3),
(56, 'py-1742577260-857', '2025-03-21', '20:14:20', 2, 'rs-1742577260-647', 40000, 1, 1, 2, '', 2, 1, 1),
(57, 'py-1742577260-857', '2025-03-21', '20:14:20', 5, 'rs-1742577260-647', 400000, 1, 1, 2, '', 2, 1, 1),
(58, 'py-1742577260-857', '2025-03-21', '20:14:20', 4, 'rs-1742577260-647', 1000000, 1, 1, 2, '', 2, 1, 1),
(59, 'py-1742577260-857', '2025-03-21', '20:14:20', 8, 'rs-1742577260-647', 500000, 1, 1, 2, '', 2, 1, 1),
(60, 'PAY20250321202754177', '2025-03-21', '20:27:54', 2, 'rs-1742562451-651', 1200, 1, 1, 2, 'Payment for booking rs-1742562451-651', 2, 2, 1),
(61, 'PAY20250321203441567', '2025-03-21', '20:34:41', 5, 'rs-1742577260-647', 3000, 1, 1, 2, 'Payment for booking rs-1742577260-647', 2, 2, 1),
(62, 'PAY20250321203656554', '2025-03-21', '20:36:56', 10, 'rs-1742562349-242', 9000, 1, 1, 2, 'Payment for booking rs-1742562349-242', 2, 2, 1),
(63, 'PAY20250321203829827', '2025-03-21', '20:38:29', 2, 'rs-2242453245', 100000, 1, 1, 2, 'Payment for booking rs-2242453245', 2, 2, 1),
(64, 'PAY20250321203829827', '2025-03-21', '20:38:29', 4, 'rs-2242453245', 180000, 1, 1, 2, 'Payment for booking rs-2242453245', 2, 2, 1),
(65, 'PAY20250321203947408', '2025-03-21', '20:39:47', 9, 'rs-7867543546', 100000, 1, 1, 2, 'Payment for booking rs-7867543546', 2, 2, 1),
(66, 'PAY20250321203947408', '2025-03-21', '20:39:47', 3, 'rs-7867543546', 100000, 1, 1, 2, 'Payment for booking rs-7867543546', 2, 2, 1),
(67, 'PAY20250321203947408', '2025-03-21', '20:39:47', 5, 'rs-7867543546', 100000, 1, 1, 2, 'Payment for booking rs-7867543546', 2, 2, 1),
(68, 'PAY20250321204031475', '2025-03-21', '20:40:31', 2, 'rs-1742473028-610', 16000, 1, 1, 2, 'Payment for booking rs-1742473028-610', 2, 2, 1),
(69, 'py-1742582492-198', '2025-03-21', '21:41:32', 8, 'rs-1742582492-663', 3000000, 1, 1, 2, '', 2, 1, 1),
(70, 'py-1742585598-015', '2025-03-21', '22:33:18', 2, 'ex-1742585598-630', 400000, 2, 1, 2, 'No Note', 1, 1, 3),
(71, 'py-1742585664-756', '2025-03-21', '22:34:24', 2, 'ex-1742585664-707', 9000, 2, 1, 2, 'No Note', 1, 1, 3),
(72, 'py-1742585726-718', '2025-03-21', '22:35:26', 4, 'wd-1742585726-481', 1500000, 3, 1, 2, 'No Note', 1, 1, 4),
(73, 'py-1742590928-192', '2025-03-22', '00:02:08', 7, 'rs-1742590928-818', 5000000, 1, 1, 2, '', 2, 1, 1),
(74, 'py-1742591317-532', '2025-03-22', '00:08:37', 3, 'dp-1742591317-315', 250000, 4, 1, 2, 'No Note', 2, 1, 5),
(75, 'py-1742591330-653', '2025-03-22', '00:08:50', 1, 'dp-1742591330-419', 500000, 4, 1, 2, 'No Note', 2, 1, 5),
(76, 'py-1742591455-115', '2025-03-22', '00:10:55', 10, 'rs-1742591455-430', 100000, 1, 1, 2, '', 2, 1, 1),
(77, 'py-1742591455-115', '2025-03-22', '00:10:55', 3, 'rs-1742591455-430', 300000, 1, 1, 2, '', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paytype`
--

CREATE TABLE `paytype` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paytype`
--

INSERT INTO `paytype` (`id`, `name`) VALUES
(1, 'DIRECT'),
(2, 'CREDIT');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rtype_id` int(255) NOT NULL,
  `uprice` double NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `dates`, `timee`, `code`, `name`, `rtype_id`, `uprice`, `note`, `company_id`) VALUES
(1, '2025-03-10', '01:21:48', 'rm-98078665-989', 'E45', 1, 350000, 'no note', 1),
(2, '2025-03-10', '01:21:48', 'rm-96778665-743', 'E11', 1, 370000, 'no note', 1),
(3, '2025-03-10', '01:26:35', 'rm-45678987-742', 'P98', 2, 960000, 'no note', 1),
(4, '2025-03-10', '01:26:35', 'rm-8976997-912', 'DB67', 3, 200000, 'no note', 1),
(5, '2025-03-10', '01:29:20', 'rm-356456343-215', 'DB48', 3, 245000, 'SAME 2', 1),
(6, '2025-03-10', '01:29:20', 'rm-45634534-245', 'DB12', 3, 290000, 'MORE ', 1),
(7, '2025-03-15', '18:57:17', 'rm-1742054237-972', 'SGH-15', 5, 290000, 'TRIAL 4', 1),
(8, '2025-03-15', '22:34:58', 'rm-1742067298-926', 'SC-75', 4, 145000, 'with air condition', 1),
(9, '2025-03-21', '18:00:49', 'rm-1742569249-763', 'SGH-20', 5, 330000, 'No Note', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rtype`
--

CREATE TABLE `rtype` (
  `id` int(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `note` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rtype`
--

INSERT INTO `rtype` (`id`, `dates`, `timee`, `code`, `name`, `price`, `note`, `company_id`) VALUES
(1, '2025-03-10', '01:14:38', 'rt1741558478-015', 'Executive', 350000, 'No Note', 1),
(2, '2025-03-10', '01:18:16', 'rt1741558696-971', 'Presidential', 960000, 'No Note', 1),
(3, '2025-03-10', '01:20:43', 'rt-1741558843-148', 'Double Bedroom', 250000, 'No Note', 1),
(4, '2025-03-12', '17:27:26', 'rt-1741789646-314', 'Self-Contained', 145000, 'single bed without air conditioning', 1),
(5, '2025-03-12', '17:28:09', 'rt-1741789689-692', 'Single Guest House', 320000, 'single room with air conditioning', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roles_id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `dates` date NOT NULL,
  `timee` time NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `roles_id`, `code`, `phone`, `email`, `passcode`, `note`, `dates`, `timee`, `company_id`) VALUES
(1, 'Ghatina', 1, 'us-1', '0697231456', 'ghati@gmail.com', '123', 'the first local user', '2025-03-09', '16:35:04', 1),
(2, 'Ema', 1, 'us-2', '0765123456', 'ema@gmail.com', '123', 'the number 2 admin', '2025-03-09', '18:50:48', 1),
(3, 'Damiann', 2, 'us-2409', '123456', 'damian@gmail.com', '123', 'No Note', '2025-03-09', '18:51:50', 1),
(4, 'Hannah-Wells', 3, 'us-3456', '0987654', 'hannah@gmail.com', '123', 'No Note', '2025-03-09', '18:53:43', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashflow`
--
ALTER TABLE `cashflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etype`
--
ALTER TABLE `etype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hktype`
--
ALTER TABLE `hktype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_keeping`
--
ALTER TABLE `house_keeping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idtype`
--
ALTER TABLE `idtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paycat`
--
ALTER TABLE `paycat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paydirect`
--
ALTER TABLE `paydirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paytype`
--
ALTER TABLE `paytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtype`
--
ALTER TABLE `rtype`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booktype`
--
ALTER TABLE `booktype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cashflow`
--
ALTER TABLE `cashflow`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `etype`
--
ALTER TABLE `etype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hktype`
--
ALTER TABLE `hktype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `house_keeping`
--
ALTER TABLE `house_keeping`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `idtype`
--
ALTER TABLE `idtype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paycat`
--
ALTER TABLE `paycat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paydirect`
--
ALTER TABLE `paydirect`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `paytype`
--
ALTER TABLE `paytype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rtype`
--
ALTER TABLE `rtype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
