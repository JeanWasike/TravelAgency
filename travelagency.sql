-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 04:32 PM
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
-- Table structure for table `airports_and_airstrips_table`
--

CREATE TABLE `airports_and_airstrips_table` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airports_and_airstrips_table`
--

INSERT INTO `airports_and_airstrips_table` (`ID`, `name`) VALUES
(1, 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya'),
(2, 'Dar es Salaam International (DAR),Tanzania'),
(3, 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia'),
(4, 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania'),
(5, 'Mombasa - Mombasa Moi International Airport (MBA),Kenya,Tanzania'),
(6, 'Kigali-Kigali International Airport (KGL),Rwanda');

-- --------------------------------------------------------

--
-- Table structure for table `booked_buses_table`
--

CREATE TABLE `booked_buses_table` (
  `ID` int(10) NOT NULL,
  `clientID` int(8) NOT NULL,
  `busID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `departureDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_cars_table`
--

CREATE TABLE `booked_cars_table` (
  `ID` int(10) NOT NULL,
  `clientID` int(8) NOT NULL,
  `vehicleIdentificationNumber` int(20) NOT NULL,
  `pickUpDate` date NOT NULL,
  `dropOffDate` date NOT NULL,
  `pickUpPlace` varchar(24) NOT NULL,
  `dropOffPlace` varchar(24) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_flights_table`
--

CREATE TABLE `booked_flights_table` (
  `ID` int(10) NOT NULL,
  `clientID` int(8) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `departureDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `flightNumber` varchar(24) NOT NULL,
  `cabinClass` varchar(24) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_trains_table`
--

CREATE TABLE `booked_trains_table` (
  `ID` int(10) NOT NULL,
  `clientID` int(8) NOT NULL,
  `trainID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `departureDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `coachType` varchar(10) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_class_flights_table`
--

CREATE TABLE `business_class_flights_table` (
  `ID` int(10) NOT NULL,
  `flightNumber` varchar(24) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_class_flights_table`
--

INSERT INTO `business_class_flights_table` (`ID`, `flightNumber`, `from`, `to`, `price`) VALUES
(1, 'KQ483', 'Dar es Salaam International (DAR),Tanzania', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 32712),
(2, 'KQ462', 'Dar es Salaam International (DAR),Tanzania', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 29744),
(3, 'KQ487', 'Dar es Salaam International (DAR),Tanzania', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 46906),
(4, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 32640),
(5, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 36504),
(6, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Dar es Salaam International (DAR),Tanzania', 48890),
(7, 'KQ486', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Dar es Salaam International (DAR),Tanzania', 72210),
(8, 'KQ490', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 29850),
(9, 'KQ580', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 46500),
(10, 'KQ608', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 26789),
(11, 'KQ471', 'Kigali-Kigali International Airport (KGL),Rwanda', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 35860),
(12, 'KQ479', 'Kigali-Kigali International Airport (KGL),Rwanda', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 39452),
(13, 'KQ8681', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 31564),
(14, 'KQ478', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 'Kigali-Kigali International Airport (KGL),Rwanda', 27542);

-- --------------------------------------------------------

--
-- Table structure for table `cars_table`
--

CREATE TABLE `cars_table` (
  `vehicleIdentificationNumber` int(20) NOT NULL,
  `carBodyStyle` varchar(24) NOT NULL,
  `carMake` varchar(24) NOT NULL,
  `carModel` varchar(24) NOT NULL,
  `capacity` int(10) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL
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
-- Table structure for table `economy_class_flights_table`
--

CREATE TABLE `economy_class_flights_table` (
  `ID` int(10) NOT NULL,
  `flightNumber` varchar(24) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `economy_class_flights_table`
--

INSERT INTO `economy_class_flights_table` (`ID`, `flightNumber`, `from`, `to`, `price`) VALUES
(1, 'KQ483', 'Dar es Salaam International (DAR),Tanzania', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 22512),
(2, 'KQ462', 'Dar es Salaam International (DAR),Tanzania', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 20944),
(3, 'KQ487', 'Dar es Salaam International (DAR),Tanzania', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 31696),
(4, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 20944),
(5, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 21504),
(6, 'KQ401', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 'Dar es Salaam International (DAR),Tanzania', 36288),
(7, 'KQ486', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Dar es Salaam International (DAR),Tanzania', 59405),
(8, 'KQ490', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 23675),
(9, 'KQ580', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Addis Ababa-Addis Ababa Bole (ADD),Ethiopia', 36660),
(10, 'KQ608', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 19335),
(11, 'KQ471', 'Kigali-Kigali International Airport (KGL),Rwanda', 'Nairobi-Nairobi Jomo Kenyatta International (NBO),Kenya', 24416),
(12, 'KQ479', 'Kigali-Kigali International Airport (KGL),Rwanda', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 31920),
(13, 'KQ8681', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 'Zanzibar-Zanzibar Kisauni (ZNZ),Tanzania', 26345),
(14, 'KQ478', 'Mombasa - Mombasa Moi International Airport (MBA),Kenya', 'Kigali-Kigali International Airport (KGL),Rwanda', 20345);

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
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports_and_airstrips_table`
--
ALTER TABLE `airports_and_airstrips_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `booked_buses_table`
--
ALTER TABLE `booked_buses_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `busID` (`busID`);

--
-- Indexes for table `booked_cars_table`
--
ALTER TABLE `booked_cars_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `vehicleIdentificationNumber` (`vehicleIdentificationNumber`);

--
-- Indexes for table `booked_flights_table`
--
ALTER TABLE `booked_flights_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `booked_trains_table`
--
ALTER TABLE `booked_trains_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `trainID` (`trainID`);

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
-- Indexes for table `business_class_flights_table`
--
ALTER TABLE `business_class_flights_table`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `economy_class_flights_table`
--
ALTER TABLE `economy_class_flights_table`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for table `airports_and_airstrips_table`
--
ALTER TABLE `airports_and_airstrips_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booked_buses_table`
--
ALTER TABLE `booked_buses_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_cars_table`
--
ALTER TABLE `booked_cars_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_flights_table`
--
ALTER TABLE `booked_flights_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_trains_table`
--
ALTER TABLE `booked_trains_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `bookingID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buses_table`
--
ALTER TABLE `buses_table`
  MODIFY `busID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_class_flights_table`
--
ALTER TABLE `business_class_flights_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `economy_class_flights_table`
--
ALTER TABLE `economy_class_flights_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `trainID` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_buses_table`
--
ALTER TABLE `booked_buses_table`
  ADD CONSTRAINT `booked_buses_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booked_buses_table_ibfk_2` FOREIGN KEY (`busID`) REFERENCES `tbl_client` (`clientID`);

--
-- Constraints for table `booked_cars_table`
--
ALTER TABLE `booked_cars_table`
  ADD CONSTRAINT `booked_cars_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booked_cars_table_ibfk_2` FOREIGN KEY (`vehicleIdentificationNumber`) REFERENCES `cars_table` (`vehicleIdentificationNumber`);

--
-- Constraints for table `booked_flights_table`
--
ALTER TABLE `booked_flights_table`
  ADD CONSTRAINT `booked_flights_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);

--
-- Constraints for table `booked_trains_table`
--
ALTER TABLE `booked_trains_table`
  ADD CONSTRAINT `booked_trains_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booked_trains_table_ibfk_2` FOREIGN KEY (`trainID`) REFERENCES `trains_table` (`trainID`);

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
