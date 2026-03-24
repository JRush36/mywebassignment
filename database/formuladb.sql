-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2026 at 11:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formuladb`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` varchar(20) NOT NULL,
  `age` varchar(3) NOT NULL,
  `team` text NOT NULL,
  `driver_no` int(11) NOT NULL,
  `grand_prix_entered` int(11) NOT NULL,
  `career_points` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `world_titles` int(11) NOT NULL,
  `driver_photo` varchar(100) DEFAULT NULL,
  `car_image` varchar(100) DEFAULT NULL,
  `driver_number` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`ID`, `name`, `country`, `age`, `team`, `driver_no`, `grand_prix_entered`, `career_points`, `wins`, `world_titles`, `driver_photo`, `car_image`, `driver_number`, `slug`) VALUES
(1, 'Lewis Hamilton', 'England', '41', 'Ferrari', 44, 380, 5019, 105, 7, NULL, NULL, NULL, 'lewis-hamilton'),
(2, 'Max Verstappen', 'Netherlands', '28', 'Red Bull', 3, 233, 3445, 71, 4, 'maxver.png', 'redbull_car.png', 'maxnum.png', 'max-verstappen'),
(3, 'Lando Norris', 'England', '26', 'McLaren', 1, 152, 1430, 11, 1, NULL, NULL, NULL, 'lando-norris'),
(4, 'Oscar Piastri', 'Australia', '24', 'McLaren', 81, 70, 799, 9, 0, NULL, NULL, NULL, 'oscar-piastri'),
(5, 'George Russell', 'England', '28', 'Mercedes', 63, 152, 1033, 5, 0, NULL, NULL, NULL, 'george-russell'),
(6, 'Charles Leclerc', 'Monaco', '28', 'Ferrari', 16, 173, 1672, 8, 0, NULL, NULL, NULL, 'charles-leclerc'),
(7, 'Kimi Antonelli', 'Italy', '19', 'Mercedes', 12, 24, 150, 0, 0, NULL, NULL, NULL, 'kimi-antonelli'),
(8, 'Alexander Albon', 'Thailand', '29', 'Williams', 23, 130, 313, 0, 0, 'alealb.png', 'williams_car.png', '', 'alexander-albon'),
(9, 'Carlos Sainz', 'Spain', '31', 'Williams', 55, 233, 1337, 4, 0, 'carsai.png', 'williams_car.png', '', 'carlos-sainz'),
(10, 'Fernando Alonso', 'Spain', '44', 'Aston Martin', 14, 428, 2393, 32, 2, NULL, NULL, NULL, 'fernando-alonso'),
(11, 'Nico Hülkenberg', 'Germany', '38', 'Audi', 27, 254, 622, 0, 0, NULL, NULL, NULL, 'nico-hülkenberg'),
(12, 'Isack Hadjar', 'France', '21', 'Red Bull', 6, 24, 51, 0, 0, NULL, NULL, NULL, 'isack-hadjar'),
(13, 'Oliver Bearman', 'England', '20', 'Haas', 87, 27, 48, 0, 0, NULL, NULL, NULL, 'oliver-bearman'),
(14, 'Liam Lawson', 'New Zealand', '24', 'Racing Bulls', 30, 35, 44, 0, 0, NULL, NULL, NULL, 'liam-lawson'),
(15, 'Esteban Ocon', 'France', '29', 'Haas', 31, 180, 483, 1, 0, NULL, NULL, NULL, 'esteban-ocon'),
(16, 'Lance Stroll', 'Canada', '27', 'Aston Martin', 18, 193, 325, 0, 0, NULL, NULL, NULL, 'lance-stroll'),
(17, 'Pierre Gasly', 'France', '30', 'Alpine', 10, 178, 458, 1, 0, NULL, NULL, NULL, 'pierre-gasly'),
(18, 'Gabriel Bortoleto', 'Brazil', '21', 'Audi', 5, 24, 19, 0, 0, NULL, NULL, NULL, 'gabriel-bortoleto'),
(19, 'Franco Colapinto', 'Argentina', '22', 'Alpine', 43, 27, 5, 0, 0, NULL, NULL, NULL, 'franco-colapinto'),
(20, 'Valtteri Bottas', 'Finland', '36', 'Cadillac', 77, 247, 1797, 10, 0, NULL, NULL, NULL, 'valtteri-bottas'),
(21, 'Sergio Perez', 'Mexico', '36', 'Cadillac', 11, 285, 1638, 6, 0, NULL, NULL, NULL, 'sergio-perez'),
(22, 'Arvid Lindblad', 'England', '18', 'Racing Bulls', 41, 0, 0, 0, 0, NULL, NULL, NULL, 'arvid-lindblad');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `headquarters` text NOT NULL,
  `power_unit` text NOT NULL,
  `team_principal` text NOT NULL,
  `driver_1` text NOT NULL,
  `driver_2` text NOT NULL,
  `wins` int(11) NOT NULL,
  `constructor_titles` int(11) NOT NULL,
  `team_logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `name`, `country`, `headquarters`, `power_unit`, `team_principal`, `driver_1`, `driver_2`, `wins`, `constructor_titles`, `team_logo`) VALUES
(1, 'Alpine', 'France', 'Enstone, UK', 'Mercedes', 'Flavio Briatore', 'Pierre Gasly', 'Franco Colapinto', 1, 0, NULL),
(2, 'Aston Martin', 'United Kingdom', 'Silverstone, UK', 'Honda', 'Adrian Newey', 'Fernando Alonso', 'Lance Stroll', 0, 0, NULL),
(3, 'Williams', 'United Kingdom', 'Grove, UK', 'Mercedes', 'James Vowles', 'Carlos Sainz', 'Alexander Albon', 114, 9, NULL),
(4, 'Audi', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'Audi', 'Jonathan Wheatley', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0, NULL),
(5, 'Cadillac', 'USA', 'Fishers, USA & Silverstone, UK', 'Ferrari', 'Graeme Lowdon', 'Valtteri Bottas', 'Sergio Pérez', 0, 0, NULL),
(6, 'Ferrari', 'Italy', 'Maranello, Italy', 'Ferrari', 'Fred Vasseur', 'Charles Leclerc', 'Lewis Hamilton', 248, 16, NULL),
(7, 'Haas', 'USA', 'Kannapolis, USA & Banbury, UK', 'Ferarri', 'Ayao Komatsu', 'Oliver Bearman', 'Esteban Ocon', 0, 0, NULL),
(8, 'McLaren', 'United Kingdom', 'Woking, UK', 'Mercedes', 'Andrea Stella', 'Lando Norris', 'Oscar Piastri', 203, 10, NULL),
(9, 'Mercedes', 'Germany', 'Brackley, UK', 'Mercedes', 'Toto Wolff', 'George Russell', 'Kimi Antonelli', 131, 8, NULL),
(10, 'Racing Bulls', 'Italy', 'Faenza, Italy', 'Red Bull Ford', 'Alan Permane', 'Liam Lawson', 'Arvid Lindblad', 0, 0, NULL),
(11, 'Red Bull', 'Austria', 'Milton Keynes, UK', 'Red Bull Ford', 'Laurent Mekies', 'Max Verstappen', 'Isack Hadjar', 130, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Country` text NOT NULL,
  `Length` text NOT NULL,
  `Corners` int(11) NOT NULL,
  `First Grand Prix` int(11) NOT NULL,
  `Most Wins` text NOT NULL,
  `Lap Record` text NOT NULL,
  `Attendance Record` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`ID`, `Name`, `Country`, `Length`, `Corners`, `First Grand Prix`, `Most Wins`, `Lap Record`, `Attendance Record`) VALUES
(1, 'Albert Park', 'Australia', '5.278 km', 14, 1996, 'Michael Schumacher (4)', '1:19.813 (Charles Leclerc, 2024)', 480000),
(2, 'Shanghai International', 'China', '5.451 km', 16, 2004, 'Lewis Hamilton (6)', '1:32.238 (Michael Schumacher, 2004)', 260000),
(3, 'Suzuka', 'Japan', '5.807km', 18, 1987, 'Michael Schumacher (6)', '1:30.965 (Kimi Antonelli, 2025)', 357000),
(4, 'Bahrain International', 'Bahrain', '5.412 km', 15, 2004, 'Lewis Hamilton (5)', '1:31.447 (Pedro de la Rosa, 2005)', 105000),
(5, 'Jeddah', 'Saudi Arabia', '6.174 km', 27, 2021, 'Max Verstappen (3)', '1:31.778 (Lando Norris, 2024)', 150000),
(6, 'Miami International Autodrome', 'USA', '5.412 km', 19, 2022, 'Max Verstappen (2)', '1:29.708 (Max Verstappen, 2023)', 275000),
(7, 'Circuit Gilles-Villeneuve', 'Canada', '4.361 km', 14, 1978, 'Michael Schumacher & Lewis Hamilton (7)', '1:13.078 (Valterri Bottas, 2019)', 352000),
(8, 'Circuit de Monaco', 'Monaco', '3.337 km', 19, 1950, 'Ayrton Senna (6)', '1:12.909 (Lewis Hamilton, 2021)', 250000),
(9, 'Circuit de Barcelona-Catalunya', 'Spain', '4.657 km', 14, 1991, 'Michael Schumacher & Lewis Hamilton (6)', '1:15.743 (Oscar Piastri, 2025)', 288000),
(10, 'Red Bull Ring', 'Austria', '4.318 km', 10, 1970, 'Max Verstappen (4)', '1:07.924 (Oscar Piastri, 2025)', 304000),
(11, 'Silverstone', 'United Kingdom', '5.891 km', 18, 1950, 'Lewis Hamilton (8)', '1:27.097 (Max Verstappen, 2020)', 500000),
(12, 'Spa-Francorchamps', 'Belgium', '7.004 km', 19, 1950, 'Michael Schumacher (6)', '1:44.701 (Sergio Perez, 2024)', 389000),
(13, 'Hungaroring\r\n', 'Hungary', '4.381 km', 14, 1986, 'Lewis Hamilton (8)', '1:16.627 (Lewis Hamilton, 2020)', 310000),
(14, 'Zandvoort', 'Netherlands', '4.259 km', 14, 1952, 'Jim Clark (4)', '1:11.097 (Lewis Hamilton, 2021)', 305000),
(15, 'Monza', 'Italy', '5.793 km', 11, 1950, 'Michael Schumacher & Lewis Hamilton (5)', '1:20.901 (Lando Norris, 2025)', 370000),
(16, 'Madring', 'Spain', '5.416km', 22, 2026, 'N/A', 'N/A', 0),
(17, 'Baku City Circuit', 'Azerbaijan', '6.003 km', 20, 2016, 'Sergio Pérez (2)', '1:43.009 (Charles Leclerc, 2019)', 76000),
(18, 'Marina Bay Street Circuit', 'Singapore', '4.940 km', 19, 2008, 'Sebastian Vettel (5)', '1:33.808 (Lewis Hamilton, 2025)', 300000),
(19, 'Circuit of the Americas', 'USA', '5.513 km', 20, 2012, 'Lewis Hamilton (6)', '1:36.169 (Charles Leclerc, 2019)', 440000),
(20, 'Autódromo Hermanos Rodríguez', 'Mexico', '4.304 km', 17, 1963, 'Max Verstappen (5)', '1:17.774 (Valtteri Bottas, 2021)', 400000),
(21, 'Interlagos', 'Brazil', '4.309 km', 15, 1973, 'Michael Schumacher (4)', '1:10.540 (Valtteri Bottas, 2018)', 304000),
(22, 'Las Vegas Strip Circuit', 'USA', '6.201 km', 17, 2023, 'Max Verstappen (2)', '1:33.365 (Max Verstappen, 2025)', 315000),
(23, 'Lusail International', 'Qatar', '5.419 km', 16, 2021, 'Max Verstappen (2)', '1:22.384 (Lando Norris, 2024)', 162000),
(24, 'Yas Marina Circuit', 'United Arab Emirates', '5.281 km', 16, 2009, 'Lewis Hamilton (5)', '1:25.637 (Kevin Magnussen, 2024)', 203000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
