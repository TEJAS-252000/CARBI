-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 08:33 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `Gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`name`, `password`, `Gender`) VALUES
('pavan', 'kumar', 'Male'),
('tejas', 'kumar', 'Male'),
('gfghhhgfhgfh', 'fgdfgfdgfdgfd', 'Male'),
('rahul', 'rahulk', 'Male'),
('tejass', 'tejas', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `image` varchar(50) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `bike_name` varchar(20) NOT NULL,
  `displacement` varchar(20) NOT NULL,
  `power` varchar(20) NOT NULL,
  `milage` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `bike_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`image`, `brand_name`, `bike_name`, `displacement`, `power`, `milage`, `price`, `bike_type`) VALUES
('../images/bike.png', 'Bajaj', 'Discover', '125cc', '11bhp', 60, 68000, 'Street'),
('../images/bike2.png', 'Royal Enfield', 'Classic 350', '350cc', '19bhp', 37, 100050, 'Cruise'),
('../images/bike3.png', 'Royal Enfield', 'Thunderbird 350', '350cc', '19bhp', 30, 104000, 'Cruise'),
('../images/bike4.png', 'Royal Enfield', 'Himalayan', '411cc', '24bhp', 34, 200000, 'Cruise'),
('13', 'Honda', 'Activa', '110cc', '8bhp', 60, 55000, 'Scooter'),
('14', 'Honda', 'Shine', '124cc', '10.5bhp', 60, 64000, 'Street'),
('15', 'Honda', 'Unicorn 160', '159cc', '14.5bhp', 62, 76000, 'Street'),
('16', 'Honda', 'Hornet 160R', '159cc', '15.5bhp', 52, 87000, 'Sports'),
('17', 'Yamaha', 'Ray-Z', '110cc', '8bhp', 60, 52000, 'Scooter'),
('18', 'Yamaha', 'Fascino', '110cc', '7bhp', 60, 56000, 'Scooter'),
('19', 'Yamaha', 'FZ-S V2.0', '150cc', '13bhp', 45, 83000, 'Street'),
('2', 'Bajaj', 'Pulsar', '150cc', '14.5bhp', 45, 86000, 'Street'),
('20', 'Yamaha', 'YZF R1', '998cc', '194bhp', 25, 2100000, 'Sports'),
('3', 'Bajaj', 'NS200', '200cc', '24bhp', 38, 100000, 'Sports'),
('4', 'Bajaj', 'Dominar', '400cc', '34bhp', 30, 200000, 'Cruise'),
('C:\\xampp\\htdocs\\carbi.com\\images\\bike1.png', 'Royal Enfield', 'Bullet 350', '350cc', '19bhp', 37, 101000, 'Cruise');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(4) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `car_name` varchar(25) NOT NULL,
  `fuel_type` varchar(10) NOT NULL,
  `displacement` varchar(10) NOT NULL,
  `power` varchar(10) NOT NULL,
  `mileage` varchar(10) NOT NULL,
  `price` int(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand_name`, `car_name`, `fuel_type`, `displacement`, `power`, `mileage`, `price`, `type`) VALUES
(1, 'Maruthi Suzuki', 'Alto 800', 'Petrol', '798cc', '48bhp', '24', 400000, 'Hatchback'),
(2, 'Maruthi Suzuki', 'Wagon R', 'Petrol', '998cc', '67bhp', '20.5kmpl', 600000, 'Hatchback'),
(3, 'Maruthi Suzuki', 'CelerioX', 'Petrol', '998cc', '67bhp', '23.1kmpl', 700000, 'Hatchback'),
(4, 'Maruthi Suzuki', 'Swift', 'Petrol', '1197cc', '82bhp', '22kmpl', 900000, 'Hatchback'),
(5, 'Maruthi Suzuki', 'Swift', 'Diesel', '1248cc', '74bhp', '28kmpl', 1000000, 'Hatchback'),
(6, 'Maruthi Suzuki', 'Dzire', 'Petrol', '1197cc', '82bhp', '22kmpl', 900000, 'Sedan'),
(7, 'Maruthi Suzuki', 'Dzire', 'Diesel', '1247cc', '74bhp', '28kmpl', 1000000, 'Sedan'),
(8, 'Hyundai', 'Eon', 'Petrol', '998cc', '68bhp', '20kmpl', 600000, 'Hatchback'),
(9, 'Hyundai', 'Santro', 'Petrol', '1086cc', '68bhp', '20kmpl', 700000, 'Hatchback'),
(10, 'Hyundai', 'i20 Active', 'Petrol', '1197cc', '82bhp', '17kmpl', 1100000, 'Hatchback'),
(11, 'Hyundai', 'i20 Active', 'Diesel', '1396cc', '89bhp', '21.9kmpl', 1300000, 'Hatchback'),
(12, 'Hyundai', 'Tucson GLS', 'Diesel', '1995cc', '182bhp', '16.7kmpl', 3400000, 'Compact Sedan'),
(13, 'Hyundai', 'Tucson GLS', 'Petrol', '1999cc', '152bhp', '12.7kmpl', 3000000, 'Compact Sedan'),
(14, 'Toyota', 'Etios Liva', 'Petrol', '1195cc', '79bhp', '18.7kmpl', 900000, 'Hatchback'),
(15, 'Toyota', 'Etios Liva', 'Diesel', '1365cc', '67bhp', '23.7kmpl', 900000, 'Hatchback'),
(16, 'Toyota', 'Fortuner', 'Diesel', '2755cc', '174bhp', '12.7kmpl', 4100000, 'SUV'),
(17, 'Toyota', 'Fortuner', 'Petrol', '2695cc', '164bhp', '10.2kmpl', 3700000, 'SUV'),
(18, 'Toyota', 'Land Cruiser', 'Petrol', '4461cc', '262bhp', '6.2kmpl', 2000000, 'SUV'),
(19, 'Skoda', 'Rapid', 'Petrol', '1595cc', '102bhp', '14.7kmpl', 1600000, 'Sedan'),
(20, 'Skoda', 'Rapid', 'Diesel', '1495cc', '109bhp', '21.7kmpl', 1700000, 'Sedan'),
(21, 'Skoda', 'Kodaiq', 'Diesel', '1995cc', '149bhp', '16.7kmpl', 4500000, 'SUV');

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

CREATE TABLE `car_brand` (
  `brand_id` int(4) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`brand_id`, `brand_name`) VALUES
(1, 'Maruthi Suzuki'),
(2, 'Hyundai'),
(3, 'Toyota'),
(4, 'Tata'),
(5, 'Skoda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`image`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_brand`
--
ALTER TABLE `car_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `car_brand`
--
ALTER TABLE `car_brand`
  MODIFY `brand_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
