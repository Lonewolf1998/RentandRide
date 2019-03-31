-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2019 at 12:31 PM
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
  `uname` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `e-mail_id`, `uname`, `password`, `mobile_no`) VALUES
(1, 'admin@gmail.com', 'admin', '123456', '9845625789');

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
CREATE TABLE IF NOT EXISTS `booking_table` (
  `b_id` int(10) NOT NULL AUTO_INCREMENT,
  `v_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `b_dop` varchar(20) DEFAULT NULL,
  `b_dod` varchar(20) DEFAULT NULL,
  `amount` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_table`
--

INSERT INTO `booking_table` (`b_id`, `v_id`, `c_id`, `shop_id`, `b_dop`, `b_dod`, `amount`, `status`) VALUES
(1, 4, 4, 2, NULL, NULL, 900, 1),
(3, 3, 4, 1, NULL, NULL, 800, 0),
(16, 5, 4, 3, NULL, NULL, 48000, 1),
(17, 5, 4, 3, NULL, NULL, 93000, 1),
(18, 5, 4, 3, '27/03/19', '30/03/19', 6000, 1);

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
  `status` int(10) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`c_id`, `c_name`, `c_mobile`, `c_email`, `c_password`, `status`) VALUES
(4, 'Adithya Mayur', 9448911353, 'mayuradithya@gmail.com', '123', 0),
(6, 'mayur', 8904498381, 'adi@gmail.com', 'asd', 0),
(7, 'vinay', 9480785529, 'vinaybhandary123@gmail', 'vini', 0),
(10, 'Deeshu', 123456789, 'rdhjkk34@gmail.com', 'hello', 0),
(11, 'nay', 9186432659, 'raoy@gmail.com', 'qwe', 0),
(12, 'ashwini', 9986561269, 'ashu@gmail.com', 'asd123', 0),
(13, 'nj', 6576985808, 'lo@gmail.com', 'may', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

DROP TABLE IF EXISTS `feedback_table`;
CREATE TABLE IF NOT EXISTS `feedback_table` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `f_text` varchar(100) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`f_id`, `c_name`, `c_email`, `f_text`) VALUES
(1, 'Adithya Mayur', 'mayuradithya@gmail.com', 'Your Text Hernsnnse'),
(2, 'Adithya Mayur', 'mayuradithya@gmail.com', 'nice'),
(3, 'ashwini', 'ashu@gmail.com', 'very slow in response...work harder');

-- --------------------------------------------------------

--
-- Table structure for table `rent_shop_detail`
--

DROP TABLE IF EXISTS `rent_shop_detail`;
CREATE TABLE IF NOT EXISTS `rent_shop_detail` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `r_email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `location` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_shop_detail`
--

INSERT INTO `rent_shop_detail` (`shop_id`, `shop_name`, `password`, `r_email`, `address`, `contact`, `location`, `status`) VALUES
(4, 'lol', 'asd', 'lol@gmail.com', 'udupi', 9865986953, 'udupi', 1),
(3, 'abc rent', '123', 'lol@mail.com', 'Mangalore', 9865986475, 'Mangalore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
CREATE TABLE IF NOT EXISTS `vehicle_table` (
  `s_id` int(10) NOT NULL,
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_reg` varchar(10) NOT NULL,
  `v_model` varchar(20) NOT NULL,
  `v_type` varchar(20) NOT NULL,
  `price` int(5) NOT NULL,
  `img` varchar(150) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_table`
--

INSERT INTO `vehicle_table` (`s_id`, `v_id`, `v_reg`, `v_model`, `v_type`, `price`, `img`) VALUES
(1, 2, 'ka20eq3493', 'access 125', 'Two Wheeler', 1000, 'download.jpg'),
(1, 3, 'ka20eq4444', 'dio', 'Two Wheeler', 800, 's.jpg'),
(2, 4, 'pj20eq3493', 'ray', 'Two Wheeler', 900, 'Yamaha-Ray-ZR-Red-White-1.jpg'),
(3, 5, 'ka15ww3493', 'wwe', 'Four Wheeler', 1500, 'download (1).jpg'),
(3, 6, 'pj15eq2543', 'skjgad', 'Four Wheeler', 1800, 'download (1).jpg'),
(3, 7, 'ka20eq3493', 'access 125', 'Four Wheeler', 1500, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
