-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 29, 2021 at 06:47 PM
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
-- Table structure for table `booked_transport_table`
--

CREATE TABLE `booked_transport_table` (
  `bookedTransID` int(10) NOT NULL,
  `transportID` int(10) NOT NULL,
  `clientID` int(8) NOT NULL
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
  `companyID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buses_table`
--

INSERT INTO `buses_table` (`busID`, `companyID`, `from`, `to`, `price`) VALUES
(46, 1, '100', '102', 1000),
(47, 1, '100', '101', 1600),
(48, 1, '100', '104', 2400),
(49, 1, '100', '103', 2200),
(50, 1, '100', '105', 1600),
(51, 1, '100', '106', 1400),
(52, 1, '100', '107', 3200),
(53, 1, '103', '105', 1500),
(54, 1, '103', '106', 1500),
(55, 1, '103', '104', 1000),
(56, 1, '103', '107', 3000),
(57, 1, '103', '100', 2200),
(58, 1, '103', '101', 3000),
(59, 1, '103', '102', 3200),
(60, 1, '107', '108', 1600),
(61, 1, '107', '109', 1000),
(62, 1, '107', '100', 3400),
(63, 1, '107', '103', 3000),
(64, 2, '110', '111', 1800),
(65, 2, '110', '112', 800),
(66, 3, '113', '114', 2000),
(67, 3, '113', '115', 2100);

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
  `vehicleIdentificationNumber` varchar(255) NOT NULL,
  `vehicleName` varchar(24) NOT NULL,
  `carBodyStyle` varchar(24) NOT NULL,
  `doors` int(10) NOT NULL,
  `seats` int(10) NOT NULL,
  `luggageCapacity` varchar(10) NOT NULL,
  `transmissionType` varchar(24) NOT NULL,
  `price` double NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars_table`
--

INSERT INTO `cars_table` (`vehicleIdentificationNumber`, `vehicleName`, `carBodyStyle`, `doors`, `seats`, `luggageCapacity`, `transmissionType`, `price`, `imageUrl`) VALUES
('453BMHB68B3286050', 'Toyota Vanguard', 'SUV', 4, 7, '2', 'auto', 13552, 'https://www.auto-data.net/images/f130/Toyota-Vanguard_1.jpg'),
('5YJSAIDG9DFPI4705', 'Mercedes Benz GLE', 'luxury SUV', 4, 5, '5', 'auto', 23968, 'https://www.mercedesbenzcary.com/assets/shared/CustomHTMLFiles/Responsive/MRP/Mercedes-Benz/2018/GLE-SUV/images/2018-Mercedes-Benz-GLE-SUV-01.jpg'),
('7J3ZZ56T7834500003', 'Toyota Fielder', 'station wargon', 4, 5, '3', 'auto', 5488, 'https://www.timamcars.co.ke/wp-content/uploads/2019/03/FS2-3.png'),
('IG1YZ23J9P580342', 'VW Polo', 'hatchback', 4, 5, '2', 'auto', 3920, 'https://upload.wikimedia.org/wikipedia/commons/d/d4/2018_Volkswagen_Polo_SE_1.0_Front.jpg'),
('IHGBH41JXIXN109186', 'Mercedes Benz c300', 'coupe', 2, 2, '2', 'auto', 6720, 'https://upload.wikimedia.org/wikipedia/commons/6/62/2017_Mercedes-Benz_C300_AMG_Line_Premium_Automatic_2.0_Front.jpg'),
('JN3MS37A9PW202929', 'Mazda Premacy', 'minivan', 5, 7, '5', 'auto', 10304, 'https://pictures.topspeed.com/IMG/crop/201307/mazda5-35_800x0w.jpg'),
('JT152EEA100302159', 'Toyota Corolla Axio', 'sedan', 4, 5, '2', 'auto', 4480, 'https://www.mobikeycarmarket.co.ke/fotos/12/produtos/imagens/14004/2_29606275609fbdda40bf2.jpg'),
('RTGHK3IU2ERT02145', 'BMW 3 Series', 'Executive Sedan', 4, 5, '2', 'auto', 22456, 'https://media.ed.edmunds-media.com/for-sale/05-3mw5r7j09m8b73625/img-1-600x400.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories_table`
--

CREATE TABLE `categories_table` (
  `categoryID` int(10) NOT NULL,
  `categoryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories_table`
--

INSERT INTO `categories_table` (`categoryID`, `categoryName`) VALUES
(1, 'Family Package'),
(2, 'Friends Getaway'),
(3, 'HoneyMoon Package'),
(4, 'Solo Retreat');

-- --------------------------------------------------------

--
-- Table structure for table `countries_table`
--

CREATE TABLE `countries_table` (
  `countryID` int(10) NOT NULL,
  `countryName` varchar(45) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries_table`
--

INSERT INTO `countries_table` (`countryID`, `countryName`, `is_deleted`) VALUES
(1, 'Kenya', 0),
(2, 'Ethiopia', 0),
(4, 'Tanzania', 0),
(6, 'Rwanda', 0),
(7, 'Zambia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `destination_table`
--

CREATE TABLE `destination_table` (
  `destID` int(100) NOT NULL,
  `destName` varchar(100) NOT NULL,
  `destImage` varchar(500) NOT NULL,
  `countryID` int(10) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_table`
--

INSERT INTO `destination_table` (`destID`, `destName`, `destImage`, `countryID`, `is_deleted`) VALUES
(1, 'Maasai Mara', 'kenya.jpg', 1, 0),
(2, 'Nairobi City', 'nairobi.jpg', 1, 0),
(3, 'Mombasa - Coast', 'diani.jpg', 1, 0),
(4, 'Mount Kilimanjaro', 'tzTwo.jpg', 4, 0),
(5, 'Serengeti National Park', 'tzThree.jpg', 4, 0),
(6, 'Zanzibar', 'tzOne.jpg', 4, 0),
(7, 'Addis Ababa', 'eth3.jpg', 2, 0),
(8, 'Bahir Dar', 'eth1.jpg', 2, 0),
(9, 'Bishoftu', 'eth2.jpg', 2, 0),
(10, 'Lake Kivu', 'rwanda1.jpg', 6, 0),
(11, 'Kigali Genocide Memorial', 'rwanda2.jpg', 6, 0),
(12, 'The Savannas of Akagera National Park', 'rwanda3.jpg', 6, 0),
(13, 'Livingstone', 'zamb1.jpg', 7, 0),
(14, 'South Luanga National Park', 'zamb2.jpg', 7, 0),
(15, 'Victoria Falls', 'zamb3.jpg', 7, 0);

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
-- Table structure for table `economy_class_trains_table`
--

CREATE TABLE `economy_class_trains_table` (
  `trainID` int(10) NOT NULL,
  `train` varchar(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `economy_class_trains_table`
--

INSERT INTO `economy_class_trains_table` (`trainID`, `train`, `from`, `to`, `price`) VALUES
(1, 'E2', 'Nairobi Terminus,Kenya', 'Mombasa Terminus,Kenya', 1000),
(2, 'K3', 'Addis Ababa-Kality,Ethiopia', 'Atikilt Tera,Ethiopia', 400),
(3, 'L17', 'Tazara-Dar es Salaam,Tanzania', 'Arusha', 1335);

-- --------------------------------------------------------

--
-- Table structure for table `first_class_trains_table`
--

CREATE TABLE `first_class_trains_table` (
  `trainID` int(10) NOT NULL,
  `train` varchar(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_class_trains_table`
--

INSERT INTO `first_class_trains_table` (`trainID`, `train`, `from`, `to`, `price`) VALUES
(1, 'E2', 'Nairobi Terminus,Kenya', 'Mombasa Terminus,Kenya', 3000),
(2, 'K3', 'Addis Ababa-Kality,Ethiopia', 'Atikilt Tera,Ethiopia', 600),
(3, 'L17', 'Tazara-Dar es Salaam,Tanzania', 'Arusha', 2220);

-- --------------------------------------------------------

--
-- Table structure for table `hotels_table`
--

CREATE TABLE `hotels_table` (
  `hotelID` bigint(255) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `hotelAddress` varchar(100) NOT NULL,
  `hotelImage` varchar(500) NOT NULL,
  `destID` int(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels_table`
--

INSERT INTO `hotels_table` (`hotelID`, `hotelName`, `hotelAddress`, `hotelImage`, `destID`, `is_deleted`) VALUES
(1, 'The Voyager Beach Resort', ' Off Mt Kenya Road, Mombasa', 'https://lh3.googleusercontent.com/p/AF1QipOQLbd-viPcBO-RI5sUzd-DS7WABTy3vb02tuZE=w296-h202-n-k-rw-no-v1', 3, 0),
(2, 'PrideInn Paradise Beach Resort and Spa', ' Serena Rd, Mombasa', 'https://lh5.googleusercontent.com/proxy/IG80PUgUw4FU4m_TK6UYISlL_WDONACTKwVSpweaIqcIUeoiBFiovSD3TFu0Ju89ydtw23Dil_N-Qb8admYRiBPADxmoWkZh3J0DlEFjJ37bK_qBrbPjuEkFFZcJHHn32HsqY5ypJkeawMUZH4GDHvdJPNPI2g=w325-h216-k-no', 3, 0),
(3, 'The Reef Hotel Mombasa', 'Mount Kenya Road, Mombasa', 'https://lh5.googleusercontent.com/p/AF1QipO7ct1_yTj6NKeYjAa94tnI2sqTA7FDINHwj5gr=w325-h216-k-no', 3, 0),
(4, 'Sarova Whitesands Beach Resort and Spa', 'Off Malindi Road, Mombasa County, Mombasa', 'https://lh5.googleusercontent.com/p/AF1QipOIovRB8HzBh3DXRoLrBP_X3Hb7Vzu6K_Ibjw08=w325-h216-k-no', 3, 0),
(5, 'Serena Beach Resort and Spa', 'Shanzu, 00100 Shanzu, Kenya ', 'https://cf.bstatic.com/xdata/images/hotel/max200/280001666.jpg?k=79952bdca8ea7968ccb87f6d80754cd472facac75df9378d109c9f817a9f28a7&o=&hp=1', 3, 0),
(6, 'Leopard Hill', ' Mara Naboisho, 00100 Naboisho, Kenya', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/216259311.jpg?k=6eb5da85abde55d0064f440f3de41dbbd91431333b17b1321bcd93efa12a6aba&o=&hp=1', 1, 0),
(7, 'Olare Mara Kempinski Masai Mara', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/p/AF1QipO-fEU8dtvETp9uwzpHvjYjrrZ1VbBb04elDYEK=w325-h216-k-no', 1, 0),
(8, 'Neptune Mara Rianta Luxury Camp', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/proxy/_fKCh4nXsoBtQLrdsj7jShwhRGKYwt25SqrRRhW8i_LeNsp09u8cG_aTn1ZlT_ZZOffE9XLsjdyFoEwaJ0Dm48uwwOQpWr93OiOOgPXc-DwF6t8vE6dCGjA1Ng936oLTiO-GTwcawDz-SdqZxXac4PZMvMfiE3g=w325-h216-k-no', 1, 0),
(9, 'Fairmont Mara Safari Club', 'Fairmont Mara Safari Club, 58581, Mara Safari Club, Aitong, Kenya', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/ee/e5/f2/fairmont-mara-safari.jpg?w=900&h=-1&s=1', 1, 0),
(10, 'Royal Mara Safari Lodge', 'Mara North Conservancy\r\n ', 'https://lh6.googleusercontent.com/proxy/TeZ0snnqhsO0bJImnPNesSAUgFKX0ifrexURSvxOthBa6noymEwIggWrFwEOpYZ8ilUCfEV81CuyplElbS71Yxq-HzjJt4MJMmKbFbHu-Vioz8aDtxy0Qvnxywm_pcuETcONaZK3KxTF-Q1Re4dWCPd6iMe70g=w325-h175-k-no', 1, 0),
(11, 'Sankara Nairobi', '05 Woodvale Grove, Nairobi', 'https://lh6.googleusercontent.com/proxy/4k1x9bbX66I71RCv8UWeIoHBa7xwjjLBhcZutF3IQuzr2DwOLaM6CLROv3BZckuex0xmekJBWFjNRTEkT6jFRsU86m56hcWBGTUBj23KDql126blivDC9xX7i5DQXiPkpyVIDXPHzHV_J8I9UhaNQpMgAJ6jAto=w325-h193-k-no', 2, 0),
(12, 'Villa Rosa Kempinski Nairobi', 'Chiromo Rd, Nairobi', 'https://lh3.googleusercontent.com/p/AF1QipOdgUIQYnMqK7wNtS_48AeVFtJ-iQ6JGW9NDpUL=w296-h202-n-k-rw-no-v1', 2, 0),
(13, 'Radisson Blu Hotel and Residence', 'Elgon Road', 'https://lh5.googleusercontent.com/p/AF1QipM_owsce6AFMRgYyfQPsLKuA7EoL5M1jmrwPOs8=w325-h203-k-no', 2, 0),
(14, 'Tamarind Tree Hotel', 'Langata Link Rd, Nairobi', 'https://lh3.googleusercontent.com/p/AF1QipOzmaXQqM77BPFpR7CGgTrRYUsEVIxSR4zOHSw=w296-h202-n-k-rw-no-v1', 2, 0),
(15, 'Hemingways Nairobi', 'Karen Mbagathi Ridge', 'https://lh5.googleusercontent.com/p/AF1QipMz2lbBWgHv6Z6yZjWgPZas4ztBhbsmSCQUKbU6=w325-h216-k-no', 2, 0),
(16, 'Babylon Lodge', 'Marangu Mashariki, Kilimanjaro region. Tz', 'https://lh5.googleusercontent.com/proxy/N_eR-c7O_I3tRi44UHGjGS6HcYFlcJ8CJo_yRyQnqxyRb8ggghHW4qg8MbXwnd_NCrlcH6VlfApaO8DGbiSR23LoB4egdegRc8T5eEUeH3thenCgTzDROpXB5PCmG4fV6hO39wX4VZMtQffGQsuED4RiyTIT_w=w325-h221-k-no', 4, 0),
(17, 'Kilimanjaro Resort Loitokitok', 'Outward Bound Road, 00209 Oloitokitok , Kenya', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/170747358.jpg?k=2a7b683b8345657ed5e397bf9c2e6bcb633bc02a22483c28610934d3c7c324f8&o=&hp=1', 4, 0),
(18, 'Mount Kilimanjaro View Lodge', 'Shimbwe Juju Village, 15 Km from Moshi, Moshi, Tanzania', 'https://lh4.googleusercontent.com/proxy/XmwbPA635_RPVlxUt09tNbbh8BNejQDVszchQuUzL88fJ3-RddI_RcEnOVOIn7vwVzw3p5ovxjLpu7dADvfR_yPNuoZNW50HGoleVhG1lw9hl5VNda381Pw7orm5oL8wTOJhB6NbAqsLoZhvXxDdMxCLTm5_r8k=w325-h243-k-no', 4, 0),
(19, 'Satao Elerai', 'Amboseli National Park Headquarters', 'https://lh5.googleusercontent.com/p/AF1QipNBF85jdCRA837QDDYwZZ43VrFV2Aqfy4yHZJBh=w325-h162-k-no', 4, 0),
(20, 'Aishi Machame Hotel', 'Nyamuma Hills Serengeti National Park Serengeti TZ, 01184, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipNBF85jdCRA837QDDYwZZ43VrFV2Aqfy4yHZJBh=w325-h162-k-no', 4, 0),
(21, 'Serengeti Mawe Tented Camp', 'Marangu Mashariki, Kilimanjaro region. Tz', 'https://lh5.googleusercontent.com/proxy/-WwIWXrc2LTOotUsTYAudbGJtFopnT69T60i96RAOQ-aK6Qvh46WpYdvvo-_lbKploxEkJSsDDADx_mss5tjCw7UkpRgYQVwLxVRHoibYm5tkEga9gLa82ms2Oh2KhImQo_PX5EazHThdItRG7dTCCg2UPhZqA=w325-h216-k-no', 5, 0),
(22, 'Melia Serengeti Lodge', 'Nyamuma Hills, Serengeti National Park 01184 Tanzania', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/a1/07/45/the-infinity-pool.jpg?w=1000&h=-1&s=1', 5, 0),
(23, 'Lobo Wildlife Lodge', 'Nyamuma Hills, Serengeti National Park 01184 Tanzani', 'https://exp.cdn-hotels.com/hotels/22000000/21560000/21558100/21558058/b2daae77_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 5, 0),
(24, 'Mbuzi Mawe Serena Camp', 'Central Serengeti Corridor, Serengeti National Park, TZ, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipM-g97EEYMuYr0C3eh3oIVAdVHEcOCCnRof1RUU=w325-h216-k-no', 5, 0),
(25, 'Serengeti Simba Lodge', 'Ikoma Wima, Serengeti National Park, Serengeti National Park, Tanzania', 'https://exp.cdn-hotels.com/hotels/22000000/21540000/21538200/21538175/334fe374_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 5, 0),
(26, 'Drifters Zanzibar', 'PO Box 791 Zanzibar, Paje, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipOrd2GLvpzZjftj_sq4ONnbFSOy92HkGCgkpvO8=w325-h182-k-no', 6, 0),
(27, 'Moja Tuu Luxury Villas', 'North East Coast Area Kiwengwa Zanzibar, Tanzania', 'https://lh4.googleusercontent.com/proxy/gNYvkXH5z7BB9hl1ZLoi_KhatiQT5PkrhJWF0l5LZNOTT2VmAx8WkKdOXsM2Iqqmp-jyzpu79oXJmwQBZ-F1tDJThIEZYEWql_CVaQ7AACFwZ-ZvyXnC7kEo0EjgnoBivhWU85QZZ2JjTm5_eG8_zYkaK4dG7g=w325-h216-k-no', 6, 0),
(28, 'Zanzibar Beach Resort', 'Mazizini Kilimani, Zanzibar 2586, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipOqujgm6u0URBIcjw5B_4rhoWmViHPKCtBJwlZ-=w325-h216-k-no', 6, 0),
(29, 'Filao Beach Zanzibar', 'Chwaka Bay, East Coast Zanzibar City, Michamvi Beach Track, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipN2edX8wn0WIz3buxc7FKwNgxYjzE8xDNcuDHTA=w325-h216-k-no', 6, 0),
(30, 'Hotel Verde Zanzibar', 'Malawi Rd, Zanzibar, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipMEu2wvNl9se5j1s4g9smz_-BhuV1424D3Q-k7y=w325-h182-k-no', 6, 0),
(31, 'The Grand Palace Suites Hotel', 'Guinea Conakry St, Addis Ababa 5710, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNawHhPDAsdSQRPCLtWPQr0LgEiOokm3LKOZdKF=w325-h386-k-no', 7, 0),
(32, 'Radisson Blu Hotel', 'Kazanchis Business District Kirkos Subcity 17/18 Addis Ababa, 1000, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipOzeHHmpxbtLsNqCqzkCUzBZU63oPWlx_F2Ks4h=w325-h216-k-no', 7, 0),
(33, 'Capital Hotel and Spa', '22 Haile Gebre Silase St Addis Ababa ET 1878, Haile Gebre Silase St, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipN1KgdZGFyjiCa6ByMlx464IprIWduj7o4gur-v=w325-h216-k-no', 7, 0),
(34, 'Best Western Plus Pearl Addis', 'Cameroon St, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNxCk9rSTfPK-BOjNFlfbFUcA93kUVnUoSXtSJi=w325-h216-k-no', 7, 0),
(35, 'Golden Tulip Addis Ababa Hotel', 'Cameroon St, Addis Ababa 5623, Ethiopia', 'https://lh3.googleusercontent.com/proxy/wV-DBreM7-abDsSkwp3r6RSfxsxwwCiTXVxu8FRlK2ssZvg79qnVeXgoiqGwqXmLSV1QeZ2iRZIm2kpx6HxTYgL23XJ9inLQT3jBmx-dFokUZRDJ_RpwNtMYOXOBU2Ldkpq1PDSPdQUndqRWDtyBxUlSiKExR1c=w325-h275-k-no', 7, 0),
(36, 'Jacaranda Hotel', 'In front of old regional stadium, 1890 Bahir Dar, Ethiopia', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/236449766.jpg?k=ac11d0671166e55ab0eee492ac6f549f47c0d91fee4cb44737d01c8044f01b25&o=&hp=1', 8, 0),
(37, 'Delano Hotel and Spa', 'Kebele 15, Bahir Dar, 1338, Ethiopia', 'https://exp.cdn-hotels.com/hotels/18000000/17760000/17756200/17756147/4bfb79ac_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 8, 0),
(38, 'Rahnile Hotel', 'kebele 05, Behind EEPCO building, Bahir Dar, Ethiopia\r\n', 'https://lh5.googleusercontent.com/p/AF1QipPLNri9I_WpUdH16bf8OgXfLUo5hrtNu_2wioA=w325-h216-k-no', 8, 0),
(39, 'Kakemark Hotel', 'Felege Hiwot Rd, Bahir Dar, Ethiopia', 'https://lh5.googleusercontent.com/proxy/Z--bztX-h3bdmcIJp4THp2q7MDO8j9Hhqmal8kD988EbTf-QLen22WtZWqu8K0gKTc5A974wKEfIMUNwRXczeUPPH_1URHptIKVNlnCSH0Qpeq_04H_-vERvSHIvd4nmGQWNrWKNHswqmB7lFqMDOj6QcX3zLTU=w325-h216-k-no', 8, 0),
(40, 'Homland Hotel', ' Ethiopia , Bhair Dar, Bahir Dar, Ethiopia\r\n', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/222466968.jpg?k=b7f1a332fc571f914b3845d9f0d20de4a3beb81cc3acdcb1f09f36c66ec75c24&o=&hp=1', 8, 0),
(41, 'Babogaya Lake Viewpoint Lodge', 'Kebele 15 House 571, Debre Zeyit, 4000, Ethiopia', 'https://exp.cdn-hotels.com/hotels/6000000/5640000/5631800/5631762/46d81fb6_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 9, 0),
(42, 'Liesak Resport Hotel', 'Guda Lake, Bishoftu, Ethiopia\r\n', 'https://lh5.googleusercontent.com/proxy/V2DDTGbxHvaG5jpnmtBZfaULzIfdNwHfRxKnPsUzf1kR1g9Y8s6aXSAFeYnLvOXrrHTj39vw1gfiGjI1Yo-X3N05tfsMZxQKl9tBYMcm-t2NeHtuBJMIsadLLexFzJph6Xye_CXhBq_2jMtbicXWKx_B1D-OEA=w325-h222-k-no', 9, 0),
(43, 'Crown Hotel', 'Kaliti, Akaky Kaliti, Addis Ababa, Ethiopia', 'https://pix8.agoda.net/hotelImages/535/535622/535622_13101718590017054121.jpg?s=1024x768', 9, 0),
(44, 'Beacon Hotel', 'Saris Abo W18 House Number 1822 P.O.Box 1046, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNKtP-m8hqbJ07jdCdTP0Mmvbr0lwEQPe77TDhS=w325-h216-k-no', 9, 0),
(45, 'Asham Africa Hotel', 'Bishoftu,1000, Ethiopia', 'https://lh5.googleusercontent.com/proxy/qU4H2s84dYXNZr5bvhIfIEEtISMIQr0maDHzIGuRZzYcveW5rcBZTIeyvbCjc5sMIcAJUTgXXTnaqa87OvaPSEZqTp2G2bVjJs7lRe7GjD12Sv3hAfRIeWUO6AQfolLwEk1ft7dAleJtUn0Jh-R9N_l_GLwHvVg=w325-h215-k-no', 9, 0),
(46, 'Lake Kivu Serena Hotel', 'Gisenyi Rwanda, Gisenyi, 00100, Rwanda', 'https://exp.cdn-hotels.com/hotels/3000000/2390000/2384400/2384396/e9d21494_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 10, 0),
(47, 'Gorillas Lake Kivu Hotel', 'Beach Road, Gisenyi, Rwanda', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/42541114.jpg?k=11ec41d109d7729f3cba191ed82174e4f86e53e4b660d6b45c73a86ace5fe8d8&o=&hp=', 10, 0),
(48, 'Rushel Kivu Lodge', ' Kinunu, Rutsiro, Rwanda, Rutsiro, Rwanda\r\n', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/258147681.jpg?k=78159c32034da49f000b4aab768a4275e5fd174e301e1e66c678d5fb54f46379&o=&hp=1', 10, 0),
(49, 'Cleo Lake Kivu Hotel', 'Kibuye rwanda, Mwendo, Rwanda \r\n', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/322181833.jpg?k=c3953458ad8d98ccfe6d89b759e8e55ad1ee9d8a2f1d40c141eec98622f9700f&o=&hp=1', 10, 0),
(50, 'Kivu Paradise Hotel', 'Unnamed Road 012, Nyamyumba, Rwanda', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/127948420.jpg?k=8e2153b0f9ff31c587cb77c76eb8cbbd29b9998b5218562fdaacef9224fc0255&o=&hp=1', 10, 0),
(51, 'Hotel Des Mille Colines', ' 2 KN 6 Ave, Kigali, 00100 Kigali, Rwanda', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/49612289.jpg?k=e5a6494bd2167922dc5cac14031935a04baaefaa7518b7196e867950d7c9d4a7&o=&hp=1', 11, 0),
(52, 'Good News GuestHouse', 'KK 561, Kigali, Rwanda', 'https://exp.cdn-hotels.com/hotels/18000000/17690000/17681100/17681040/560bb853_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 11, 0),
(53, 'Yambi GuestHouse', 'Gikondo 722 Street, Opposite Rujugiro, Kigali, Rwanda', 'https://exp.cdn-hotels.com/hotels/16000000/15520000/15510800/15510791/09dd2d87_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 11, 0),
(54, 'Ubumwe Grand Hotel', 'KN 67 Street, Kigali, 1306, Kigali, Rwanda', 'https://exp.cdn-hotels.com/hotels/18000000/17610000/17609900/17609812/61759a80_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 11, 0),
(55, 'Hotel Le Garni', ' KN 6 Avenue, Kigali, Rwanda', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/103914336.jpg?k=5b1e9c4808a65c85e8ce2346a1beb38c958cc5f3e6954986acba17af86fbe0dc&o=&hp=1', 11, 0),
(56, 'Akagera Game Lodge', 'Akagera National Park Rwanda', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/ef/6b/1f/photo1jpg.jpg?w=1200&h=-1&s=1', 12, 0),
(57, 'Akagera Rhino Lodge', 'Nyagakonji Hill 6 Kms From The Akagera National Park\'s Main Entrance, Akagera National Park Rwanda', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/93/cb/bb/relax-and-watch-the-sunset.jpg?w=1200&h=-1&s=1', 12, 0),
(58, 'Akagera Transit Lodge', '1Km to Akagera National Park (Southern Entrance) Road Kabarondo-Rwinkwavu', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/300986481.jpg?k=450f025dcecdf7c72550edd16595db1a905c578e9724c4a11ff4e9074e0ad886&o=&hp=1', 12, 0),
(59, 'Ruzizi tented Lodge', 'Akagera National Park Rwanda', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f1/76/c5/luxury-tree-top-tent.jpg?w=1000&h=-1&s=1', 12, 0),
(60, 'Silent Hill Hotel', 'RN3 Kayonza, Mukarange, Eastern Province, Rwanda', 'https://exp.cdn-hotels.com/hotels/46000000/45980000/45971700/45971669/681d0be0_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 12, 0),
(61, 'Avani Victoria Falls Resort', 'Mosi-oa-Tunya Road, 20100 Livingstone, Zambia', 'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/73688943.jpg?k=ead925dcc1190f266c0dc028b45dbad6da69d896131f0f1541c0c4a1163117b0&o=&hp=1', 15, 0),
(62, 'Victoria Falls Waterfront', ' Sichango Drive, Livingstone, 60407, Zambia', 'https://exp.cdn-hotels.com/hotels/10000000/9070000/9068000/9067985/ef166b73_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 15, 0),
(63, 'Maramba River Lodge', 'Mosi-Oa-Tunya Road, Livingstone, Zambia', 'https://exp.cdn-hotels.com/hotels/13000000/12070000/12066900/12066834/157e4570_z.jpg?impolicy=fcrop&w=1000&h=666&q=mediu', 15, 0),
(64, 'Protea Hotel by Marriot', 'Plot 2110 Mosi-o-Tunya Road, Livingstone, Zambia', 'https://exp.cdn-hotels.com/hotels/2000000/1890000/1883000/1882963/a5d6f75b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 15, 0),
(65, 'Royal Sichango Village', 'Mosi-Oa-Tunya Road, Livingstone, Zambia', 'https://exp.cdn-hotels.com/hotels/2000000/1890000/1883000/1882963/a5d6f75b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 15, 0),
(66, 'The Royal Livingstone Victoria Falls Zambia Hotel', 'Mosi-oa-Tunya Road, Livingstone, 10101, Southern, Zambia', 'https://exp.cdn-hotels.com/hotels/1000000/800000/795900/795828/8b70f09f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 13, 0),
(67, 'aha The David Livingstone Safari Lodge and Spa', 'Riverside Drive, Livingstone, 1111, Zambia', 'https://exp.cdn-hotels.com/hotels/3000000/2320000/2315700/2315671/5745b06f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 13, 0),
(68, 'Fawlty Towers', '216 Mosi Oa Tunya Road, Livingstone, Zambia', 'https://exp.cdn-hotels.com/hotels/15000000/14630000/14628200/14628178/db0d7206_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 13, 0),
(69, 'JollyBoys Backpackers', '34 Kanyanta Road, Livingstone, Zambia', 'https://exp.cdn-hotels.com/hotels/15000000/14710000/14704600/14704528/cbd51d70_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 13, 0),
(70, 'Tabonina GuestHouse', ' 3 Maisoko Street, Nottie Broad, 10101 Livingstone, Zambia', 'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/65693145.jpg?k=d28eb135cedd69196eb1a17a20fba18c1457f718cbfe7cfbd83537c6a6047eb3&o=&hp=1', 13, 0),
(71, 'FlatDogs Camp', 'Plot 8755, South Luangwa National Park, Eastern Zambia, Zambia', 'https://exp.cdn-hotels.com/hotels/16000000/15410000/15403700/15403644/18782e00_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 14, 0),
(72, 'Mikango Safari Lodge', '10101 Secondary Day School, South Luangwa National Park, Zambia', 'https://exp.cdn-hotels.com/hotels/37000000/36500000/36494800/36494797/3297b5ec_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 14, 0),
(73, 'Track and Trail River Camp', ' Track and Trail River Camp, 50110 Kakumbi, Zambia', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/99378643.jpg?k=81df02a0c4b33adec7f7ca887c545ff91b83992e9cf2379957069f1351898f53&o=&hp=', 14, 0),
(74, 'Msandile River Lodge', '34 Kanyanta Road, Livingstone, Zambia', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/221408462.jpg?k=b7862ee8104e86f4d43bf36f0845439733759836177802f0f52e6acfa5e45380&o=&hp=1', 14, 0),
(75, 'Chikunto Safari Lodge', 'P.O. Box 139, Mfuwe airport, 15001 Kakumbi, Zambia', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/252577866.jpg?k=849681df7949183408db9aad56c9f34875b67a5a94ed8a0048a1cb1acffe6492&o=&hp=1', 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenities_table`
--

CREATE TABLE `hotel_amenities_table` (
  `amenityID` int(10) NOT NULL,
  `internetAvailability` varchar(45) DEFAULT NULL,
  `parkingAvailability` varchar(45) DEFAULT NULL,
  `pool` enum('yes','no') DEFAULT NULL,
  `spa` enum('yes','no') DEFAULT NULL,
  `meals` varchar(45) DEFAULT NULL,
  `airConditioning` enum('yes','no') DEFAULT NULL,
  `healthFacilities` varchar(45) DEFAULT NULL,
  `hotelID` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_amenities_table`
--

INSERT INTO `hotel_amenities_table` (`amenityID`, `internetAvailability`, `parkingAvailability`, `pool`, `spa`, `meals`, `airConditioning`, `healthFacilities`, `hotelID`) VALUES
(1, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast', 'yes', NULL, 1),
(2, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 2),
(3, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 3),
(4, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 4),
(5, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 5),
(6, 'No Wifi', 'No Parking', 'no', 'no', 'Free breakfast, Dining Area', 'no', 'Additional Bathroom', 6),
(7, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free breakfast, Restaurant, Bar', 'no', NULL, 7),
(8, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free breakfast, Restaurant, Bar', 'no', NULL, 8),
(9, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free breakfast, Restaurant, Bar', 'no', NULL, 9),
(10, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free breakfast, Restaurant, Bar', 'no', NULL, 10),
(11, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre, Sauna', 11),
(12, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 12),
(13, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 13),
(14, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', 'Fitness Centre', 14),
(15, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', 'Fitness Centre', 15),
(16, 'Free Wifi', NULL, 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 16),
(17, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 17),
(18, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 18),
(19, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 19),
(20, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 20),
(21, 'No Wifi', 'No Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 21),
(22, 'No Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 22),
(23, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 23),
(24, 'Free Wifi', 'No Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 24),
(25, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 25),
(26, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 26),
(27, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 27),
(28, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 28),
(29, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 29),
(30, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', NULL, 30),
(31, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 31),
(32, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 32),
(33, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 33),
(34, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', 'Fitness Centre', 34),
(35, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'yes', 'Fitness Centre', 35),
(36, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 36),
(37, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 37),
(38, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 38),
(39, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 39),
(40, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 40),
(41, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 41),
(42, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 42),
(43, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 43),
(44, 'Free Wifi', 'Free Parking', 'no', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 44),
(45, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 45),
(46, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 46),
(47, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 47),
(48, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 48),
(49, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 49),
(50, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 50),
(51, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 51),
(52, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 52),
(53, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Gym', 53),
(54, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Gym', 54),
(55, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 55),
(56, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Fitness Centre', 56),
(57, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', 'Gym', 57),
(58, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 58),
(59, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 59),
(60, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 60),
(61, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 61),
(62, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 62),
(63, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 63),
(64, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 64),
(65, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 65),
(66, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 66),
(67, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', 'Gym', 67),
(68, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 68),
(69, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 69),
(70, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 70),
(71, 'Free Wifi', 'Free Parking', 'yes', 'yes', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 71),
(72, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 72),
(73, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 73),
(74, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 74),
(75, 'Free Wifi', 'Free Parking', 'yes', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 75);

-- --------------------------------------------------------

--
-- Table structure for table `images_table`
--

CREATE TABLE `images_table` (
  `imageID` int(255) NOT NULL,
  `imageName` varchar(500) NOT NULL,
  `imageDescription` varchar(100) NOT NULL,
  `hotelID` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images_table`
--

INSERT INTO `images_table` (`imageID`, `imageName`, `imageDescription`, `hotelID`) VALUES
(1, 'https://exp.cdn-hotels.com/hotels/2000000/1750000/1747500/1747416/a4a9a699_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 1),
(2, 'https://exp.cdn-hotels.com/hotels/2000000/1750000/1747500/1747416/fcdbd5a9_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Superior Double Room', 1),
(3, 'https://exp.cdn-hotels.com/hotels/13000000/12770000/12762000/12761959/7ae0998b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 2),
(4, 'https://exp.cdn-hotels.com/hotels/13000000/12770000/12762000/12761959/597df483_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 2),
(5, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/245133252.jpg?k=9631e235bd2964568d9afea687f8e912200230c0511d8adcd8356439bcc5820c&o=&hp=1', 'Standard Double Room', 3),
(6, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/229303080.jpg?k=73c7df12e51bc174ffb32fd5a2ac5375e8ca20592861dda2e49d022b3a38acd8&o=&hp=1https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/229303080.jpg?k=73c7df12e51bc174ffb32fd5a2ac5375e8ca20592861dda2e49d022b3a38acd8&o=&hp=1', 'Sea View Room', 3),
(7, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/248955668.jpg?k=cf564a14c158b207d6147beb36965b59790a03546a85cc3ee2b702369e1bb129&o=&hp=1', 'Sea View Room', 4),
(8, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/224826721.jpg?k=b8273ec5ef25842da73f5ef68f77ddcaf65935c2deeab2fdc4d0457aabff3de7&o=&hp=1', 'Standard Double Room', 4),
(9, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/8750324.jpg?k=36d33767e703a8efbf1abfef513ba06947384f778575b234957767f11f43835f&o=&hp=1', 'Standard Souble Room', 5),
(10, 'https://exp.cdn-hotels.com/hotels/22000000/21900000/21892300/21892290/b44a909a_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Double Tent', 6),
(11, 'https://exp.cdn-hotels.com/hotels/22000000/21900000/21892300/21892290/437f0bdd_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Tent', 6),
(12, 'https://exp.cdn-hotels.com/hotels/6000000/5990000/5982300/5982297/edf15578_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 7),
(13, 'https://exp.cdn-hotels.com/hotels/6000000/5990000/5982300/5982297/8fd77575_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'HoneyMoon Suite', 7),
(14, 'https://exp.cdn-hotels.com/hotels/10000000/9520000/9516300/9516299/ad44ac3f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 8),
(15, 'https://exp.cdn-hotels.com/hotels/10000000/9520000/9516300/9516299/ace9bbc4_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'HoneyMoon Suite', 8),
(16, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/53009235.jpg?k=8212fcde3375daa6bb7d78d6c486575501ed3646daadbedd98c261a1825c797b&o=&hp=1', 'Double Tent', 9),
(17, 'https://exp.cdn-hotels.com/hotels/21000000/20810000/20801900/20801876/ceaa8f9b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 10),
(18, 'https://cache.marriott.com/marriottassets/marriott/NBOAK/nboak-guestroom-4319-hor-clsc.jpg?interpolation=progressive-bilinear&downsize=512px:342px', 'Superior Double Room', 11),
(19, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/259745539.jpg?k=73c8a8b086626baec65e1e2d6da9b31e2bf6d4a42114839e31ef76184ec84117&o=&hp=1', 'King Room', 12),
(20, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/43569291.jpg?k=f3d1d7246a75d694ebf74d542a4a8af3cb678787de528c29a1784950fbb1fe3f&o=&hp=1', 'Superior Double Room', 12),
(21, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/259754354.jpg?k=f21d4ed02f6a32bc2d7ec3444d7becc503d2b81a504431ca80d155bce354f51e&o=&hp=1', 'Executive Room', 12),
(22, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/326744807.jpg?k=1e3ad32acee135ea3dc1847a6eb7fd8b02920a222f6a39b56befadaadad8b9d0&o=&hp=1', 'Deluxe Double Room', 13),
(23, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/326744803.jpg?k=d42ae39f4eefb8e4bf17b8ac3cde675069d3703bc3e61b67d67c35083c62f393&o=&hp=1', 'Executive Room', 13),
(24, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/165244048.jpg?k=5fe7075abf07476de39916e4f8f5ba43b8318778f91a157faa7aa2dd62b82dbf&o=&hp=1', 'King Room', 14),
(25, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/138132938.jpg?k=864781468888f1a9f9b9187e2aa1d2de09f7a455fa07f9ed3129ad1a3cc93ce1&o=&hp=1', 'Family Room', 14),
(26, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/122113511.jpg?k=224805ca99f726b0668f3200d0718a8bc88a5a10cad4c078db5deee23b269a46&o=&hp=1', 'Executive Room', 14),
(27, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/158055096.jpg?k=710f2448882482fd82321d52b3fc92e3a056a39f68639da948a04dcc80087481&o=&hp=1', 'Deluxe Double Room', 15),
(28, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/158055098.jpg?k=e9aea1a69dcd0cffc1e85ed0a0a4cdd5b55c9748b6d996f61b5b92114dcfe4e9&o=&hp=1', 'Executive Room', 15),
(29, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/307260587.jpg?k=96408df010a25c2333072c9dcaa8380937dd98958efcaf04f8bed19ecfd9134d&o=&hp=1', 'Standard Double Room', 16),
(30, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/310650799.jpg?k=65bc4cd28e6c567bdacfdbe61e9394529b85ba74fff88dd2155c71163a41f973&o=&hp=1', 'Triple Room', 16),
(31, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/177030321.jpg?k=dcecb467a166cbf40ad1c0a6f9d5d83533256fac7d8edd7b033835b93e3239fd&o=&hp=1', 'Deluxe Double Room', 17),
(32, 'https://exp.cdn-hotels.com/hotels/9000000/8720000/8719400/8719366/ba1c9000_y.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 18),
(33, 'https://lh6.googleusercontent.com/proxy/agp2eHCDVR3zQzgbH9b6CcR5oSQDnycAB31btRMAAO4iZBkW_41YJO2sGUZRkxR0rI20QRG85ZIwEdJQmoh19ddaCt9_9SXEG2VdMYU26DB1dEnBrMP0rP9lP9b3UznbmAJUe3lH4xVQWIjkLdeckUq_nJjGPQ=w325-h200-k-no', 'Standard Double Room', 19),
(34, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/84565535.jpg?k=0d38548b74b68ef8a6cb53132c9cd6da8a2e02b87024c3676a5c600963a91d05&o=&hp=1', 'Standard Double Room', 20),
(35, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/110861584.jpg?k=d14a36e2d24902119ae2110bbfccf0514599162d3e94806573432731e3024b32&o=&hp=1', 'Standard Double Room', 21),
(36, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/119432140.jpg?k=a292a4232d6e8529bfeaedb0dafc813d2de8fe60c66a69c62d066d70bf839a6f&o=&hp=1', 'Triple Room', 21),
(37, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/110862498.jpg?k=6864361c261961f790205abca3ba63f198f655b1560309dd3f315768edd74f7d&o=&hp=1', 'Family Room', 21),
(38, 'https://exp.cdn-hotels.com/hotels/19000000/18420000/18410300/18410258/75dff4ea_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 22),
(39, 'https://exp.cdn-hotels.com/hotels/19000000/18420000/18410300/18410258/e7f1271b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 22),
(40, 'https://exp.cdn-hotels.com/hotels/19000000/18420000/18410300/18410258/ae1a04b9_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 22),
(41, 'https://exp.cdn-hotels.com/hotels/33000000/32090000/32083400/32083322/b324accf_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 23),
(42, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/98018441.jpg?k=efb325047561693ac8ebe235cd1f1672155c8ed67db1f16b971b46f215fa3476&o=&hp=1', 'Double Tent', 24),
(43, 'https://exp.cdn-hotels.com/hotels/4000000/3290000/3284800/3284796/41cc233c_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Tent', 24),
(44, '	Image: https://exp.cdn-hotels.com/hotels/22000000/21540000/21538200/21538175/c54f655f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 25),
(45, 'https://reservations.serenahotels.com/assets/hotel/17005/media/room/main-image/double_rooma_enhanced.jpg', 'Standard Double Room', 46),
(46, 'https://reservations.serenahotels.com/assets/hotel/17005/media/room/main-image/twin_rooma_enhanced.jpg', 'Family Room', 46),
(47, 'https://exp.cdn-hotels.com/hotels/11000000/10510000/10501100/10501030/0839ab8f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 47),
(48, 'https://exp.cdn-hotels.com/hotels/11000000/10510000/10501100/10501030/24001ea2_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 47),
(49, 'https://exp.cdn-hotels.com/hotels/49000000/48750000/48746900/48746822/41ae8929_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 48),
(50, 'https://exp.cdn-hotels.com/hotels/49000000/48750000/48746900/48746822/982477f2_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 48),
(51, 'https://exp.cdn-hotels.com/hotels/49000000/48750000/4874', 'Tent', 48),
(52, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/316948308.jpg?k=c9e9ec27732f557397b951fa839eea6cd7316c1a67971c7cd780d9b01e9556d7&o=&hp=1', 'Double Tent', 48),
(53, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/323702500.jpg?k=952f79525ca6aac27dab9280bde9c036b887230297a398ca0c1a17b4f88173bf&o=&hp=1', 'King Room', 49),
(54, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/128222627.jpg?k=7d8855feabc820224543ede69232bfa4866d1d439ceb861a6be6d8b84762d33f&o=&hp=1', 'Deluxe Double Room', 50),
(55, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/127947750.jpg?k=935a725eea75472eeea7054606997e0980c3841a16f6d2869f73bab310377638&o=&hp=1', 'King Room', 50),
(56, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/233987462.jpg?k=80e27893c45020fe21111d3f7ede7bd7d8d33a453c8bb1e559d570a92425196e&o=&hp=1', 'Single Room', 50),
(57, 'https://exp.cdn-hotels.com/hotels/5000000/4240000/4230400/4230326/bea591a8_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 51),
(58, 'https://exp.cdn-hotels.com/hotels/5000000/4240000/4230400/4230326/b147a7e9_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Single Room', 51),
(59, 'https://exp.cdn-hotels.com/hotels/5000000/4240000/4230400/4230326/c35c4639_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 51),
(60, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/283535874.jpg?k=4522d4ec34e9e7198dedc46ef8c2c249487eae96e97770c174fdef36e55ecda5&o=&hp=1', 'Standard Double Room', 52),
(61, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/90132740.jpg?k=e02b99d08f66ba08cd547193579893b3989d0f8feb42282e526f4035ae0b6977&o=&hp=1', 'Family Room', 53),
(62, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/89615694.jpg?k=7d48d7f3adf95ad47e086e3e6026ffc11b1b60f7906a5b2c36ce5c9496bde5bb&o=&hp=1', 'Triple Room', 53),
(63, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/143655135.jpg?k=bde300666a4f99e821014f2176deddbf936945eaa74e73e2ca47d559e528e382&o=&hp=1', 'Standard Double Room', 53),
(64, 'https://exp.cdn-hotels.com/hotels/18000000/17610000/17609900/17609812/2ad2567d_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 54),
(65, 'https://exp.cdn-hotels.com/hotels/18000000/17610000/17609900/17609812/972fc3d0_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 54),
(66, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/170431735.jpg?k=4bf7e2e9e97faffbf52f85f12fea09732ca130fe7bd6abddd8953a193d9148d3&o=&hp=1', 'Deluxe Double Room', 55),
(67, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/170432019.jpg?k=0a41e645063d50735ff34ab3e90b6978a6772eebad556ceb23cbe013ed39a093&o=&hp=1', 'Single Room', 55),
(68, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/81180425.jpg?k=9b9669eb19f9d629f745b491dc76e0139d7879a6b881366bada4f7ba2afe30ac&o=&hp=1', 'Standard Double Room', 61),
(69, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/105473462.jpg?k=26b93da2986e066810b66fb978138e95caf17467337032fcddd0352fc832b5e5&o=&hp=1', 'Deluxe Double Room', 61),
(70, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/105473763.jpg?k=b70059b08a2179098b90fac6593a9915e4c6ca8f0e563ccb66b214b9100699dc&o=&hp=1', 'Family Room', 61),
(71, 'https://exp.cdn-hotels.com/hotels/10000000/9070000/9068000/9067985/05752e84_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 62),
(72, 'https://exp.cdn-hotels.com/hotels/10000000/9070000/9068000/9067985/32a140eb_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Double Tent', 62),
(73, 'https://exp.cdn-hotels.com/hotels/10000000/9070000/9068000/9067985/1374f458_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 62),
(74, 'https://exp.cdn-hotels.com/hotels/10000000/9070000/9068000/9067985/47c77aed_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 62),
(75, 'https://exp.cdn-hotels.com/hotels/13000000/12070000/12066900/12066834/fd2d1daf_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 63),
(76, 'https://exp.cdn-hotels.com/hotels/13000000/12070000/12066900/12066834/f6e2ff01_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 63),
(77, 'https://exp.cdn-hotels.com/hotels/3000000/2320000/2319500/2319462/0d184c37_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 64),
(78, 'https://exp.cdn-hotels.com/hotels/11000000/10650000/10647700/10647626/d656a0c3_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 65),
(79, 'https://exp.cdn-hotels.com/hotels/11000000/10650000/10647700/10647626/e0754790_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 65),
(80, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/160609341.jpg?k=2b172cd0485b6bb7d4d998d9a88108dcb43d8433ef4e26509f21e113b837b0a3&o=&hp=1', 'Standard Double room', 26),
(81, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/265998927.jpg?k=dd9113bf430df2c88d913a80cfeccf532ea773177e395593cb1bacc534e4fe3a&o=&hp=1', 'Triple Room', 26),
(82, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/150021966.jpg?k=593fee7003717302c55299dec746f7fe11ccf0615ce00868faebb5b2582c82d7&o=&hp=1', 'Standard Double Room', 27),
(83, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/144118288.jpg?k=8970931211bbe4efcad53f08da71ecebb518495bc8ebb2ed85fc942bac3093f9&o=&hp=1', 'Deluxe Double room', 27),
(84, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/144580114.jpg?k=29e8a52d9ef3ab52e64bee7b04df4eeb7ba0f3d3229d4c8d28d5fca8e0a6a165&o=&hp=1', 'Family Room', 27),
(85, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/80560402.jpg?k=0b1bf84e12aef27a0e542706dbd83dd4eb2c38316a59a2916c642c5736ccd72b&o=&hp=1', 'Superior Double Room', 28),
(86, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/25560593.jpg?k=367d580583eac70bb1416727210ac8e96e6080670a4460b017c86542b9a7c97d&o=&hp=1', 'Deluxe Double Room', 28),
(87, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/25560636.jpg?k=bfc1c9b45671ba20d45a58eb2d5f6778cb5c55b1bd5d3d205d672c665dedce64&o=&hp=1', 'Sea View Room', 28),
(88, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/189269782.jpg?k=07c18f7062fca3681d58da3a2ac4972cd100293659ab7a4acc4dc9b91d61f8d2&o=&hp=1', 'Deluxe Double Room', 29),
(89, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/248306554.jpg?k=772b6878e4d2091a8f4c94df6b7cbd8e9393e8aa6096cf71eec9e33dfa566a30&o=&hp=1', 'Family Room', 29),
(90, 'https://t-cf.bstatic.com/xdata/images/hotel/max1280x900/161623613.jpg?k=7e941d82abd187c2af3403d6d1bfefe54e55738f68272bdde346e1088b11b37e&o=&hp=1', 'King Room', 30),
(91, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/308546311.jpg?k=fff2f1bb8b390cacb649508deeff660370be5dabe7d22cef1ae42100ae2af705&o=&hp=1', 'Standard Double Room', 31),
(92, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/308546187.jpg?k=63c6a9c3382e3894ed8e76fca4a2508f8a9f46ff7116ef9cb07afbc11710f1a1&o=&hp=1', 'Executive Room', 31),
(93, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/308541205.jpg?k=7412b1dba3eb5367b605950194df9d8de38e8505d1ddfd717d56f70bd9286ec6&o=&hp=1', 'Presidential Suite', 31),
(94, 'https://exp.cdn-hotels.com/hotels/1000000/800000/795900/795828/32683426_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'King Room', 66),
(95, 'https://exp.cdn-hotels.com/hotels/1000000/800000/795900/795828/1c51d52c_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 66),
(96, 'https://exp.cdn-hotels.com/hotels/3000000/2320000/2315700/2315671/92b18e9f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'King Room', 67),
(97, 'https://exp.cdn-hotels.com/hotels/15000000/14630000/14628200/14628178/9b524761_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 68),
(98, 'https://exp.cdn-hotels.com/hotels/15000000/14630000/14628200/14628178/9ab9fe1e_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 68),
(99, 'https://exp.cdn-hotels.com/hotels/15000000/14630000/14628200/14628178/8f460e26_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 68),
(100, 'https://exp.cdn-hotels.com/hotels/15000000/14710000/14704600/14704528/f68674a8_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 69),
(101, 'https://exp.cdn-hotels.com/hotels/15000000/14710000/14704600/14704528/cf1a24d9_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 69),
(102, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/71970517.jpg?k=26fc2fbf62fa381414aa84654d39771ad5dda749360a93d787d85995ae05e51c&o=&hp=1', 'Standard Double Room', 70),
(103, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/71968740.jpg?k=4c7063a94e662c3011563e4f6c88228e8be960cd64762ec15600a300662d585e&o=&hp=1', 'Deluxe Double Room', 70),
(104, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/71972271.jpg?k=5d6ad022501ac8d2382b6215ee96246cc11ac6b2be228262bb55b0e8fe223119&o=&hp=1', 'Triple Room', 70),
(105, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/71971127.jpg?k=f81cb2a35c83618987ec66b79076bd20c42808876ea5e2640890aa60aef9afd6&o=&hp=1', 'Family Room', 70),
(106, 'https://exp.cdn-hotels.com/hotels/16000000/15410000/15403700/15403644/16bb24b8_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Double Tent', 71),
(107, 'https://exp.cdn-hotels.com/hotels/16000000/15410000/15403700/15403644/0c4b5b22_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 71),
(108, 'https://exp.cdn-hotels.com/hotels/16000000/15410000/15403700/15403644/6a6458b2_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 71),
(109, 'https://exp.cdn-hotels.com/hotels/37000000/36500000/36494800/36494797/e70fcb95_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 72),
(110, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/248790924.jpg?k=b45bd38eeb01e53ef4cf26c0390b43efb8f2eef08e4045e625be26342bc9136d&o=&hp=1', 'Standard Double Room', 73),
(111, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/99352891.jpg?k=ecb58d91b7d7923cd6613e4775e302b7bc1875e425184f3cc2bf878fc764a598&o=&hp=1', 'Single Room', 73),
(112, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/243711496.jpg?k=e4ee8990d65dce33ab62bc9c97b8c1eb8782d598c29df0196e3744bdf31bef6b&o=&hp=1', 'Standard Double Room', 74),
(113, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/229278646.jpg?k=488f6fd1db42289d5ec50ca94a3ad8be7ca597136927143d2a514e449655d8c0&o=&hp=1', 'Double Tent', 74),
(114, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/229277141.jpg?k=e249563df0f95cb9c903e83b2372fdb4a4591245a0ed76a1ac2c01bf0b480c84&o=&hp=1', 'Family Room', 74),
(115, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/252576032.jpg?k=424ed6668c2df75d2e0734ba98434ea1520e4689235da10bee554a2d92e27a5f&o=&hp=1', 'Family Room', 75),
(116, 'https://exp.cdn-hotels.com/hotels/5000000/4860000/4855900/4855804/ae355f4c_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 32),
(117, 'https://exp.cdn-hotels.com/hotels/5000000/4860000/4855900/4855804/b66428a4_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 32),
(118, 'https://exp.cdn-hotels.com/hotels/7000000/6600000/6600000/6599955/5711c7e8_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'King Room', 33),
(119, 'https://exp.cdn-hotels.com/hotels/7000000/6600000/6600000/6599955/48be22fe_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Studio Suite', 33),
(120, 'https://exp.cdn-hotels.com/hotels/48000000/47010000/47007200/47007122/75fb1957_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'King Room', 34),
(121, 'https://exp.cdn-hotels.com/hotels/48000000/47010000/47007200/47007122/e525a854_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Queen Suite', 34),
(122, 'https://exp.cdn-hotels.com/hotels/13000000/12240000/12236200/12236191/3eea27cf_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 35),
(123, 'https://exp.cdn-hotels.com/hotels/13000000/12240000/12236200/12236191/ab1a724b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 35),
(124, 'https://exp.cdn-hotels.com/hotels/2000000/1190000/1189700/1189651/b7b18e6e_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 36),
(125, 'https://exp.cdn-hotels.com/hotels/2000000/1190000/1189700/1189651/c9c138c1_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 36),
(126, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/129451541.jpg?k=211e8d8f3a69850321dbb5b6676a08529053f6afb9a092473d4b2c4ff174b676&o=&hp=1', 'Single Room', 36),
(127, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85665594.jpg?k=594e650ffbeb7808c3093b214fbd8119b9e8eaabeeffc28ffca3cfceafc9c384&o=&hp=1', 'Standard Double Room', 37),
(128, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/160619939.jpg?k=3bf65283bb19c410f8dfdaff91ce24da3c93de3f400dd4fcdbc176c0f4dbb647&o=&hp=1', 'Deluxe Double Room', 37),
(129, 'https://exp.cdn-hotels.com/hotels/27000000/26770000/26769600/26769583/5b3d2a9d_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 38),
(130, 'https://exp.cdn-hotels.com/hotels/27000000/26770000/26769600/26769583/4d5d8d1b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 38),
(131, 'https://exp.cdn-hotels.com/hotels/18000000/17370000/17364000/17364000/2c55336a_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 39),
(132, 'https://exp.cdn-hotels.com/hotels/18000000/17370000/17364000/17364000/2c987729_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Queen Room', 39),
(133, 'https://exp.cdn-hotels.com/hotels/18000000/17370000/17364000/17364000/59228020_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Single Room', 39),
(134, 'https://exp.cdn-hotels.com/hotels/48000000/47420000/47410400/47410335/022107b5_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 40),
(135, 'https://exp.cdn-hotels.com/hotels/48000000/47420000/47410400/47410335/3bde76bb_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'King Room', 40),
(136, 'https://exp.cdn-hotels.com/hotels/48000000/47420000/47410400/47410335/e6a5ef11_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 40),
(137, 'https://exp.cdn-hotels.com/hotels/48000000/47420000/47410400/47410335/bf5954c0_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Single Room', 40),
(138, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/37749241.jpg?k=ea299de71f1b34d41e267e994c579a9648365801cf7f2e99ff5e8a86e2c49647&o=&hp=1', 'Standard Double Room', 41),
(139, 'https://exp.cdn-hotels.com/hotels/23000000/22140000/22137500/22137447/b3eb0156_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 42),
(140, 'https://exp.cdn-hotels.com/hotels/23000000/22140000/22137500/22137447/81c7a202_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 42),
(141, 'https://exp.cdn-hotels.com/hotels/23000000/22140000/22137500/22137447/89d46e5e_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 42),
(142, 'https://exp.cdn-hotels.com/hotels/23000000/22140000/22137500/22137447/e3bd5434_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Triple Room', 42),
(143, 'https://exp.cdn-hotels.com/hotels/8000000/7460000/7452000/7451997/81d3d270_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 43),
(144, 'https://exp.cdn-hotels.com/hotels/8000000/7460000/7452000/7451997/2d62b0ea_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Executive Room', 43),
(145, 'https://exp.cdn-hotels.com/hotels/8000000/7460000/7452000/7451997/3f8ac745_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Family Room', 43),
(146, 'https://exp.cdn-hotels.com/hotels/37000000/36400000/36394600/36394587/45897878_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Deluxe Double Room', 44),
(147, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/57825208.jpg?k=aa1e7e4758b4e59229084862a8e3a57ac68c0ccbf2a5adb3492f9ef424209830&o=&hp=1', 'Standard Double Room', 45),
(148, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/57825195.jpg?k=b46722bd548f4a8cd31c7bb42fd93f43a56ba790faa125278d333e8decfc679b&o=&hp=1', 'Executive Room', 45),
(149, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/57825213.jpg?k=7e0b289e1944e59de9a4b95d54f6f312f4bccde412ed548cd0572b56235b59d5&o=&hp=1', 'Family Room', 45),
(150, 'https://www.ahstatic.com/photos/b405_rokgcbc_00_p_346x260.jpg', 'Standard Double Room', 56),
(151, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/4e/2a/47/caption.jpg?w=700&h=-1&s=', 'Family Room', 57),
(152, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/ac/4d/62/ground-floor-room.jpg?w=1200&h=-1&s=1', 'Triple Room', 57),
(153, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/a2/cc/08/akagera-game-lodge.jpg?w=1200&h=-1&s=1', 'Standard Double Room', 57),
(154, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/301121531.jpg?k=cef9018c194aa7d7d1b4020c3c8b708a15ed3b919d4e9927adf909749dc78af8&o=&hp=1', 'Standard Double Room', 58),
(155, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/301120907.jpg?k=84f055726aaacf92465ca19d50aefdf2a2b1cc78c39051222f077ad2dd500c1e&o=&hp=1', 'Family Room', 58),
(156, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/246037681.jpg?k=c5206ef9624e21e5b3881a4d5bb249e1a81d82522d82b923155c4b21ede249f5&o=&hp=1', 'Double Tent', 59),
(157, 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/246037693.jpg?k=13c296c023b4c6c2128924b00b440280ae5e63030efcc3ef9accb1cbb5fd8e95&o=&hp=1', 'Tent', 59),
(158, 'https://exp.cdn-hotels.com/hotels/46000000/45980000/45971700/45971669/71eb2ab0_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Single Room', 60),
(159, 'https://exp.cdn-hotels.com/hotels/46000000/45980000/45971700/45971669/125fc936_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 60),
(160, 'https://exp.cdn-hotels.com/hotels/46000000/45980000/45971700/45971669/w697h563x3y69-f60711b1_y.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Tent', 60);

-- --------------------------------------------------------

--
-- Table structure for table `package_table`
--

CREATE TABLE `package_table` (
  `packageID` int(255) NOT NULL,
  `packageDescription` varchar(100) NOT NULL,
  `packageImage` int(255) NOT NULL,
  `hotelID` bigint(255) NOT NULL,
  `roomID` int(10) NOT NULL,
  `noOfGuests` int(100) NOT NULL,
  `pricePerGuest` double NOT NULL,
  `noOfDays` int(100) NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `status` enum('Booked',' Available') NOT NULL,
  `categoryID` int(10) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_table`
--

INSERT INTO `package_table` (`packageID`, `packageDescription`, `packageImage`, `hotelID`, `roomID`, `noOfGuests`, `pricePerGuest`, `noOfDays`, `checkInDate`, `checkOutDate`, `status`, `categoryID`, `is_deleted`) VALUES
(3, 'Suitable for a friends getaway at the beautiful coast of Kenya', 1, 1, 2, 2, 8849, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(4, 'A nice retreat in the wild for friends or a couple', 10, 6, 6, 2, 57186.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(6, 'Ideal for a weekend away in the mountain', 29, 16, 2, 2, 3758.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(7, 'Enjoy the coastal town of Zanzibar with your friends', 80, 26, 2, 2, 3063, 2, '2021-11-27', '2021-11-29', ' Available', 2, 0),
(8, 'Enjoy a beautiful weekend in Ethiopia', 91, 31, 2, 2, 3787, 2, '2021-11-27', '2021-11-29', ' Available', 2, 0),
(9, 'Suitable for a friends getaway at the beautiful coast of Kenya', 2, 1, 4, 3, 10049, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(10, 'Enjoy a lovely weekend at the coast with your friends or spouse', 3, 2, 2, 2, 8454, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(11, 'Enjoy a lovely weekend at the coast with your family', 4, 2, 9, 4, 10900.5, 2, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(12, 'Enjoy a relaxed stay at the coast of Kenya with your friends or spouse', 5, 3, 2, 2, 5000, 3, '2021-11-20', '2021-11-23', ' Available', 2, 0),
(13, 'Enjoy a relaxed stay at the coast of Kenya with your friends or spouse with a beautiful sea view', 6, 3, 5, 2, 8263, 2, '2021-11-20', '2021-11-23', ' Available', 2, 0),
(14, 'A nice getaway at the coast of Kenya for friends or spouses', 8, 4, 2, 2, 8263, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(15, 'A nice getaway at the coast of Kenya for friends or spouses with a nice view of the ocean', 7, 4, 5, 2, 11124.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(16, 'Enjoy a nice weekend stay with friends or alone at the coast', 9, 5, 2, 2, 15190.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(17, 'You fancy a lone trip in the wild?This is for you.', 11, 6, 7, 1, 70469, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(18, 'Enjoy a trip in the wild for a weekend', 12, 7, 3, 2, 55550, 2, '2021-11-20', '2021-11-22', 'Booked', 2, 0),
(19, 'Suitable for lovers on their honeymoon. The relaxed atmosphere in the wild makes it more enjoyable.', 13, 7, 10, 2, 59994, 7, '2021-11-20', '2021-11-27', ' Available', 3, 0),
(20, 'Have fun in the wild with friends or a patner', 14, 8, 3, 2, 50000, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(21, 'AN enjoyable honeymoon stay for newlyweds in the wild', 15, 8, 10, 2, 54900, 5, '2021-11-20', '2021-11-25', ' Available', 3, 0),
(22, 'Enjoy a week away with friends in the wild', 16, 9, 6, 2, 27500, 5, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(23, 'Enjoy a week away with friends in the wild', 17, 10, 2, 2, 26400, 5, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(24, 'An exquisite stay in the city with friends or alone', 18, 11, 4, 3, 9437.33, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(25, 'An exquisite stay in the city with friends or alone', 24, 12, 12, 2, 14783, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(26, 'An exquisite stay in the city with friends or alone', 20, 12, 4, 3, 9180, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(27, 'An exquisite stay in the city for business or leisure', 21, 12, 8, 2, 18339, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(28, 'Enjoy a beautiful stay in the city with friends', 22, 13, 3, 2, 12984, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(29, 'Enjoy a beautiful stay in the city with friends or for business', 23, 13, 8, 2, 22343.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(30, 'Enjoy a beautiful stay in the city with friends', 24, 14, 12, 2, 10281.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(31, 'Enjoy a beautiful stay in the city with family or friends', 25, 14, 9, 4, 28899, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(32, 'Enjoy a beautiful stay in the city with friends or for business', 26, 14, 8, 2, 20563, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(33, 'Enjoy a beautiful stay in the city with friends', 27, 15, 3, 2, 24499, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(34, 'Enjoy a beautiful stay in the city with friends or for business', 28, 15, 8, 2, 29232, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(36, 'Enjoy a nice weekend in Tanzania with upto 3 friends or family', 30, 16, 13, 3, 2706, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(37, 'Enjoy a nice weekend in Tanzania near Mt Kilimanjaro with friends', 31, 17, 3, 2, 3172, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(38, 'Enjoy a nice weekend in Tanzania near Mt Kilimanjaro with friends', 32, 18, 2, 2, 4950, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(39, 'Enjoy a nice weekend in Tanzania near Mt Kilimanjaro with friends', 33, 19, 2, 2, 40837, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(40, 'Enjoy a nice weekend in Tanzania near Mt Kilimanjaro with friends', 34, 20, 2, 2, 7517, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(41, 'Enjoy a nice weekend in the beautiful Serengeti with friends or alone', 35, 21, 2, 2, 18885, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(42, 'Enjoy a nice weekend in the beautiful Serengeti with friends', 36, 21, 13, 3, 14967, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(43, 'Enjoy a nice stay in the beautiful Serengeti with your family or friends', 37, 21, 9, 4, 20222, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(44, 'Enjoy a nice stay in the beautiful Serengeti with your family or friends', 38, 22, 2, 2, 53900, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(45, 'Enjoy a nice stay in this deluxe suite in the beautiful Serengeti with your friends', 39, 22, 3, 2, 63250, 2, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(46, 'Enjoy a nice stay in the beautiful Serengeti with your family or friends', 40, 22, 13, 3, 37950, 2, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(47, 'Suitable for friends looking for a quiet stay in the wild', 41, 23, 2, 2, 13365, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(48, 'Enjoy a tranquil weekend in the wild with your friends or patner', 42, 24, 6, 2, 30730, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(49, 'Suitable for a lone traveller looking for a quiet retreat in the wild', 43, 24, 7, 1, 33004, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(50, 'Suitable for friends looking for a quiet stay in the wild', 44, 25, 2, 2, 38005, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(51, 'Enjoy a nice weekend in this beautiful island with friends or alone', 80, 26, 2, 2, 3063, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(52, 'Enjoy a nice weekend in this beautiful islands with friends', 81, 26, 13, 3, 2599, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(53, 'Enjoy a nice weekend in this beautiful islands with friends', 82, 27, 2, 2, 7072.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(54, 'Enjoy a nice weekend in this beautiful islands in a delxe suite with friends', 83, 27, 3, 2, 13922.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(55, 'Enjoy a nice stay in this beautiful islands with your family', 84, 27, 9, 4, 8353, 5, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(56, 'Suitable for a tranquil stay at the beach with 2 to 3 friends', 85, 28, 4, 3, 2998, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(57, 'Suitable for a tranquil stay at the beach with friends or a patner', 86, 28, 3, 2, 3722, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(58, 'Suitable for a tranquil stay at the beach with friends in the sea view room', 87, 28, 5, 2, 5396.5, 2, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(59, 'Enjoy a nice weekend away in Zanzibar with friends or alone', 88, 29, 3, 2, 7772, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(60, 'Enjoy a nice weekend away in Zanzibar with friends or family', 89, 29, 9, 4, 4085.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(61, 'Enjoy a nice weekend away in Zanzibar with friends or alone', 90, 30, 12, 2, 21802.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(63, 'Enjoy a nice weekend in Ethiopia with friends', 92, 31, 8, 2, 6627, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(64, 'Enjoy a nice stay in Ethiopia with friends or family', 93, 31, 14, 4, 4761.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(65, 'Suitable for a friends getaway', 116, 32, 2, 2, 12047, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(66, 'Suitable for a friends or business getaway', 117, 32, 8, 2, 15851, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(67, 'Enjoy a relaxed weekend in Ethiopia with friends or family', 118, 33, 12, 2, 8355, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(68, 'Suitable for a solo retreat in Ethiopia', 119, 33, 11, 1, 27850, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(69, 'Enjoy a nice stay in Ethiopia with friends or family in the kings suite', 120, 34, 12, 2, 11530, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(70, 'Enjoy a nice stay in Ethiopia with friends or family in the queen suite', 121, 34, 15, 2, 45511.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(71, 'Suitable for a friends getaway', 122, 35, 3, 2, 7018, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(72, 'Suitable for a friends or business getaway', 123, 35, 8, 2, 8522, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(73, 'Enjoy  a nice weekend with friends or family', 124, 36, 2, 2, 2931.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(74, '', 125, 36, 3, 2, 3157, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(75, 'Suitable for a solo retreat', 126, 36, 1, 1, 4059, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(76, 'Enjoy  a nice weekend with friends', 127, 37, 2, 2, 2475, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(77, 'Enjoy  a nice weekend with friends or family in the deluxe room', 128, 37, 3, 2, 3300, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(78, 'Enjoy  a nice weekend with friends or family', 129, 38, 2, 2, 1933, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(79, 'Enjoy  a nice weekend with friends or family in the deluxe room', 130, 38, 3, 2, 1401.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(80, 'Enjoy  a nice weekend with friends or family', 131, 39, 2, 2, 1336, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(81, 'Enjoy  a nice weekend with friends or family in the queen suite', 132, 39, 15, 2, 1392, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(82, 'Suitable for a solo retreat', 133, 39, 1, 1, 2116, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(83, 'Enjoy  a nice weekend with friends or family', 134, 40, 2, 2, 2405, 2, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(84, 'Enjoy  a nice weekend with friends or family in the king suite', 135, 40, 12, 2, 2154.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(85, 'Suitable for a family retreat', 136, 40, 9, 4, 2087.75, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(86, 'Suitable for a solo retreat', 137, 40, 1, 1, 3207, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(87, 'Enjoy a nice stay in Bishoftu with friends', 138, 41, 2, 2, 2860, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(88, 'Enjoy a nice stay in Bishoftu with friends', 139, 42, 2, 2, 8912, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(89, 'Enjoy a nice weekend in Bishoftu with friends or family', 140, 42, 3, 2, 13925, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(90, 'Enjoy a nice stay in Bishoftu with family', 141, 42, 9, 4, 5291.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(91, 'Enjoy a nice stay in Bishoftu with up to 3friends', 142, 42, 13, 3, 8912.33, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(92, 'Enjoy a nice weeekend in Bishoftu with friends', 143, 43, 2, 2, 2860, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(93, 'Enjoy a nice stay in Bishoftu with friends or for business', 144, 43, 8, 2, 3740, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(94, 'Enjoy a nice stay in Bishoftu with family', 145, 43, 9, 4, 2007.5, 5, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(95, 'Enjoy a nice weekend in Bishoftu with friends in this deluxe suite', 146, 44, 3, 2, 3905, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(96, 'Enjoy a nice stay in Bishoftu with friends', 147, 45, 2, 2, 4739, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(97, 'Enjoy a nice weekend in Bishoftu with friends or for business', 148, 45, 8, 2, 5820.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(98, 'Enjoy a nice stay in Bishoftu with family', 149, 45, 9, 4, 2313, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(111, 'Enjoy a nice weekend in Rwanda\'s beautiful hotel with friends', 45, 46, 2, 2, 22275, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(112, 'Enjoy a nice stay in Rwanda\'s beautiful hotel with friends or family', 46, 46, 9, 4, 6600, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(113, 'Enjoy a nice weekend in our deluxe room with friends', 47, 47, 3, 2, 6681, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(114, 'Enjoy a nice weekend in Rwanda\'s beautiful hotel with friends', 48, 47, 8, 2, 13918.5, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(115, 'Enjoy a nice weekend in the deluxe room with friends', 49, 48, 3, 2, 7270, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(116, 'Enjoy a nice weekend in Rwanda\'s beautiful hotel with friends', 50, 48, 8, 2, 16777.5, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(117, 'Enjoy a nice weekend in the tent for a solo retreat', 51, 48, 7, 1, 11185, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(118, 'Enjoy a nice tent experience with friends', 52, 48, 6, 2, 7270, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(119, 'Enjoy a nice weekend in Rwanda\'s beautiful hotel with friends', 53, 49, 12, 2, 11176.5, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(120, 'Enjoy a nice weekend in Rwandain our deluxe room with friends', 54, 50, 3, 2, 6711, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(121, 'Enjoy a nice weekend in Rwanda with friends', 55, 50, 12, 2, 11185, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(122, 'Enjoy a nice weekend in Rwanda\'s beautiful hotel for a solo retreat', 56, 50, 1, 1, 10961, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(123, 'Enjoy a beautiful stay in Kigali with friends in a deluxe suite', 57, 51, 3, 2, 19083.5, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(124, 'Enjoy a beautiful stay in Kigali for a solo retreat', 58, 51, 1, 1, 17298, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(125, 'Enjoy a beautiful stay in Kigali with friends', 59, 51, 2, 2, 10044, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(126, 'Enjoy a beautiful stay in Kigali with friends', 60, 52, 2, 2, 7700, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(127, 'Enjoy a beautiful stay in Kigali with friends or family', 61, 53, 9, 4, 2282.5, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(128, 'Enjoy a beautiful stay in Kigali with upto 3 friends', 62, 53, 13, 3, 3116.67, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(129, 'Enjoy a beautiful stay in Kigali with friends', 63, 53, 2, 2, 3025, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(130, 'Enjoy a beautiful stay in Kigali with friends in a deluxe suite', 64, 54, 3, 2, 9405, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(131, 'Enjoy a beautiful stay in Kigali with friends', 65, 54, 2, 2, 9040, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(132, 'Enjoy a beautiful stay in Kigali with friends in a deluxe suite', 66, 55, 3, 2, 5342, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(133, 'Enjoy a beautiful stay in Kigali for a solo retreat', 67, 55, 1, 1, 8878, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(134, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends', 68, 61, 2, 2, 14692, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(135, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends in a deluxe suite', 69, 61, 3, 2, 18577.5, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(136, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends or family', 70, 61, 9, 4, 8924.5, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(137, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends', 71, 62, 2, 2, 11000, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(138, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends in a tent', 72, 62, 6, 2, 3300, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(139, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends in an executive suite', 73, 62, 8, 2, 14300, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(140, 'Enjoy a tranquil stay near Victoria Falls in Zambia with family', 74, 62, 9, 4, 7012.5, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(141, 'Enjoy a tranquil stay near Victoria Falls in Zambia with up to 3 friends', 75, 63, 13, 3, 6490, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(142, 'Enjoy a tranquil stay near Victoria Falls in Zambia with family', 76, 63, 9, 4, 5692.5, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(143, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends in a deluxe suite', 77, 64, 3, 2, 7098, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(144, 'Enjoy a tranquil stay near Victoria Falls in Zambia with friends in a deluxe suite', 78, 65, 3, 2, 6600, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(145, 'Enjoy a tranquil stay near Victoria Falls in Zambia with family', 79, 65, 9, 4, 8965, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(146, 'Enjoy a nice weekend in Livingstone with friends in the king suite', 94, 66, 12, 2, 91630, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(147, 'Enjoy a nice weekend in Livingstone with friends', 95, 66, 3, 3, 44330, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(148, 'Enjoy a nice weekend in Livingstone with friends', 96, 67, 12, 2, 28325, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(149, 'Enjoy a nice weekend in Livingstone with up to 3 friends', 97, 68, 13, 3, 880, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(150, 'Enjoy a nice weekend in Livingstone with friends', 98, 68, 2, 2, 2475, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(151, 'Enjoy a nice weekend in Livingstone with friends in the deluxe suite', 99, 68, 3, 2, 3850, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(152, 'Enjoy a nice weekend in Livingstone with friends', 100, 69, 2, 2, 3740, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(153, 'Enjoy a nice weekend in Livingstone with up to 3 friends', 101, 69, 13, 3, 2933.33, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(154, 'Enjoy a nice weekend in Livingstone with friends', 102, 70, 2, 2, 3069, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(155, 'Enjoy a nice weekend in Livingstone with friends in the deluxe suite', 103, 70, 3, 2, 3627, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(156, 'Enjoy a nice weekend in Livingstone with up to 3 friends', 104, 70, 13, 3, 2455.33, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(157, 'Enjoy a nice weekend in Livingstone with family', 105, 70, 9, 4, 3069, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(158, 'Enjoy a tent experience near South Luanga National Park with friends', 106, 71, 6, 2, 5170, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(159, 'Enjoy a nice weekend near South Luanga National Park with up to 3 friends', 107, 71, 13, 3, 5170, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(160, 'Enjoy a nice weekend near South Luanga National Park with family', 108, 71, 9, 4, 19717.5, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(161, 'Enjoy a nice weekend near South Luanga National Park with family', 109, 72, 9, 4, 6875, 5, '2021-12-17', '2021-12-19', ' Available', 1, 0),
(162, 'Enjoy a nice weekend near South Luanga National Park with friends', 110, 73, 2, 2, 11210, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(163, 'Enjoy a nice weekend near South Luanga National Park for a solo retreat', 111, 73, 1, 1, 14012, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(164, 'Enjoy a nice weekend near South Luanga National Park with friends', 112, 74, 2, 2, 20178, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(165, 'Enjoy a tent experence near South Luanga National Park with friends', 113, 74, 6, 2, 16815, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(166, 'Enjoy a nice weekend near South Luanga National Park with family', 114, 74, 9, 4, 20178, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(167, 'Enjoy a nice weekend near South Luanga National Park with family', 115, 75, 9, 4, 2250, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(168, 'Enjoy a beautiful weekend with friends in the savannahs of Akagera', 150, 56, 2, 2, 12925, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(169, 'Enjoy a beautiful stay with family in the savannahs of Akagera', 151, 57, 9, 4, 2750, 5, '2021-12-17', '2021-12-02', ' Available', 1, 0),
(170, 'Enjoy a beautiful weekend with up to friends in the savannahs of Akagera', 152, 57, 13, 3, 4400, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(171, 'Enjoy a beautiful weekend with friends in the savannahs of Akagera', 153, 57, 2, 2, 3300, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(172, 'Enjoy a beautiful weekend with friends in the savannahs of Akagera', 154, 58, 2, 2, 5105, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(173, 'Enjoy a beautiful stay with family  in the savannahs of Akagera', 155, 58, 9, 4, 7146.25, 5, '2021-12-17', '2021-12-22', ' Available', 1, 0),
(174, 'Enjoy a beautiful weekend with your patner in the savannahs of Akagera', 156, 59, 6, 2, 12925, 2, '2021-12-17', '2021-12-19', ' Available', 3, 0),
(175, 'Enjoy a solo retreat in the savannahs of Akagera', 157, 59, 7, 1, 17875, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(176, 'Enjoy a solo retreat in the savannahs of Akagera', 158, 60, 1, 1, 4950, 2, '2021-12-17', '2021-12-19', ' Available', 4, 0),
(177, 'Enjoy a beautiful weekend with friends in the savannahs of Akagera', 159, 60, 2, 2, 2970, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0),
(178, 'Enjoy a solo retreat in the savannahs of Akagera', 160, 60, 7, 1, 2170, 2, '2021-12-17', '2021-12-19', ' Available', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_table`
--

CREATE TABLE `payment_table` (
  `paymentID` int(255) NOT NULL,
  `reservationID` int(255) NOT NULL,
  `clientID` int(8) NOT NULL,
  `defaultCurrency` enum('KSH') NOT NULL,
  `preferredCurrency` enum('USD','USH','TSH','EURO','RWANDESE','FRANC') NOT NULL,
  `paymentMode` enum('Credit','Card','M-Pesa','PayPal','eWallet') NOT NULL,
  `amountPaid` double NOT NULL,
  `datePaid` date NOT NULL,
  `paymentStatus` enum('Confirmed','Pending','Cancelled') NOT NULL,
  `adminID` int(8) NOT NULL,
  `referenceNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `railway_stations_table`
--

CREATE TABLE `railway_stations_table` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `railway_stations_table`
--

INSERT INTO `railway_stations_table` (`ID`, `name`) VALUES
(1, 'Nairobi Terminus,Kenya'),
(2, 'Mombasa Terminus,Kenya'),
(3, 'Atikilt Tera,Ethiopia'),
(4, 'Addis Ababa-Kality,Ethiopia'),
(5, 'Tazara-Dar es Salaam,Tanzania'),
(6, 'Arusha,Tanzania');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_table`
--

CREATE TABLE `reservation_table` (
  `reservationID` int(255) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `inputState` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `inputAdults` int(3) NOT NULL,
  `inputChildren` int(3) NOT NULL,
  `packageID` int(255) NOT NULL,
  `modeTransportID` int(255) NOT NULL
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

--
-- Dumping data for table `rooms_table`
--

INSERT INTO `rooms_table` (`roomID`, `roomType`, `roomDescription`, `noOfGuests`) VALUES
(1, 'Single Room', 'One bed only', 1),
(2, 'Standard Double Room', 'Onedouble bed', 2),
(3, 'Deluxe Double Room', 'One double bed with ample space and beautiful views', 2),
(4, 'Superior Double Room', 'One double bed and an extra single bed', 3),
(5, 'Sea View Room', 'One double bed with a sea view', 2),
(6, 'Double Tent', 'A tent for two people', 2),
(7, 'Tent', 'A tent that fits one person', 1),
(8, 'Executive Room', 'One double bed for business', 2),
(9, 'Family Room', 'One  double bed and two other beds for children', 4),
(10, 'HoneyMoon Suite', 'One double bed for honeymooners', 2),
(11, 'Studio Suite', 'One bed only fits one person', 1),
(12, 'King Room', 'One large king-sized bed', 2),
(13, 'Triple Room', 'One double bed and one standard bed', 3),
(14, 'Presidential Suite', 'Holds up to 4 people', 4),
(15, 'Queen Suite', 'A large queen bed for two people', 2);

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
-- Table structure for table `tbl_bus_companies`
--

CREATE TABLE `tbl_bus_companies` (
  `companyID` int(10) NOT NULL,
  `companyName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus_companies`
--

INSERT INTO `tbl_bus_companies` (`companyID`, `companyName`) VALUES
(1, 'Modern Coast'),
(2, 'Selam Bus'),
(3, 'Fahim Bus Services');

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

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`clientID`, `clientFName`, `clientLName`, `clientUName`, `clientPhone`, `clientEmail`, `clientPassword`, `clientLocation`) VALUES
(84575460, 'John', 'Doe', 'jdoe', '0711111111', 'jdoe@gmail.com', '$2y$10$9ZyY4SueFBDBt5JscaS2DOmx8ihKXh44rC5ipB8D74G2JR16PGxxS', 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `reviewID` int(11) NOT NULL,
  `clientID` int(8) NOT NULL,
  `reviewTimeCreated` datetime NOT NULL
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
-- Indexes for table `booked_transport_table`
--
ALTER TABLE `booked_transport_table`
  ADD PRIMARY KEY (`bookedTransID`),
  ADD KEY `clientID` (`clientID`);

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
  ADD PRIMARY KEY (`busID`) USING BTREE,
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `business_class_flights_table`
--
ALTER TABLE `business_class_flights_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cars_table`
--
ALTER TABLE `cars_table`
  ADD PRIMARY KEY (`vehicleIdentificationNumber`) USING BTREE;

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
-- Indexes for table `economy_class_trains_table`
--
ALTER TABLE `economy_class_trains_table`
  ADD PRIMARY KEY (`trainID`);

--
-- Indexes for table `first_class_trains_table`
--
ALTER TABLE `first_class_trains_table`
  ADD PRIMARY KEY (`trainID`);

--
-- Indexes for table `hotels_table`
--
ALTER TABLE `hotels_table`
  ADD PRIMARY KEY (`hotelID`),
  ADD KEY `destID` (`destID`);

--
-- Indexes for table `hotel_amenities_table`
--
ALTER TABLE `hotel_amenities_table`
  ADD PRIMARY KEY (`amenityID`),
  ADD KEY `hotelID` (`hotelID`);

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
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `packageImage` (`packageImage`);

--
-- Indexes for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `railway_stations_table`
--
ALTER TABLE `railway_stations_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reservation_table`
--
ALTER TABLE `reservation_table`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `packageID` (`packageID`),
  ADD KEY `modeTransportID` (`modeTransportID`);

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
-- Indexes for table `tbl_bus_companies`
--
ALTER TABLE `tbl_bus_companies`
  ADD PRIMARY KEY (`companyID`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_transport_table`
--
ALTER TABLE `booked_transport_table`
  MODIFY `bookedTransID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `bookingID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buses_table`
--
ALTER TABLE `buses_table`
  MODIFY `busID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `categories_table`
--
ALTER TABLE `categories_table`
  MODIFY `categoryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries_table`
--
ALTER TABLE `countries_table`
  MODIFY `countryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `destination_table`
--
ALTER TABLE `destination_table`
  MODIFY `destID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `economy_class_trains_table`
--
ALTER TABLE `economy_class_trains_table`
  MODIFY `trainID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `first_class_trains_table`
--
ALTER TABLE `first_class_trains_table`
  MODIFY `trainID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels_table`
--
ALTER TABLE `hotels_table`
  MODIFY `hotelID` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `hotel_amenities_table`
--
ALTER TABLE `hotel_amenities_table`
  MODIFY `amenityID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `images_table`
--
ALTER TABLE `images_table`
  MODIFY `imageID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `package_table`
--
ALTER TABLE `package_table`
  MODIFY `packageID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `railway_stations_table`
--
ALTER TABLE `railway_stations_table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms_table`
--
ALTER TABLE `rooms_table`
  MODIFY `roomID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70745622;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `clientID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84575461;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75035146;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_transport_table`
--
ALTER TABLE `booked_transport_table`
  ADD CONSTRAINT `booked_transport_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);

--
-- Constraints for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD CONSTRAINT `booking_table_ibfk_1` FOREIGN KEY (`packageID`) REFERENCES `hotels_table` (`hotelID`),
  ADD CONSTRAINT `booking_table_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booking_table_ibfk_3` FOREIGN KEY (`destID`) REFERENCES `destination_table` (`destID`);

--
-- Constraints for table `buses_table`
--
ALTER TABLE `buses_table`
  ADD CONSTRAINT `buses_table_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `tbl_bus_companies` (`companyID`);

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
-- Constraints for table `hotel_amenities_table`
--
ALTER TABLE `hotel_amenities_table`
  ADD CONSTRAINT `hotel_amenities_table_ibfk_1` FOREIGN KEY (`hotelID`) REFERENCES `hotels_table` (`hotelID`);

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
  ADD CONSTRAINT `package_table_ibfk_3` FOREIGN KEY (`categoryID`) REFERENCES `categories_table` (`categoryID`),
  ADD CONSTRAINT `package_table_ibfk_4` FOREIGN KEY (`packageImage`) REFERENCES `images_table` (`imageID`);

--
-- Constraints for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD CONSTRAINT `payment_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `payment_table_ibfk_2` FOREIGN KEY (`adminID`) REFERENCES `tbl_admin` (`adminID`);

--
-- Constraints for table `reservation_table`
--
ALTER TABLE `reservation_table`
  ADD CONSTRAINT `reservation_table_ibfk_1` FOREIGN KEY (`packageID`) REFERENCES `package_table` (`packageID`),
  ADD CONSTRAINT `reservation_table_ibfk_2` FOREIGN KEY (`modeTransportID`) REFERENCES `booked_transport_table` (`bookedTransID`);

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
