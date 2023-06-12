-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wlfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `e_id`) VALUES
('Rahul', 'Rahul123', 501),
('Santosh', 'Santosh123', 505),
('Harshit', 'Harshit123', 502);

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `a_age` int(5) NOT NULL,
  `a_breed` varchar(20) NOT NULL,
  `a_feed` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`a_id`, `a_name`, `a_age`, `a_breed`, `a_feed`) VALUES
(1001, 'Sher', 5, 'Lion', 'Meat'),
(1002, 'Raja ', 10, 'Elephant', 'Vegetables'),
(1003, 'yadav', 25, 'Tortoise', 'Vegetables'),
(1004, 'Harry', 3, 'owl', 'Bird feed'),
(1005, 'Garry', 9, 'Giraffe', 'Vegetables'),
(1006, 'Alex', 10, 'Tiger', 'Meat'),
(2001, 'lion', 12, 'Lion', 'Meat');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `D_id` int(5) NOT NULL,
  `D_name` varchar(20) NOT NULL,
  `D_phone` varchar(20) NOT NULL,
  `D_gender` varchar(10) NOT NULL,
  `D_amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`D_id`, `D_name`, `D_phone`, `D_gender`, `D_amount`) VALUES
(2, 'Harshit', '9874589654', 'Male', 10000),
(3, 'Rahul', '9887419654', 'Male', 20000),
(4, 'Raman', '6546545466', 'Male', 5000),
(5, 'Rishabh', '8745987458', 'Other', 45000),
(6, 'Yash', '9111236456', 'Male', 50000),
(7, 'Rithika', '8974563219', 'Female', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `a_id` int(11) DEFAULT NULL,
  `e_name` varchar(20) NOT NULL,
  `e_gender` varchar(20) NOT NULL,
  `e_dob` date NOT NULL,
  `e_phone` int(11) NOT NULL,
  `e_salary` int(11) NOT NULL,
  `e_address` varchar(40) DEFAULT NULL,
  `e_designation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `a_id`, `e_name`, `e_gender`, `e_dob`, `e_phone`, `e_salary`, `e_address`, `e_designation`) VALUES
(501, 1001, 'Rahul Saraf', 'Male ', '2002-06-22', 783834385, 15000, 'OLD A.G. Colony Kadru', 'Caretaker'),
(502, 1001, 'Harshit Kant Verma', 'Male ', '2000-11-30', 2147483647, 25000, 'OLD A.G. Colony Kadru', 'Admin'),
(503, 1002, 'Ayush', 'Male ', '1991-06-14', 856472913, 10000, '24th Main Street', 'Caretaker'),
(504, 1005, 'Sakshi', 'Female', '1992-03-18', 954763218, 12000, 'HSR ', 'Caretaker'),
(505, 1003, 'Santosh', 'Male ', '1993-10-22', 874563319, 13000, 'Banashankari', 'Caretaker');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_fname` varchar(20) NOT NULL,
  `f_lname` varchar(20) NOT NULL,
  `f_email` varchar(30) NOT NULL,
  `f_phone` varchar(11) NOT NULL,
  `f_rating` varchar(20) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_fname`, `f_lname`, `f_email`, `f_phone`, `f_rating`, `t_id`) VALUES
(1, 'Harshit Kant', 'Verma', 'harshitkant56@gmail.com', '8547896589', '4', 6),
(2, 'Rajeev', 'sharan', 'rjs22@gmail.com', '9546287136', '5', 7),
(3, 'Rashmi ', 'Mittal', 'RashmiMitt3@gmail.com', '9211440456', '4', 8),
(5, 'Yash', 'Raj', 'rajyash55@gmail.com', '8945621375', '3', 7),
(6, 'Shivani', 'Sen', 'sivsen4@gmail.com', '8974635214', '4', 8),
(7, 'Harshit Kant', 'Verma', 'harshitkant56@gmail.com', '07903834385', '5', 15),
(8, 'rahul', 'saraf', 'rahulsaraf@gmil.om', '98564236', '4', 20),
(9, 'santhosh', 'bm', 'santhoshsanthu6362@gmail.com', '6362923515', '', 21),
(10, 'Harshit Kant', 'Verma', 'harshitkant56@gmail.com', '07903834385', '4', 22),
(11, 'vignesh ', 'holla', 'santhoshsanthu6362@gmail.com', '6362923525', '3', 22),
(12, '', '', '', '', '', 24),
(13, 'darshan', 'me', 'santhoshsanthu6362@gmail.com', '6362913616', '2', 24),
(14, 'f', 'ff', 'ff4@gmail.com', '5552254222', '', 25);

-- --------------------------------------------------------

--
-- Table structure for table `saffari`
--

CREATE TABLE `saffari` (
  `vehicle_no` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` varchar(10) DEFAULT '09:00:00',
  `time_out` varchar(10) DEFAULT '11:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saffari`
--

INSERT INTO `saffari` (`vehicle_no`, `t_id`, `date`, `time_in`, `time_out`) VALUES
(2, 9, '2022-03-28', '12:00:00', '14:00:00'),
(2, 10, '2022-03-03', '12:00:00', '14:00:00'),
(1, 14, '2022-03-31', '09:00:00', '11:00:00'),
(2, 15, '2022-04-01', '12:00:00', '14:00:00'),
(2, 16, '2022-04-01', '12:00:00', '14:00:00'),
(3, 17, '2022-03-28', '15:00:00', '17:00:00'),
(3, 18, '2022-03-28', '15:00:00', '17:00:00'),
(1, 20, '2022-03-28', '09:00:00', '11:00:00'),
(1, 23, '2020-12-20', '09:00:00', '11:00:00'),
(2, 24, '2020-02-21', '12:00:00', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `t_id` int(20) NOT NULL,
  `t_type` varchar(20) NOT NULL DEFAULT 'Non_saffari',
  `no_of_persons` int(11) NOT NULL DEFAULT 1,
  `t_date` date NOT NULL,
  `t_time` varchar(10) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketbooking`
--

INSERT INTO `ticketbooking` (`t_id`, `t_type`, `no_of_persons`, `t_date`, `t_time`, `price`) VALUES
(5, 'Non_Saffari', 54, '0000-00-00', '09:00:00', '2700'),
(6, 'Saffari', 10, '0000-00-00', '12:00:00', '500'),
(7, 'Saffari', 10, '2022-03-28', '12:00:00', '500'),
(8, 'Saffari', 10, '2022-03-28', '12:00:00', '500'),
(9, 'Saffari', 10, '2022-03-28', '12:00:00', '500'),
(10, 'Saffari', 10, '2022-03-03', '12:00:00', '500'),
(11, 'Non_Saffari', 54, '2022-03-11', '09:00:00', '2700'),
(12, 'Non_Saffari', 1, '2022-03-29', '09:00:00', '50'),
(13, 'Non_Saffari', 2, '2022-03-29', '09:00:00', '100'),
(14, 'Saffari', 10, '2022-03-31', '09:00:00', '500'),
(15, 'Saffari', 4, '2022-04-01', '12:00:00', '200'),
(16, 'Saffari', 4, '2022-04-01', '12:00:00', '200'),
(17, 'Saffari', 5, '2022-03-28', '15:00:00', '250'),
(18, 'Saffari', 3, '2022-03-28', '15:00:00', '150'),
(19, 'Non_Saffari', 6, '2022-03-27', '15:00:00', '300'),
(20, 'Saffari', 4, '2022-03-28', '09:00:00', '200'),
(21, 'Non_Saffari', 2, '2020-12-20', '12:00:00', '100'),
(22, 'Non_Saffari', 2, '2021-12-20', '09:00:00', '100'),
(23, 'Saffari', 30, '2020-12-20', '09:00:00', '1500'),
(24, 'Saffari', 15, '2020-02-21', '12:00:00', '750'),
(25, 'Non_Saffari', 1, '2022-09-29', '09:00:00', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `saffari`
--
ALTER TABLE `saffari`
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `D_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `animal` (`a_id`) ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `ticketbooking` (`t_id`) ON UPDATE CASCADE;

--
-- Constraints for table `saffari`
--
ALTER TABLE `saffari`
  ADD CONSTRAINT `saffari_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `ticketbooking` (`t_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
