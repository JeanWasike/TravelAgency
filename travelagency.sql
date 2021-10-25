-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 25, 2021 at 05:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `bookingID` int(255) NOT NULL,
  `packageID` bigint(255) NOT NULL,
  `clientID` int(8) NOT NULL,
  `destID` int(100) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `modeTransportID` int(10) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(5) NOT NULL,
  `bookingStatus` enum('Available','Not Available') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buses_table`
--

CREATE TABLE `buses_table` (
  `busID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `class` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cars_table`
--

CREATE TABLE `cars_table` (
  `vehicleIdentificationNumber` int(20) NOT NULL,
  `countryName` varchar(45) NOT NULL,
  `pickUp` varchar(255) NOT NULL,
  `dropOff` varchar(255) NOT NULL,
  `capacity` int(10) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories_table`
--

CREATE TABLE `categories_table` (
  `categoryID` int(10) NOT NULL,
  `categoryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `countries_table`
--

CREATE TABLE `countries_table` (
  `countryID` int(10) NOT NULL,
  `countryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `destination_table`
--

CREATE TABLE `destination_table` (
  `destID` int(100) NOT NULL,
  `destName` varchar(100) NOT NULL,
  `countryID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flights_table`
--

CREATE TABLE `flights_table` (
  `flightNumber` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cabinClass` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotels_table`
--

CREATE TABLE `hotels_table` (
  `hotelID` bigint(255) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `hotelAddress` varchar(100) NOT NULL,
  `hotelImage` varchar(100) NOT NULL,
  `destID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images_table`
--

CREATE TABLE `images_table` (
  `imageID` int(255) NOT NULL,
  `imageName` varchar(50) NOT NULL,
  `imageDescription` varchar(100) NOT NULL,
  `hotelID` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package_table`
--

CREATE TABLE `package_table` (
  `packageID` int(255) NOT NULL,
  `hotelID` bigint(255) NOT NULL,
  `roomID` int(10) NOT NULL,
  `pricePerGuest` double NOT NULL,
  `totalPrice` double NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `categoryID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_table`
--

CREATE TABLE `payment_table` (
  `paymentID` int(255) NOT NULL,
  `bookingID` int(255) NOT NULL,
  `paymentMethodID` int(255) NOT NULL,
  `clientID` int(8) NOT NULL,
  `clientFName` varchar(25) NOT NULL,
  `clientLName` varchar(25) NOT NULL,
  `amountPaid` double NOT NULL,
  `datePaid` date NOT NULL,
  `paymentStatus` enum('Confirmed','Pending','Cancelled') NOT NULL,
  `adminID` int(8) NOT NULL,
  `referenceNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymethod_table`
--

CREATE TABLE `paymethod_table` (
  `paymentMethodID` int(255) NOT NULL,
  `clientID` int(8) NOT NULL,
  `currency` enum('USD','KSH','USH','TSH','EURO','RWANDESE','FRANC') NOT NULL,
  `paymentMode` enum('Credit','Card','M-Pesa','PayPal','eWallet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms_table`
--

CREATE TABLE `rooms_table` (
  `roomID` int(10) NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `roomDescription` varchar(100) NOT NULL,
  `noOfGuests` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminID` int(8) NOT NULL,
  `adminFName` varchar(50) NOT NULL,
  `adminLName` varchar(50) NOT NULL,
  `adminUName` varchar(50) NOT NULL,
  `adminPassword` varchar(500) NOT NULL,
  `adminEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `clientID` int(8) NOT NULL,
  `clientFName` varchar(25) NOT NULL,
  `clientLName` varchar(25) NOT NULL,
  `clientUName` varchar(25) NOT NULL,
  `clientPhone` varchar(13) NOT NULL,
  `clientEmail` varchar(255) NOT NULL,
  `clientPassword` varchar(255) NOT NULL,
  `clientLocation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `reviewID` int(11) NOT NULL,
  `clientID` int(8) NOT NULL,
  `reviewTimeCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trains_table`
--

CREATE TABLE `trains_table` (
  `trainID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `coachType` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `packageID` (`packageID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `destID` (`destID`);

--
-- Indexes for table `buses_table`
--
ALTER TABLE `buses_table`
  ADD PRIMARY KEY (`busID`);

--
-- Indexes for table `cars_table`
--
ALTER TABLE `cars_table`
  ADD PRIMARY KEY (`vehicleIdentificationNumber`);

--
-- Indexes for table `categories_table`
--
ALTER TABLE `categories_table`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `countries_table`
--
ALTER TABLE `countries_table`
  ADD PRIMARY KEY (`countryID`);

--
-- Indexes for table `destination_table`
--
ALTER TABLE `destination_table`
  ADD PRIMARY KEY (`destID`),
  ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `flights_table`
--
ALTER TABLE `flights_table`
  ADD PRIMARY KEY (`flightNumber`);

--
-- Indexes for table `hotels_table`
--
ALTER TABLE `hotels_table`
  ADD PRIMARY KEY (`hotelID`),
  ADD KEY `destID` (`destID`);

--
-- Indexes for table `images_table`
--
ALTER TABLE `images_table`
  ADD PRIMARY KEY (`imageID`),
  ADD KEY `hotelID` (`hotelID`);

--
-- Indexes for table `package_table`
--
ALTER TABLE `package_table`
  ADD PRIMARY KEY (`packageID`),
  ADD KEY `hotelID` (`hotelID`),
  ADD KEY `roomID` (`roomID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `bookingID` (`bookingID`),
  ADD KEY `paymentMethodID` (`paymentMethodID`),
  ADD KEY `adminID` (`adminID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `paymethod_table`
--
ALTER TABLE `paymethod_table`
  ADD PRIMARY KEY (`paymentMethodID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `rooms_table`
--
ALTER TABLE `rooms_table`
  ADD PRIMARY KEY (`roomID`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `trains_table`
--
ALTER TABLE `trains_table`
  ADD PRIMARY KEY (`trainID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `bookingID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buses_table`
--
ALTER TABLE `buses_table`
  MODIFY `busID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8457225460;

--
-- AUTO_INCREMENT for table `categories_table`
--
ALTER TABLE `categories_table`
  MODIFY `categoryID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries_table`
--
ALTER TABLE `countries_table`
  MODIFY `countryID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destination_table`
--
ALTER TABLE `destination_table`
  MODIFY `destID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights_table`
--
ALTER TABLE `flights_table`
  MODIFY `flightNumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2098616430;

--
-- AUTO_INCREMENT for table `hotels_table`
--
ALTER TABLE `hotels_table`
  MODIFY `hotelID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_table`
--
ALTER TABLE `images_table`
  MODIFY `imageID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_table`
--
ALTER TABLE `package_table`
  MODIFY `packageID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_table`
--
ALTER TABLE `payment_table`
  MODIFY `paymentID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymethod_table`
--
ALTER TABLE `paymethod_table`
  MODIFY `paymentMethodID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms_table`
--
ALTER TABLE `rooms_table`
  MODIFY `roomID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70745622;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `clientID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84575460;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75035146;

--
-- AUTO_INCREMENT for table `trains_table`
--
ALTER TABLE `trains_table`
  MODIFY `trainID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4343567811;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD CONSTRAINT `booking_table_ibfk_1` FOREIGN KEY (`packageID`) REFERENCES `hotels_table` (`hotelID`),
  ADD CONSTRAINT `booking_table_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booking_table_ibfk_3` FOREIGN KEY (`destID`) REFERENCES `destination_table` (`destID`);

--
-- Constraints for table `destination_table`
--
ALTER TABLE `destination_table`
  ADD CONSTRAINT `destination_table_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `countries_table` (`countryID`);

--
-- Constraints for table `hotels_table`
--
ALTER TABLE `hotels_table`
  ADD CONSTRAINT `hotels_table_ibfk_1` FOREIGN KEY (`destID`) REFERENCES `destination_table` (`destID`);

--
-- Constraints for table `images_table`
--
ALTER TABLE `images_table`
  ADD CONSTRAINT `images_table_ibfk_1` FOREIGN KEY (`hotelID`) REFERENCES `hotels_table` (`hotelID`);

--
-- Constraints for table `package_table`
--
ALTER TABLE `package_table`
  ADD CONSTRAINT `package_table_ibfk_1` FOREIGN KEY (`hotelID`) REFERENCES `hotels_table` (`hotelID`),
  ADD CONSTRAINT `package_table_ibfk_2` FOREIGN KEY (`roomID`) REFERENCES `rooms_table` (`roomID`),
  ADD CONSTRAINT `package_table_ibfk_3` FOREIGN KEY (`categoryID`) REFERENCES `categories_table` (`categoryID`);

--
-- Constraints for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD CONSTRAINT `payment_table_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking_table` (`bookingID`),
  ADD CONSTRAINT `payment_table_ibfk_2` FOREIGN KEY (`paymentMethodID`) REFERENCES `paymethod_table` (`paymentMethodID`),
  ADD CONSTRAINT `payment_table_ibfk_3` FOREIGN KEY (`adminID`) REFERENCES `tbl_admin` (`adminID`),
  ADD CONSTRAINT `payment_table_ibfk_4` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);

--
-- Constraints for table `paymethod_table`
--
ALTER TABLE `paymethod_table`
  ADD CONSTRAINT `paymethod_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
