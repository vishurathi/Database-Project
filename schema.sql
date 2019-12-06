-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2019 at 06:16 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RAMStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `name`, `pass`) VALUES
(1, 'umer', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `name` varchar(20) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `msg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GuestCustomer`
--

CREATE TABLE `GuestCustomer` (
  `Gname` varchar(20) NOT NULL,
  `phone_number` double NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GuestCustomer`
--

INSERT INTO `GuestCustomer` (`Gname`, `phone_number`, `address`, `email`) VALUES
('Ali', 90083212, '', 'ali@gmail.com'),
('Ali', 3313658712, 'karachi, aladin.', 'exam@plasda.com'),
('shahzad', 99321345, 'karachi, Gulshan e iqbal.', 'khan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Owner`
--

CREATE TABLE `Owner` (
  `profit` double NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Owner`
--

INSERT INTO `Owner` (`profit`, `username`, `password`) VALUES
(0, 'owner', 'pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `paymentGC`
--

CREATE TABLE `paymentGC` (
  `payment` int(11) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentGC`
--

INSERT INTO `paymentGC` (`payment`, `email`) VALUES
(0, 'ali@gmail.com'),
(0, 'exam@plasda.com'),
(5600, 'ali@gmail.com'),
(0, 'ali@gmail.com'),
(5600, 'khan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `paymentRC`
--

CREATE TABLE `paymentRC` (
  `username` varchar(20) NOT NULL,
  `payment` double NOT NULL,
  `afterDiscount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentRC`
--

INSERT INTO `paymentRC` (`username`, `payment`, `afterDiscount`) VALUES
('Mustafa', 34000, 34000),
('Mustafa', 0, 0),
('Mustafa', 0, 0),
('Mustafa', 10000, 0),
('Mustafa', 10000, 0),
('Mustafa', 0, 0),
('Mustafa', 0, 0),
('Mustafa', 12000, 0),
('Mustafa', 12000, 0),
('Mustafa', 12000, 0),
('Mustafa', 5600, 0),
('Mustafa', 5600, 2800),
('Mustafa', 24000, 0),
('Mustafa', 5600, 2800),
('Mustafa', 12000, 6000),
('Mustafa', 5000, 2500),
('Mustafa', 5000, 2500),
('Mustafa', 12000, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pdes` text NOT NULL,
  `pstock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pdes`, `pstock`, `price`, `image`) VALUES
('p1', 'Sofa', 'This sofa has been made by Ramstore.', 10, 12000, 'p4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `Promocode`
--

CREATE TABLE `Promocode` (
  `promo` varchar(20) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Promocode`
--

INSERT INTO `Promocode` (`promo`, `discount`) VALUES
('non', 0),
('pop50', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `RegisterCustomer`
--

CREATE TABLE `RegisterCustomer` (
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `promo` varchar(20) NOT NULL,
  `phonenumber` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RegisterCustomer`
--

INSERT INTO `RegisterCustomer` (`username`, `password`, `address`, `email`, `promo`, `phonenumber`) VALUES
('Ali', 'pakistan', 'karachirashidmaihasroad', 'alikhan98@gmail.com', 'non', 3065003256),
('hamza Ali', 'pakistan', 'pakistan karachi', 'hamzaaliabbasi@gmail.com', 'non', 3012455552),
('Mustafa', 'pakistan', 'Karachi,Sindh', 'mustafa19095@gmail.com', 'pop50', 3313658712);

-- --------------------------------------------------------

--
-- Table structure for table `showDetailsGC`
--

CREATE TABLE `showDetailsGC` (
  `status` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `showDetailsRC`
--

CREATE TABLE `showDetailsRC` (
  `orderno` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showDetailsRC`
--

INSERT INTO `showDetailsRC` (`orderno`, `status`, `price`, `quantity`, `pid`, `username`) VALUES
(1, 'Cancelled', 12000, 1, 'p2', 'Mustafa'),
(2, 'Cancelled', 10000, 1, 'p3', 'Mustafa'),
(3, 'Ordered', 10000, 1, 'p3', 'Mustafa'),
(4, 'Ordered', 34000, 2, 'p2', 'Mustafa'),
(5, 'Ordered', 34000, 1, 'p3', 'Mustafa'),
(6, 'Ordered', 10000, 1, 'p3', 'Mustafa'),
(7, 'Ordered', 10000, 1, 'p3', 'Mustafa'),
(8, 'Delivered', 2800, 1, 'p1', 'Mustafa'),
(9, 'Ordered', 2800, 1, 'p1', 'Mustafa'),
(10, 'Ordered', 0, 1, 'p3', 'Mustafa'),
(11, 'Ordered', 6000, 1, 'p2', 'Mustafa'),
(12, 'Ordered', 2500, 1, 'p3', 'Mustafa'),
(13, 'Ordered', 2500, 1, 'p3', 'Mustafa'),
(14, 'Ordered', 6000, 1, 'p1', 'Mustafa');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `bought` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Name`, `price`, `bought`) VALUES
('Warhouse', 3400, 'woods'),
('Warehouse', 2000, 'wood'),
('warehouse', 1000, 'woods '),
('Warehouse', 1200, 'woods'),
('Warehouse', 3500, 'wood');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GuestCustomer`
--
ALTER TABLE `GuestCustomer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `Owner`
--
ALTER TABLE `Owner`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `paymentGC`
--
ALTER TABLE `paymentGC`
  ADD KEY `fkkk` (`email`);

--
-- Indexes for table `paymentRC`
--
ALTER TABLE `paymentRC`
  ADD KEY `fkrid` (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `Promocode`
--
ALTER TABLE `Promocode`
  ADD PRIMARY KEY (`promo`);

--
-- Indexes for table `RegisterCustomer`
--
ALTER TABLE `RegisterCustomer`
  ADD PRIMARY KEY (`username`),
  ADD KEY `fk` (`promo`);

--
-- Indexes for table `showDetailsGC`
--
ALTER TABLE `showDetailsGC`
  ADD KEY `fkk` (`email`),
  ADD KEY `fkk2` (`pid`);

--
-- Indexes for table `showDetailsRC`
--
ALTER TABLE `showDetailsRC`
  ADD PRIMARY KEY (`orderno`),
  ADD KEY `fk` (`pid`),
  ADD KEY `fk2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showDetailsRC`
--
ALTER TABLE `showDetailsRC`
  MODIFY `orderno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paymentGC`
--
ALTER TABLE `paymentGC`
  ADD CONSTRAINT `fkkk` FOREIGN KEY (`email`) REFERENCES `GuestCustomer` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymentRC`
--
ALTER TABLE `paymentRC`
  ADD CONSTRAINT `fkrid` FOREIGN KEY (`username`) REFERENCES `RegisterCustomer` (`username`);

--
-- Constraints for table `RegisterCustomer`
--
ALTER TABLE `RegisterCustomer`
  ADD CONSTRAINT `fk` FOREIGN KEY (`promo`) REFERENCES `Promocode` (`promo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showDetailsGC`
--
ALTER TABLE `showDetailsGC`
  ADD CONSTRAINT `fkk` FOREIGN KEY (`email`) REFERENCES `GuestCustomer` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkk2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showDetailsRC`
--
ALTER TABLE `showDetailsRC`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`username`) REFERENCES `RegisterCustomer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
