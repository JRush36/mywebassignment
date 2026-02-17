-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2026 at 02:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.25

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
  `Name` text NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Age` varchar(3) NOT NULL,
  `Team` text NOT NULL,
  `Driver No.` int(11) NOT NULL,
  `Grand Prix Entered` int(11) NOT NULL,
  `Career Points` int(11) NOT NULL,
  `Wins` int(11) NOT NULL,
  `World Titles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`ID`, `Name`, `Country`, `Age`, `Team`, `Driver No.`, `Grand Prix Entered`, `Career Points`, `Wins`, `World Titles`) VALUES
(1, 'Lewis Hamilton', 'England', '41', 'Ferrari', 44, 380, 5019, 105, 7),
(2, 'Max Verstappen', 'Netherlands', '28', 'Red Bull', 3, 233, 3445, 71, 4),
(3, 'Lando Norris', 'England', '26', 'McLaren', 1, 152, 1430, 11, 1),
(4, 'Oscar Piastri', 'Australia', '24', 'McLaren', 81, 70, 799, 9, 0),
(5, 'George Russell', 'England', '28', 'Mercedes', 63, 152, 1033, 5, 0),
(6, 'Charles Leclerc', 'Monaco', '28', 'Ferrari', 16, 173, 1672, 8, 0),
(7, 'Kimi Antonelli', 'Italy', '19', 'Mercedes', 12, 24, 150, 0, 0),
(8, 'Alexander Albon', 'Thailand', '29', 'Williams', 23, 130, 313, 0, 0),
(9, 'Carlos Sainz', 'Spain', '31', 'Williams', 55, 233, 1337, 4, 0),
(10, 'Fernando Alono', 'Spain', '44', 'Aston Martin', 14, 428, 2393, 32, 2),
(11, 'Nico Hülkenberg', 'Germany', '38', 'Audi', 27, 254, 622, 0, 0),
(12, 'Isack Hadjar', 'France', '21', 'Red Bull', 6, 24, 51, 0, 0),
(13, 'Oliver Bearman', 'England', '20', 'Haas', 87, 27, 48, 0, 0),
(14, 'Liam Lawson', 'New Zealand', '24', 'Racing Bulls', 30, 35, 44, 0, 0),
(15, 'Esteban Ocon', 'France', '29', 'Haas', 31, 180, 483, 1, 0),
(16, 'Lance Stroll', 'Canada', '27', 'Aston Martin', 18, 193, 325, 0, 0),
(17, 'Pierre Gasly', 'France', '30', 'Alpine', 10, 178, 458, 1, 0),
(18, 'Gabriel Bortoleto', 'Brazil', '21', 'Audi', 5, 24, 19, 0, 0),
(19, 'Franco Colapinto', 'Argentina', '22', 'Alpine', 43, 27, 5, 0, 0),
(20, 'Valtteri Bottas', 'Finland', '36', 'Cadillac', 77, 247, 1797, 10, 0),
(21, 'Sergio Perez', 'Mexico', '36', 'Cadillac', 11, 285, 1638, 6, 0),
(22, 'Arvid Lindblad', 'England', '41', 'Racing Bulls', 41, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Country` text NOT NULL,
  `Headquarters` text NOT NULL,
  `Engine Manufacturer` text NOT NULL,
  `Driver 1` text NOT NULL,
  `Driver 2` text NOT NULL,
  `Wins` int(11) NOT NULL,
  `Constructor Titles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `Name`, `Country`, `Headquarters`, `Engine Manufacturer`, `Driver 1`, `Driver 2`, `Wins`, `Constructor Titles`) VALUES
(1, 'Alpine', 'France', 'Enstone, UK', 'Mercedes', 'Pierre Gasly', 'Franco Colapinto', 1, 0),
(2, 'Aston Martin', 'United Kingdom', 'Silverstone, UK', 'Honda', 'Fernando Alonso', 'Lance Stroll', 0, 0),
(3, 'Williams', 'United Kingdom', 'Grove, UK', 'Mercedes', 'Carlos Sainz', 'Alexander Albon', 114, 9),
(4, 'Audi', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'Audi', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0),
(5, 'Cadillac', 'USA', 'Fishers, USA & Silverstone, UK', 'Ferrari', 'Valtteri Bottas', 'Sergio Pérez', 0, 0),
(6, 'Ferrari', 'Italy', 'Maranello, Italy', 'Ferrari', 'Charles Leclerc', 'Lewis Hamilton', 248, 16),
(7, 'Haas', 'USA', 'Kannapolis, USA & Banbury, UK', 'Ferarri', 'Oliver Bearman', 'Esteban Ocon', 0, 0),
(8, 'McLaren', 'United Kingdom', 'Woking, UK', 'Mercedes', 'Lando Norris', 'Oscar Piastri', 203, 10),
(9, 'Mercedes', 'Germany', 'Brackley, UK', 'Mercedes', 'George Russell', 'Kimi Antonelli', 131, 8),
(10, 'Racing Bulls', 'Italy', 'Faenza, Italy', 'Red Bull Ford', 'Liam Lawson', 'Arvid Lindblad', 0, 0),
(11, 'Red Bull', 'Austria', 'Milton Keynes, UK', 'Red Bull Ford', 'Max Verstappen', 'Isack Hadjar', 130, 6);

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
(1, 'Albert Park', 'Australia', '5.278 km', 14, 1996, 'Michael Schumacher (4)', '1:19.813 (Charles Leclerc, 2024)', 0),
(2, 'Shanghai International', 'China', '5.451 km', 16, 2004, 'Lewis Hamilton (6)', '1:32.238 (Michael Schumacher, 2004)', 0),
(3, 'Suzuka', 'Japan', '5.807km', 18, 1987, 'Michael Schumacher (6)', '1:30.965 (Kimi Antonelli, 2025)', 0),
(4, 'Bahrain International', 'Bahrain', '5.412 km', 15, 2004, 'Lewis Hamilton (5)', '', 0),
(5, 'Jeddah', 'Saudi Arabia', '6.174 km', 27, 2021, 'Max Verstappen (3)', '', 0),
(6, 'Miami International Autodrome', 'USA', '5.412 km', 19, 2022, 'Max Verstappen (2)', '', 0),
(7, 'Circuit Gilles-Villeneuve', 'Canada', '4.361 km', 14, 1978, 'Michael Schumacher & Lewis Hamilton (7)', '', 0),
(8, 'Circuit de Monaco', 'Monaco', '3.337 km', 19, 1950, 'Ayrton Senna (6)', '', 0),
(9, 'Circuit de Barcelona-Catalunya', 'Spain', '4.657 km', 14, 1991, 'Michael Schumacher & Lewis Hamilton (6)', '', 0),
(10, 'Red Bull Ring', 'Austria', '4.318 km', 10, 1970, 'Max Verstappen (4)', '', 0),
(11, 'Silverstone', 'United Kingdom', '5.891 km', 18, 1950, 'Lewis Hamilton (8)', '', 0),
(12, 'Spa-Francorchamps', 'Belgium', '7.004 km', 19, 1950, 'Michael Schumacher (6)', '', 0),
(13, 'Hungaroring\r\n', 'Hungary', '4.381 km', 14, 1986, 'Lewis Hamilton (8)', '', 0),
(14, 'Zandvoort', 'Netherlands', '4.259 km', 14, 1952, 'Jim Clark (4)', '', 0),
(15, 'Monza', 'Italy', '5.793 km', 11, 1950, 'Michael Schumacher & Lewis Hamilton (5)', '', 0),
(16, 'Madring', 'Spain', '5.416km', 22, 2026, 'N/A', 'N/A', 0),
(17, 'Baku City Circuit', 'Azerbaijan', '6.003 km', 20, 2016, 'Sergio Pérez (2)', '', 0),
(18, 'Marina Bay Street Circuit', 'Singapore', '4.940 km', 19, 2008, 'Sebastian Vettel (5)', '', 0),
(19, 'Circuit of the Americas', 'USA', '5.513 km', 20, 2012, 'Lewis Hamilton (6)', '', 0),
(20, 'Autódromo Hermanos Rodríguez', 'Mexico', '4.304 km', 17, 1963, 'Max Verstappen (5)', '', 0),
(21, 'Interlagos', 'Brazil', '4.309 km', 15, 1973, 'Michael Schumacher (4)', '', 0),
(22, 'Las Vegas Strip Circuit', 'USA', '6.201 km', 17, 2023, 'Max Verstappen (2)', '', 0),
(23, 'Lusail International', 'Qatar', '5.419 km', 16, 2021, 'Max Verstappen (2)', '', 0),
(24, 'Yas Marina Circuit', 'United Arab Emirates', '5.281 km', 16, 2009, 'Lewis Hamilton (5)', '', 0);

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
