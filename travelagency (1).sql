-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 04, 2021 at 08:01 AM
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
  `price` double NOT NULL,
  `imageUrl` varchar(255) NOT NULL
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

--
-- Dumping data for table `countries_table`
--

INSERT INTO `countries_table` (`countryID`, `countryName`) VALUES
(1, 'Kenya'),
(2, 'Ethiopia'),
(4, 'Tanzania'),
(6, 'Rwanda'),
(7, 'Zambia');

-- --------------------------------------------------------

--
-- Table structure for table `destination_table`
--

CREATE TABLE `destination_table` (
  `destID` int(100) NOT NULL,
  `destName` varchar(100) NOT NULL,
  `countryID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_table`
--

INSERT INTO `destination_table` (`destID`, `destName`, `countryID`) VALUES
(1, 'Maasai Mara', 1),
(2, 'Nairobi City', 1),
(3, 'Mombasa - Coast', 1),
(4, 'Mount Kilimanjaro', 4),
(5, 'Serengeti National Park', 4),
(6, 'Zanzibar', 4),
(7, 'Addis Ababa', 2),
(8, 'Bahir Dar', 2),
(9, 'Bishoftu', 2),
(10, 'Lake Kivu', 6),
(11, 'Kigali Genocide Memorial', 6),
(12, 'The Savannas of Akagera National Park', 6);

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
  `destID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels_table`
--

INSERT INTO `hotels_table` (`hotelID`, `hotelName`, `hotelAddress`, `hotelImage`, `destID`) VALUES
(1, 'The Voyager Beach Resort', ' Off Mt Kenya Road, Mombasa', 'https://lh3.googleusercontent.com/p/AF1QipOQLbd-viPcBO-RI5sUzd-DS7WABTy3vb02tuZE=w296-h202-n-k-rw-no-v1', 3),
(2, 'PrideInn Paradise Beach Resort and Spa', ' Serena Rd, Mombasa', 'https://lh5.googleusercontent.com/proxy/IG80PUgUw4FU4m_TK6UYISlL_WDONACTKwVSpweaIqcIUeoiBFiovSD3TFu0Ju89ydtw23Dil_N-Qb8admYRiBPADxmoWkZh3J0DlEFjJ37bK_qBrbPjuEkFFZcJHHn32HsqY5ypJkeawMUZH4GDHvdJPNPI2g=w325-h216-k-no', 3),
(3, 'The Reef Hotel Mombasa', 'Mount Kenya Road, Mombasa', 'https://lh5.googleusercontent.com/p/AF1QipO7ct1_yTj6NKeYjAa94tnI2sqTA7FDINHwj5gr=w325-h216-k-no', 3),
(4, 'Sarova Whitesands Beach Resort and Spa', 'Off Malindi Road, Mombasa County, Mombasa', 'https://lh5.googleusercontent.com/p/AF1QipO7ct1_yTj6NKeYjAa94tnI2sqTA7FDINHwj5gr=w325-h216-k-no', 3),
(5, 'Serena Beach Resort and Spa', 'Shanzu, 00100 Shanzu, Kenya ', 'https://cf.bstatic.com/xdata/images/hotel/max200/280001666.jpg?k=79952bdca8ea7968ccb87f6d80754cd472facac75df9378d109c9f817a9f28a7&o=&hp=1', 3),
(6, 'Leopard Hill', ' Mara Naboisho, 00100 Naboisho, Kenya', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/216259311.jpg?k=6eb5da85abde55d0064f440f3de41dbbd91431333b17b1321bcd93efa12a6aba&o=&hp=1', 1),
(7, 'Olare Mara Kempinski Masai Mara', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/p/AF1QipO-fEU8dtvETp9uwzpHvjYjrrZ1VbBb04elDYEK=w325-h216-k-no', 1),
(8, 'Neptune Mara Rianta Luxury Camp', 'Oloololo Gate, Masai Mara', 'https://lh5.googleusercontent.com/p/AF1QipO-fEU8dtvETp9uwzpHvjYjrrZ1VbBb04elDYEK=w325-h216-k-no', 1),
(9, 'Fairmont Mara Safari Club', 'Fairmont Mara Safari Club, 58581, Mara Safari Club, Aitong, Kenya', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/ee/e5/f2/fairmont-mara-safari.jpg?w=900&h=-1&s=1', 1),
(10, 'Royal Mara Safari Lodge', 'Mara North Conservancy\r\n ', 'https://lh6.googleusercontent.com/proxy/TeZ0snnqhsO0bJImnPNesSAUgFKX0ifrexURSvxOthBa6noymEwIggWrFwEOpYZ8ilUCfEV81CuyplElbS71Yxq-HzjJt4MJMmKbFbHu-Vioz8aDtxy0Qvnxywm_pcuETcONaZK3KxTF-Q1Re4dWCPd6iMe70g=w325-h175-k-no', 1),
(11, 'Sankara Nairobi', '05 Woodvale Grove, Nairobi', 'https://lh5.googleusercontent.com/p/AF1QipOoAehtuzXK1NB5tvpUQIkIA3K8lTPcf2urbEws=w325-h216-k-no', 2),
(12, 'Villa Rosa Kempinski Nairobi', 'Chiromo Rd, Nairobi', 'https://lh3.googleusercontent.com/p/AF1QipOdgUIQYnMqK7wNtS_48AeVFtJ-iQ6JGW9NDpUL=w296-h202-n-k-rw-no-v1', 2),
(13, 'Radisson Blu Hotel and Residence', 'Elgon Road', 'https://lh3.googleusercontent.com/p/AF1QipOdgUIQYnMqK7wNtS_48AeVFtJ-iQ6JGW9NDpUL=w296-h202-n-k-rw-no-v1', 2),
(14, 'Tamarind Tree Hotel', 'Langata Link Rd, Nairobi', 'https://lh3.googleusercontent.com/p/AF1QipOzmaXQqM77BPFpR7CGgTrRYUsEVIxSR4zOHSw=w296-h202-n-k-rw-no-v1', 2),
(15, 'Hemingways Nairobi', 'Karen Mbagathi Ridge', 'https://lh5.googleusercontent.com/p/AF1QipMz2lbBWgHv6Z6yZjWgPZas4ztBhbsmSCQUKbU6=w325-h216-k-no', 2),
(16, 'Babylon Lodge', 'Marangu Mashariki, Kilimanjaro region. Tz', 'https://lh5.googleusercontent.com/proxy/N_eR-c7O_I3tRi44UHGjGS6HcYFlcJ8CJo_yRyQnqxyRb8ggghHW4qg8MbXwnd_NCrlcH6VlfApaO8DGbiSR23LoB4egdegRc8T5eEUeH3thenCgTzDROpXB5PCmG4fV6hO39wX4VZMtQffGQsuED4RiyTIT_w=w325-h221-k-no', 4),
(17, 'Kilimanjaro Resort Loitokitok', 'Outward Bound Road, 00209 Oloitokitok , Kenya', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/170747358.jpg?k=2a7b683b8345657ed5e397bf9c2e6bcb633bc02a22483c28610934d3c7c324f8&o=&hp=1', 4),
(18, 'Mount Kilimanjaro View Lodge', 'Shimbwe Juju Village, 15 Km from Moshi, Moshi, Tanzania', 'https://lh4.googleusercontent.com/proxy/XmwbPA635_RPVlxUt09tNbbh8BNejQDVszchQuUzL88fJ3-RddI_RcEnOVOIn7vwVzw3p5ovxjLpu7dADvfR_yPNuoZNW50HGoleVhG1lw9hl5VNda381Pw7orm5oL8wTOJhB6NbAqsLoZhvXxDdMxCLTm5_r8k=w325-h243-k-no', 4),
(19, 'Satao Elerai', 'Amboseli National Park Headquarters', 'https://lh5.googleusercontent.com/p/AF1QipNBF85jdCRA837QDDYwZZ43VrFV2Aqfy4yHZJBh=w325-h162-k-no', 4),
(20, 'Aishi Machame Hotel', 'Nyamuma Hills Serengeti National Park Serengeti TZ, 01184, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipNBF85jdCRA837QDDYwZZ43VrFV2Aqfy4yHZJBh=w325-h162-k-no', 4),
(21, 'Serengeti Mawe Tented Camp', 'Marangu Mashariki, Kilimanjaro region. Tz', 'https://lh5.googleusercontent.com/proxy/-WwIWXrc2LTOotUsTYAudbGJtFopnT69T60i96RAOQ-aK6Qvh46WpYdvvo-_lbKploxEkJSsDDADx_mss5tjCw7UkpRgYQVwLxVRHoibYm5tkEga9gLa82ms2Oh2KhImQo_PX5EazHThdItRG7dTCCg2UPhZqA=w325-h216-k-no', 5),
(22, 'Melia Serengeti Lodge', 'Nyamuma Hills, Serengeti National Park 01184 Tanzania', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/a1/07/45/the-infinity-pool.jpg?w=1000&h=-1&s=1', 5),
(23, 'Lobo Wildlife Lodge', 'Nyamuma Hills, Serengeti National Park 01184 Tanzani', 'https://exp.cdn-hotels.com/hotels/22000000/21560000/21558100/21558058/b2daae77_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 5),
(24, 'Mbuzi Mawe Serena Camp', 'Central Serengeti Corridor, Serengeti National Park, TZ, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipM-g97EEYMuYr0C3eh3oIVAdVHEcOCCnRof1RUU=w325-h216-k-no', 5),
(25, 'Serengeti Simba Lodge', 'Ikoma Wima, Serengeti National Park, Serengeti National Park, Tanzania', 'https://exp.cdn-hotels.com/hotels/22000000/21540000/21538200/21538175/334fe374_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 5),
(26, 'Drifters Zanzibar', 'PO Box 791 Zanzibar, Paje, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipOrd2GLvpzZjftj_sq4ONnbFSOy92HkGCgkpvO8=w325-h182-k-no', 6),
(27, 'Moja Tuu Luxury Villas', 'North East Coast Area Kiwengwa Zanzibar, Tanzania', 'https://lh4.googleusercontent.com/proxy/gNYvkXH5z7BB9hl1ZLoi_KhatiQT5PkrhJWF0l5LZNOTT2VmAx8WkKdOXsM2Iqqmp-jyzpu79oXJmwQBZ-F1tDJThIEZYEWql_CVaQ7AACFwZ-ZvyXnC7kEo0EjgnoBivhWU85QZZ2JjTm5_eG8_zYkaK4dG7g=w325-h216-k-no', 6),
(28, 'Zanzibar Beach Resort', 'Mazizini Kilimani, Zanzibar 2586, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipOqujgm6u0URBIcjw5B_4rhoWmViHPKCtBJwlZ-=w325-h216-k-no', 6),
(29, 'Filao Beach Zanzibar', 'Chwaka Bay, East Coast Zanzibar City, Michamvi Beach Track, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipN2edX8wn0WIz3buxc7FKwNgxYjzE8xDNcuDHTA=w325-h216-k-no', 6),
(30, 'Hotel Verde Zanzibar', 'Malawi Rd, Zanzibar, Tanzania', 'https://lh5.googleusercontent.com/p/AF1QipMEu2wvNl9se5j1s4g9smz_-BhuV1424D3Q-k7y=w325-h182-k-no', 6),
(31, 'The Grand Palace Suites Hotel', 'Guinea Conakry St, Addis Ababa 5710, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNawHhPDAsdSQRPCLtWPQr0LgEiOokm3LKOZdKF=w325-h386-k-no', 7),
(32, 'Radisson Blu Hotel', 'Kazanchis Business District Kirkos Subcity 17/18 Addis Ababa, 1000, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipOzeHHmpxbtLsNqCqzkCUzBZU63oPWlx_F2Ks4h=w325-h216-k-no', 7),
(33, 'Capital Hotel and Spa', '22 Haile Gebre Silase St Addis Ababa ET 1878, Haile Gebre Silase St, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipN1KgdZGFyjiCa6ByMlx464IprIWduj7o4gur-v=w325-h216-k-no', 7),
(34, 'Best Western Plus Pearl Addis', 'Cameroon St, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNxCk9rSTfPK-BOjNFlfbFUcA93kUVnUoSXtSJi=w325-h216-k-no', 7),
(35, 'Golden Tulip Addis Ababa Hotel', 'Cameroon St, Addis Ababa 5623, Ethiopia', 'https://lh3.googleusercontent.com/proxy/wV-DBreM7-abDsSkwp3r6RSfxsxwwCiTXVxu8FRlK2ssZvg79qnVeXgoiqGwqXmLSV1QeZ2iRZIm2kpx6HxTYgL23XJ9inLQT3jBmx-dFokUZRDJ_RpwNtMYOXOBU2Ldkpq1PDSPdQUndqRWDtyBxUlSiKExR1c=w325-h275-k-no', 7),
(36, 'Jacaranda Hotel', 'In front of old regional stadium, 1890 Bahir Dar, Ethiopia', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/236449766.jpg?k=ac11d0671166e55ab0eee492ac6f549f47c0d91fee4cb44737d01c8044f01b25&o=&hp=1', 8),
(37, 'Delano Hotel and Spa', 'Kebele 15, Bahir Dar, 1338, Ethiopia', 'https://exp.cdn-hotels.com/hotels/18000000/17760000/17756200/17756147/4bfb79ac_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 8),
(38, 'Rahnile Hotel', 'kebele 05, Behind EEPCO building, Bahir Dar, Ethiopia\r\n', 'https://lh5.googleusercontent.com/p/AF1QipPLNri9I_WpUdH16bf8OgXfLUo5hrtNu_2wioA=w325-h216-k-no', 8),
(39, 'Kakemark Hotel', 'Felege Hiwot Rd, Bahir Dar, Ethiopia', 'https://lh5.googleusercontent.com/proxy/Z--bztX-h3bdmcIJp4THp2q7MDO8j9Hhqmal8kD988EbTf-QLen22WtZWqu8K0gKTc5A974wKEfIMUNwRXczeUPPH_1URHptIKVNlnCSH0Qpeq_04H_-vERvSHIvd4nmGQWNrWKNHswqmB7lFqMDOj6QcX3zLTU=w325-h216-k-no', 8),
(40, 'Homland Hotel', ' Ethiopia , Bhair Dar, Bahir Dar, Ethiopia\r\n', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/222466968.jpg?k=b7f1a332fc571f914b3845d9f0d20de4a3beb81cc3acdcb1f09f36c66ec75c24&o=&hp=1', 8),
(41, 'Babogaya Lake Viewpoint Lodge', 'Kebele 15 House 571, Debre Zeyit, 4000, Ethiopia', 'https://exp.cdn-hotels.com/hotels/6000000/5640000/5631800/5631762/46d81fb6_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium', 9),
(42, 'Liesak Resport Hotel', 'Guda Lake, Bishoftu, Ethiopia\r\n', 'https://lh5.googleusercontent.com/proxy/V2DDTGbxHvaG5jpnmtBZfaULzIfdNwHfRxKnPsUzf1kR1g9Y8s6aXSAFeYnLvOXrrHTj39vw1gfiGjI1Yo-X3N05tfsMZxQKl9tBYMcm-t2NeHtuBJMIsadLLexFzJph6Xye_CXhBq_2jMtbicXWKx_B1D-OEA=w325-h222-k-no', 9),
(43, 'Crown Hotel', 'Kaliti, Akaky Kaliti, Addis Ababa, Ethiopia', 'https://pix8.agoda.net/hotelImages/535/535622/535622_13101718590017054121.jpg?s=1024x768', 9),
(44, 'Beacon Hotel', 'Saris Abo W18 House Number 1822 P.O.Box 1046, Addis Ababa, Ethiopia', 'https://lh5.googleusercontent.com/p/AF1QipNKtP-m8hqbJ07jdCdTP0Mmvbr0lwEQPe77TDhS=w325-h216-k-no', 9),
(45, 'Asham Africa Hotel', 'Bishoftu,1000, Ethiopia', 'https://lh5.googleusercontent.com/proxy/qU4H2s84dYXNZr5bvhIfIEEtISMIQr0maDHzIGuRZzYcveW5rcBZTIeyvbCjc5sMIcAJUTgXXTnaqa87OvaPSEZqTp2G2bVjJs7lRe7GjD12Sv3hAfRIeWUO6AQfolLwEk1ft7dAleJtUn0Jh-R9N_l_GLwHvVg=w325-h215-k-no', 9);

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
  `packageDescription` varchar(100) NOT NULL,
  `hotelID` bigint(255) NOT NULL,
  `roomID` int(10) NOT NULL,
  `pricePerGuest` double NOT NULL,
  `totalPrice` double NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `status` enum('Booked',' Available') NOT NULL,
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
(13, 'Triple Room', 'One double bed and one standard bed', 3);

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
  MODIFY `countryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `destination_table`
--
ALTER TABLE `destination_table`
  MODIFY `destID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flights_table`
--
ALTER TABLE `flights_table`
  MODIFY `flightNumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2098616430;

--
-- AUTO_INCREMENT for table `hotels_table`
--
ALTER TABLE `hotels_table`
  MODIFY `hotelID` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `hotel_amenities_table`
--
ALTER TABLE `hotel_amenities_table`
  MODIFY `amenityID` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `roomID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
