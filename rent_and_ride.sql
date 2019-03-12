-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2019 at 10:08 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_and_ride`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `admin_id` int(5) NOT NULL,
  `e-mail_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
CREATE TABLE IF NOT EXISTS `booking_table` (
  `booking_id` int(10) NOT NULL,
  `vehicle_no` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

DROP TABLE IF EXISTS `customer_table`;
CREATE TABLE IF NOT EXISTS `customer_table` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) NOT NULL,
  `c_mobile` bigint(20) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`c_id`, `c_name`, `c_mobile`, `c_email`, `c_password`) VALUES
(4, 'Adithya Mayur', 9448911353, 'mayuradithya@gmail.com', 'may'),
(6, 'mayur', 8904498381, 'adi@gmail.com', 'asd'),
(7, 'vinay', 9480785529, 'vinaybhandary123@gmail', 'vini'),
(10, 'Deeshu', 123456789, 'rdhjkk34@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

DROP TABLE IF EXISTS `feedback_table`;
CREATE TABLE IF NOT EXISTS `feedback_table` (
  `customer_name` varchar(20) NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `feedback_text` varchar(100) NOT NULL,
  `feedback_time` time(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_shop_detail`
--

DROP TABLE IF EXISTS `rent_shop_detail`;
CREATE TABLE IF NOT EXISTS `rent_shop_detail` (
  `shop_id` varchar(5) NOT NULL,
  `shop_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `vehicles_available` int(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_shop_detail`
--

INSERT INTO `rent_shop_detail` (`shop_id`, `shop_name`, `password`, `vehicles_available`, `address`, `location`) VALUES
('1', 'grab', '12345', 2, 'moodbidri', 'moodbidri'),
('1', 'grab', '12345', 2, 'moodbidri', 'moodbidri');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
CREATE TABLE IF NOT EXISTS `vehicle_table` (
  `shop_id` int(10) DEFAULT NULL,
  `vehicle_no` varchar(30) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `available_vehicle` tinyint(1) NOT NULL,
  `price` int(5) NOT NULL,
  PRIMARY KEY (`vehicle_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
