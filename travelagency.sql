-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 09:09 AM
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
(5, 'Mombasa - Mombasa Moi International Airport (MBA),Kenya'),
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
  `companyID` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buses_table`
--

INSERT INTO `buses_table` (`busID`, `companyID`, `from`, `to`, `price`) VALUES
(1, 1000, '100', '102', 1000),
(2, 1000, '100', '101', 1600),
(3, 1000, '100', '104', 2400),
(4, 1000, '100', '103', 2200),
(5, 1000, '100', '105', 1600),
(6, 1000, '100', '106', 1400),
(7, 1000, '100', '107', 3200),
(8, 1000, '103', '105', 1500),
(9, 1000, '103', '106', 1500),
(10, 1000, '103', '104', 1000),
(11, 1000, '103', '107', 3000),
(12, 1000, '103', '100', 2200),
(13, 1000, '103', '101', 3000),
(14, 1000, '103', '102', 3200),
(15, 1000, '107', '108', 1600),
(16, 1000, '107', '109', 1000),
(17, 1000, '107', '100', 3400),
(18, 1000, '107', '103', 3000),
(19, 1001, '110', '111', 1800),
(20, 1001, '110', '112', 800),
(21, 1002, '113', '114', 2000),
(22, 1002, '113', '115', 2100);

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
  `vehicleName` varchar(24) NOT NULL,
  `carBodyStyle` varchar(24) NOT NULL,
  `doors` int(10) NOT NULL,
  `seats` int(10) NOT NULL,
  `luggageCapacity` varchar(10) NOT NULL,
  `transmissionType` varchar(24) NOT NULL,
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
(4, 'Sarova Whitesands Beach Resort and Spa', 'Off Malindi Road, Mombasa County, Mombasa', 'https://lh5.googleusercontent.com/p/AF1QipO7ct1_yTj6NKeYjAa94tnI2sqTA7FDINHwj5gr=w325-h216-k-no', 3, 0),
(5, 'Serena Beach Resort and Spa', 'Shanzu, 00100 Shanzu, Kenya ', 'https://cf.bstatic.com/xdata/images/hotel/max200/280001666.jpg?k=79952bdca8ea7968ccb87f6d80754cd472facac75df9378d109c9f817a9f28a7&o=&hp=1', 3, 0),
(6, 'Leopard Hill', ' Mara Naboisho, 00100 Naboisho, Kenya', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/216259311.jpg?k=6eb5da85abde55d0064f440f3de41dbbd91431333b17b1321bcd93efa12a6aba&o=&hp=1', 1, 0),
(7, 'Olare Mara Kempinski Masai Mara', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/p/AF1QipO-fEU8dtvETp9uwzpHvjYjrrZ1VbBb04elDYEK=w325-h216-k-no', 1, 0),
(8, 'Neptune Mara Rianta Luxury Camp', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/p/AF1QipO-fEU8dtvETp9uwzpHvjYjrrZ1VbBb04elDYEK=w325-h216-k-no', 1, 0),
(9, 'Fairmont Mara Safari Club', 'Fairmont Mara Safari Club, 58581, Mara Safari Club, Aitong, Kenya', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/ee/e5/f2/fairmont-mara-safari.jpg?w=900&h=-1&s=1', 1, 0),
(10, 'Royal Mara Safari Lodge', 'Mara North Conservancy\r\n ', 'https://lh6.googleusercontent.com/proxy/TeZ0snnqhsO0bJImnPNesSAUgFKX0ifrexURSvxOthBa6noymEwIggWrFwEOpYZ8ilUCfEV81CuyplElbS71Yxq-HzjJt4MJMmKbFbHu-Vioz8aDtxy0Qvnxywm_pcuETcONaZK3KxTF-Q1Re4dWCPd6iMe70g=w325-h175-k-no', 1, 0),
(11, 'Sankara Nairobi', '05 Woodvale Grove, Nairobi', 'https://lh5.googleusercontent.com/p/AF1QipOoAehtuzXK1NB5tvpUQIkIA3K8lTPcf2urbEws=w325-h216-k-no', 2, 0),
(12, 'Villa Rosa Kempinski Nairobi', 'Chiromo Rd, Nairobi', 'https://lh3.googleusercontent.com/p/AF1QipOdgUIQYnMqK7wNtS_48AeVFtJ-iQ6JGW9NDpUL=w296-h202-n-k-rw-no-v1', 2, 0),
(13, 'Radisson Blu Hotel and Residence', 'Elgon Road', 'https://lh3.googleusercontent.com/p/AF1QipOdgUIQYnMqK7wNtS_48AeVFtJ-iQ6JGW9NDpUL=w296-h202-n-k-rw-no-v1', 2, 0),
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
(47, 'Gorillas Lake Kivu Hotel', 'Beach Road, Gisenyi, Rwanda', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/42541114.jpg?k=11ec41d109d7729f3cba191ed82174e4f86e53e4b660d6b45c73a86ace5fe8d8&o=&hp=', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenities_table`
--

CREATE TABLE `hotel_amenities_table` (
  `amenityID` int(10) NOT NULL,
  `internetAvailability` varchar(45) DEFAULT NULL,
  `parkingAailability` varchar(45) DEFAULT NULL,
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

INSERT INTO `hotel_amenities_table` (`amenityID`, `internetAvailability`, `parkingAailability`, `pool`, `spa`, `meals`, `airConditioning`, `healthFacilities`, `hotelID`) VALUES
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
(20, 'Free Wifi', 'Free Parking', 'no', 'no', 'Free Breakfast, Restaurant, Bar', 'no', NULL, 20);

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
(44, '	Image: https://exp.cdn-hotels.com/hotels/22000000/21540000/21538200/21538175/c54f655f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 'Standard Double Room', 25);

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
(5, 'Ideal place to have a staycation for friends in the city', 1, 11, 4, 3, 14156, 1, '2021-11-20', '2021-11-21', ' Available', 2, 0),
(6, 'Ideal for a weekend away in the mountain', 1, 16, 2, 2, 3758.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(7, 'Enjoy the coastal town of Zanzibar with your friends', 1, 26, 2, 2, 3063, 2, '2021-11-27', '2021-11-29', ' Available', 2, 0),
(8, 'Enjoy a beautiful weekend in Ethiopia', 1, 31, 2, 2, 3787, 2, '2021-11-27', '2021-11-29', ' Available', 2, 0),
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
(35, 'Enjoy a nice weekend in Tanzania near Mt Kilimanjaro with friends', 29, 16, 2, 2, 3758.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
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
(51, 'Enjoy a nice weekend in this beautiful island with friends or alone', 1, 26, 2, 2, 3063, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(52, 'Enjoy a nice weekend in this beautiful islands with friends', 1, 26, 13, 3, 2599, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(53, 'Enjoy a nice weekend in this beautiful islands with friends', 1, 27, 2, 2, 7072.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(54, 'Enjoy a nice weekend in this beautiful islands in a delxe suite with friends', 1, 27, 3, 2, 13922.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(55, 'Enjoy a nice stay in this beautiful islands with your family', 1, 27, 9, 4, 8353, 5, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(56, 'Suitable for a tranquil stay at the beach with 2 to 3 friends', 1, 28, 4, 3, 2998, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(57, 'Suitable for a tranquil stay at the beach with friends or a patner', 1, 28, 3, 2, 3722, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(58, 'Suitable for a tranquil stay at the beach with friends in the sea view room', 1, 28, 5, 2, 5396.5, 2, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(59, 'Enjoy a nice weekend away in Zanzibar with friends or alone', 1, 29, 3, 2, 7772, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(60, 'Enjoy a nice weekend away in Zanzibar with friends or family', 1, 29, 9, 4, 4085.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(61, 'Enjoy a nice weekend away in Zanzibar with friends or alone', 1, 30, 12, 2, 21802.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(62, 'Enjoy a nice stay in Ethiopia with friends', 1, 31, 2, 2, 3787, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(63, 'Enjoy a nice weekend in Ethiopia with friends', 1, 31, 8, 2, 6627, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(64, 'Enjoy a nice stay in Ethiopia with friends or family', 1, 31, 14, 4, 4761.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(65, 'Suitable for a friends getaway', 1, 32, 2, 2, 12047, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(66, 'Suitable for a friends or business getaway', 1, 32, 8, 2, 15851, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(67, 'Enjoy a relaxed weekend in Ethiopia with friends or family', 1, 33, 12, 2, 8355, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(68, 'Suitable for a solo retreat in Ethiopia', 1, 33, 11, 1, 27850, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(69, 'Enjoy a nice stay in Ethiopia with friends or family in the kings suite', 1, 34, 12, 2, 11530, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(70, 'Enjoy a nice stay in Ethiopia with friends or family in the queen suite', 1, 34, 15, 2, 45511.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(71, 'Suitable for a friends getaway', 1, 35, 3, 2, 7018, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(72, 'Suitable for a friends or business getaway', 1, 35, 8, 2, 8522, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(73, 'Enjoy  a nice weekend with friends or family', 1, 36, 2, 2, 2931.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(74, '', 1, 36, 3, 2, 3157, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(75, 'Suitable for a solo retreat', 1, 36, 1, 1, 4059, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(76, 'Enjoy  a nice weekend with friends', 1, 37, 2, 2, 2475, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(77, 'Enjoy  a nice weekend with friends or family in the deluxe room', 1, 37, 3, 2, 3300, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(78, 'Enjoy  a nice weekend with friends or family', 1, 38, 2, 2, 1933, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(79, 'Enjoy  a nice weekend with friends or family in the deluxe room', 1, 38, 3, 2, 1401.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(80, 'Enjoy  a nice weekend with friends or family', 1, 39, 2, 2, 1336, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(81, 'Enjoy  a nice weekend with friends or family in the queen suite', 1, 39, 15, 2, 1392, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(82, 'Suitable for a solo retreat', 1, 39, 1, 1, 2116, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(83, 'Enjoy  a nice weekend with friends or family', 1, 40, 2, 2, 2405, 2, '2021-11-20', '2021-11-22', ' Available', 1, 0),
(84, 'Enjoy  a nice weekend with friends or family in the king suite', 1, 40, 12, 2, 2154.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(85, 'Suitable for a family retreat', 1, 40, 9, 4, 2087.75, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(86, 'Suitable for a solo retreat', 1, 40, 1, 1, 3207, 2, '2021-11-20', '2021-11-22', ' Available', 4, 0),
(87, 'Enjoy a nice stay in Bishoftu with friends', 1, 41, 2, 2, 2860, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(88, 'Enjoy a nice stay in Bishoftu with friends', 1, 42, 2, 2, 8912, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(89, 'Enjoy a nice weekend in Bishoftu with friends or family', 1, 42, 3, 2, 13925, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(90, 'Enjoy a nice stay in Bishoftu with family', 1, 42, 9, 4, 5291.5, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0),
(91, 'Enjoy a nice stay in Bishoftu with up to 3friends', 1, 42, 13, 3, 8912.33, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(92, 'Enjoy a nice weeekend in Bishoftu with friends', 1, 43, 2, 2, 2860, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(93, 'Enjoy a nice stay in Bishoftu with friends or for business', 1, 43, 8, 2, 3740, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(94, 'Enjoy a nice stay in Bishoftu with family', 1, 43, 9, 4, 2007.5, 5, '2021-11-20', '2021-11-25', ' Available', 2, 0),
(95, 'Enjoy a nice weekend in Bishoftu with friends in this deluxe suite', 1, 44, 3, 2, 3905, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(96, 'Enjoy a nice stay in Bishoftu with friends', 1, 45, 2, 2, 4739, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(97, 'Enjoy a nice weekend in Bishoftu with friends or for business', 1, 45, 8, 2, 5820.5, 2, '2021-11-20', '2021-11-22', ' Available', 2, 0),
(98, 'Enjoy a nice stay in Bishoftu with family', 1, 45, 9, 4, 2313, 5, '2021-11-20', '2021-11-25', ' Available', 1, 0);

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
(1000, 'Modern Coast'),
(1001, 'Selam Bus'),
(1002, 'Fahim Bus Services');

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_towns`
--

CREATE TABLE `tbl_towns` (
  `townID` int(10) NOT NULL,
  `countryID` int(10) NOT NULL,
  `townName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_towns`
--

INSERT INTO `tbl_towns` (`townID`, `countryID`, `townName`) VALUES
(100, 1, 'Nairobi'),
(101, 1, 'Mombasa'),
(102, 1, 'Narok'),
(103, 4, 'Dodoma'),
(104, 4, 'Dar es Salaam'),
(105, 4, 'Moshi'),
(106, 4, 'Arusha'),
(107, 6, 'Kigali'),
(108, 6, 'Kibuye'),
(109, 6, 'Rwamagana'),
(110, 2, 'Addis Ababa'),
(111, 2, 'Bahir Dar'),
(112, 2, 'Bishoftu'),
(113, 7, 'Lusaka'),
(114, 7, 'Livingstone'),
(115, 7, 'Victoria Falls');

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
-- Indexes for table `railway_stations_table`
--
ALTER TABLE `railway_stations_table`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `tbl_towns`
--
ALTER TABLE `tbl_towns`
  ADD PRIMARY KEY (`townID`),
  ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `trains_table`
--
ALTER TABLE `trains_table`
  ADD PRIMARY KEY (`trainID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_cars_table`
--
ALTER TABLE `booked_cars_table`
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
  MODIFY `busID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `flights_table`
--
ALTER TABLE `flights_table`
  MODIFY `flightNumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2098616430;

--
-- AUTO_INCREMENT for table `hotels_table`
--
ALTER TABLE `hotels_table`
  MODIFY `hotelID` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `hotel_amenities_table`
--
ALTER TABLE `hotel_amenities_table`
  MODIFY `amenityID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images_table`
--
ALTER TABLE `images_table`
  MODIFY `imageID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `package_table`
--
ALTER TABLE `package_table`
  MODIFY `packageID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

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
-- AUTO_INCREMENT for table `tbl_bus_companies`
--
ALTER TABLE `tbl_bus_companies`
  MODIFY `companyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

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
-- AUTO_INCREMENT for table `tbl_towns`
--
ALTER TABLE `tbl_towns`
  MODIFY `townID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `trains_table`
--
ALTER TABLE `trains_table`
  MODIFY `trainID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4343567811;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_cars_table`
--
ALTER TABLE `booked_cars_table`
  ADD CONSTRAINT `booked_cars_table_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `tbl_client` (`clientID`),
  ADD CONSTRAINT `booked_cars_table_ibfk_2` FOREIGN KEY (`vehicleIdentificationNumber`) REFERENCES `cars_table` (`vehicleIdentificationNumber`);

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

--
-- Constraints for table `tbl_towns`
--
ALTER TABLE `tbl_towns`
  ADD CONSTRAINT `tbl_towns_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `countries_table` (`countryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
