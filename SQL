-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 09:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_info`
--

CREATE TABLE `tbl_admin_info` (
  `admin_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_url` varchar(40) NOT NULL,
  `activation_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_info`
--

INSERT INTO `tbl_admin_info` (`admin_id`, `name`, `email`, `phone_number`, `address`, `password`, `img_url`, `activation_status`) VALUES
(31, 'admin', 'admin@gmail.com', '081366813996', 'The Address Cibubur, Cluster Deluxe Blok F-5', '21232f297a57a5a743894a0e4a801fc3', 'agent_img/68aa44c483.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent_info`
--

CREATE TABLE `tbl_agent_info` (
  `agent_id` int(11) NOT NULL,
  `counter_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(33) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_url` varchar(40) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_agent_info`
--

INSERT INTO `tbl_agent_info` (`agent_id`, `counter_id`, `name`, `email`, `phone_number`, `address`, `password`, `img_url`, `active_status`) VALUES
(37, 4, 'Agen1', 'agen1@gmail.com', '081366813996', 'Bukittingi', '202cb962ac59075b964b07152d234b70', 'agent_img/51d906d665.jpg', 1),
(38, 1, 'Agen2', 'agen2@gmail.com', '081366813996', 'Padang', '202cb962ac59075b964b07152d234b70', 'agent_img/4fb01412ef.jpg', 1),
(39, 3, 'Agen3', 'agen3@gmail.com', '081366813996', 'Sawahlunto', '202cb962ac59075b964b07152d234b70', 'agent_img/e3e8cc77a5.jpg', 1),
(40, 2, 'Agen4', 'agen4@gmail.com', '081366813996', 'Solok', '202cb962ac59075b964b07152d234b70', 'agent_img/df09466130.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booked_seats`
--

CREATE TABLE `tbl_booked_seats` (
  `id` int(11) NOT NULL,
  `pnr_no` int(40) NOT NULL,
  `trip_id` int(40) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `seat_no` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `seat_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_booked_seats`
--

INSERT INTO `tbl_booked_seats` (`id`, `pnr_no`, `trip_id`, `passenger_id`, `seat_no`, `date`, `seat_status`) VALUES
(117, 1582, 14, 7, 'A1', '2021-01-12', 1),
(118, 8084, 14, 7, 'A1', '2021-01-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_info`
--

CREATE TABLE `tbl_booking_info` (
  `booking_id` int(40) NOT NULL,
  `pnr_no` int(40) NOT NULL,
  `trip_id` int(40) NOT NULL,
  `counter_id` int(40) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `reference_no` varchar(60) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `journey_date` date NOT NULL,
  `booking_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `booking_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_booking_info`
--

INSERT INTO `tbl_booking_info` (`booking_id`, `pnr_no`, `trip_id`, `counter_id`, `passenger_id`, `reference_no`, `total_amount`, `journey_date`, `booking_date`, `booking_status`) VALUES
(24, 1582, 14, 1, 7, '1', 20000, '2021-01-12', '2021-01-10 19:18:24', 1),
(25, 8084, 14, 1, 7, '2', 20000, '2021-01-11', '2021-01-10 19:53:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_info`
--

CREATE TABLE `tbl_bus_info` (
  `bus_id` int(11) NOT NULL,
  `bus_no` varchar(11) NOT NULL,
  `bus_type` char(20) NOT NULL,
  `img_bus` varchar(40) NOT NULL,
  `no_of_seats` int(11) NOT NULL DEFAULT 40
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bus_info`
--

INSERT INTO `tbl_bus_info` (`bus_id`, `bus_no`, `bus_type`, `img_bus`, `no_of_seats`) VALUES
(5, 'JS-01', 'A/C Sleeper', 'img/873c5c1d34.jpg', 20),
(6, 'JS-02', 'A/C Sleeper', 'img/06297e6fb8.jpg', 20),
(7, 'JS-03', 'A/C Sleeper', 'img/1b2c15cd69.jpg', 20),
(8, 'JS-04', 'A/C Sleeper', 'img/bc11ec0b99.jpg', 20),
(9, 'JS-05', 'A/C Sleeper', 'img/94ad5f35cd.jpg', 20),
(10, 'JS-06', 'A/C Sleeper', 'img/c41b963fed.jpg', 20),
(11, 'JS-07', 'A/C Sleeper', 'img/fd3bafb592.jpg', 20),
(12, 'JS-08', 'A/C Sleeper', 'img/462882b594.jpg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancel_request`
--

CREATE TABLE `tbl_cancel_request` (
  `request_id` int(11) NOT NULL,
  `pnr_no` int(40) NOT NULL,
  `counter_id` int(40) NOT NULL,
  `bkash_no` varchar(15) NOT NULL,
  `cancel_status` int(15) NOT NULL DEFAULT 0,
  `cancel_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `city_id` int(40) NOT NULL,
  `city_name` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`city_id`, `city_name`) VALUES
(1, 'Padang'),
(2, 'Solok'),
(3, 'Sawahlunto'),
(4, 'Bukittingi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complain`
--

CREATE TABLE `tbl_complain` (
  `com_id` int(40) NOT NULL,
  `com_nam` char(40) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `subject` char(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_counter_info`
--

CREATE TABLE `tbl_counter_info` (
  `counter_id` int(40) NOT NULL,
  `city_name` char(40) NOT NULL,
  `counter_name` char(50) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `location_counter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_counter_info`
--

INSERT INTO `tbl_counter_info` (`counter_id`, `city_name`, `counter_name`, `contact_no`, `location_counter`) VALUES
(1, 'Padang', 'Terminal Padang', '081366813996 ', 'Padang, Sumatera Barat'),
(2, 'Solok', 'Terminal Solok', '081366813996 ', 'Solok, Sumatera Barat'),
(3, 'Sawahlunto', 'Terminal Sawahlunto', '081366813996 ', 'Sawahlunto, Sumatera Barat'),
(4, 'Bukittingi', 'Terminal Bukittinggi', '081366813996 ', 'Bukittinggi, Sumatera Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_passenger_info`
--

CREATE TABLE `tbl_passenger_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_passenger_info`
--

INSERT INTO `tbl_passenger_info` (`id`, `name`, `address`, `email`, `mobile`, `password`) VALUES
(7, 'pantek', 'pantek', 'pantek@gmail.com', '1234567890', 'a647141a9659b614f8c4963da2b18ff6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reserved_seat`
--

CREATE TABLE `tbl_reserved_seat` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `booked_time` datetime NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL,
  `seat_no` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reserved_seat`
--

INSERT INTO `tbl_reserved_seat` (`id`, `trip_id`, `user_id`, `session_id`, `bus_id`, `booked_time`, `date`, `seat_no`) VALUES
(1396, 14, 7, 'sfj6un2akp435nvuc2m9icpogp', 5, '2021-01-11 02:16:37', '2021-01-12', 'A1'),
(1399, 14, 7, 'sfj6un2akp435nvuc2m9icpogp', 5, '2021-01-11 02:52:01', '2021-01-11', 'A1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trip_info`
--

CREATE TABLE `tbl_trip_info` (
  `trip_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `from_city` char(40) NOT NULL,
  `to_city` char(40) NOT NULL,
  `fare` varchar(40) NOT NULL,
  `departure_time` varchar(12) NOT NULL,
  `arrival_time` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_trip_info`
--

INSERT INTO `tbl_trip_info` (`trip_id`, `bus_id`, `from_city`, `to_city`, `fare`, `departure_time`, `arrival_time`) VALUES
(14, 5, 'Padang', 'Solok', '20000', '08:00', '10:00'),
(15, 6, 'Padang', 'Sawahlunto', '35000', '08:00', '12:00'),
(16, 7, 'Solok', 'Sawahlunto', '20000', '08:00', '10:00'),
(17, 8, 'Solok', 'Bukittingi', '25000', '08:00', '10:30'),
(18, 9, 'Solok', 'Padang', '20000', '08:00', '10:00'),
(19, 10, 'Sawahlunto', 'Padang', '35000', '08:00', '12:00'),
(20, 11, 'Sawahlunto', 'Solok', '20000', '08:00', '10:00'),
(21, 12, 'Bukittingi', 'Solok', '25000', '08:00', '10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_info`
--
ALTER TABLE `tbl_admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_agent_info`
--
ALTER TABLE `tbl_agent_info`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_booked_seats`
--
ALTER TABLE `tbl_booked_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking_info`
--
ALTER TABLE `tbl_booking_info`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_bus_info`
--
ALTER TABLE `tbl_bus_info`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `tbl_cancel_request`
--
ALTER TABLE `tbl_cancel_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_complain`
--
ALTER TABLE `tbl_complain`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `tbl_counter_info`
--
ALTER TABLE `tbl_counter_info`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `tbl_passenger_info`
--
ALTER TABLE `tbl_passenger_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reserved_seat`
--
ALTER TABLE `tbl_reserved_seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trip_info`
--
ALTER TABLE `tbl_trip_info`
  ADD PRIMARY KEY (`trip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_info`
--
ALTER TABLE `tbl_admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_agent_info`
--
ALTER TABLE `tbl_agent_info`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_booked_seats`
--
ALTER TABLE `tbl_booked_seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `tbl_booking_info`
--
ALTER TABLE `tbl_booking_info`
  MODIFY `booking_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_bus_info`
--
ALTER TABLE `tbl_bus_info`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cancel_request`
--
ALTER TABLE `tbl_cancel_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `city_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_complain`
--
ALTER TABLE `tbl_complain`
  MODIFY `com_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_counter_info`
--
ALTER TABLE `tbl_counter_info`
  MODIFY `counter_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_passenger_info`
--
ALTER TABLE `tbl_passenger_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_reserved_seat`
--
ALTER TABLE `tbl_reserved_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1400;

--
-- AUTO_INCREMENT for table `tbl_trip_info`
--
ALTER TABLE `tbl_trip_info`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
