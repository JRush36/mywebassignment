-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2026 at 10:58 PM
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
  `Attendance Record` int(11) NOT NULL,
  `Slug` text NOT NULL,
  `track_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`ID`, `Name`, `Country`, `Length`, `Corners`, `First Grand Prix`, `Most Wins`, `Lap Record`, `Attendance Record`, `Slug`, `track_image`) VALUES
(1, 'Albert Park', 'Australia', '5.278 km', 14, 1996, 'Michael Schumacher (4)', '1:19.813 (Charles Leclerc, 2024)', 480000, 'albert-park', 'albertpark.png'),
(2, 'Shanghai International', 'China', '5.451 km', 16, 2004, 'Lewis Hamilton (6)', '1:32.238 (Michael Schumacher, 2004)', 260000, 'shanghai-international', 'shanghai.png'),
(3, 'Suzuka', 'Japan', '5.807km', 18, 1987, 'Michael Schumacher (6)', '1:30.965 (Kimi Antonelli, 2025)', 357000, 'suzuka', 'suzuka.png'),
(4, 'Miami International Autodrome', 'USA', '5.412 km', 19, 2022, 'Max Verstappen (2)', '1:29.708 (Max Verstappen, 2023)', 275000, 'miami-international', 'miami.png'),
(5, 'Circuit Gilles-Villeneuve', 'Canada', '4.361 km', 14, 1978, 'Michael Schumacher & Lewis Hamilton (7)', '1:13.078 (Valterri Bottas, 2019)', 352000, 'gilles-villeneuve', 'gilles-villeneuve.png'),
(6, 'Circuit de Monaco', 'Monaco', '3.337 km', 19, 1950, 'Ayrton Senna (6)', '1:12.909 (Lewis Hamilton, 2021)', 250000, 'monaco', 'monaco.png'),
(7, 'Circuit de Barcelona-Catalunya', 'Spain', '4.657 km', 14, 1991, 'Michael Schumacher & Lewis Hamilton (6)', '1:15.743 (Oscar Piastri, 2025)', 288000, 'catalunya', 'catalunya.png'),
(8, 'Red Bull Ring', 'Austria', '4.318 km', 10, 1970, 'Max Verstappen (4)', '1:07.924 (Oscar Piastri, 2025)', 304000, 'red-bull-ring', 'redbullring.png'),
(9, 'Silverstone', 'United Kingdom', '5.891 km', 18, 1950, 'Lewis Hamilton (8)', '1:27.097 (Max Verstappen, 2020)', 500000, 'silverstone', 'silverstone.png'),
(10, 'Spa-Francorchamps', 'Belgium', '7.004 km', 19, 1950, 'Michael Schumacher (6)', '1:44.701 (Sergio Perez, 2024)', 389000, 'spa-francorchamps', 'spafrancorchamps.png'),
(11, 'Hungaroring\r\n', 'Hungary', '4.381 km', 14, 1986, 'Lewis Hamilton (8)', '1:16.627 (Lewis Hamilton, 2020)', 310000, 'hungaroring', 'hungaroring.png'),
(12, 'Zandvoort', 'Netherlands', '4.259 km', 14, 1952, 'Jim Clark (4)', '1:11.097 (Lewis Hamilton, 2021)', 305000, 'zandvoort', 'zandvoort.png'),
(13, 'Monza', 'Italy', '5.793 km', 11, 1950, 'Michael Schumacher & Lewis Hamilton (5)', '1:20.901 (Lando Norris, 2025)', 370000, 'monza', 'monza.png'),
(14, 'Madring', 'Spain', '5.416km', 22, 2026, 'N/A', 'N/A', 0, 'madring', 'madring.png'),
(15, 'Baku City Circuit', 'Azerbaijan', '6.003 km', 20, 2016, 'Sergio Pérez (2)', '1:43.009 (Charles Leclerc, 2019)', 76000, 'baku-city-circuit', 'baku.png'),
(16, 'Marina Bay Street Circuit', 'Singapore', '4.940 km', 19, 2008, 'Sebastian Vettel (5)', '1:33.808 (Lewis Hamilton, 2025)', 300000, 'singapore', 'singapore.png'),
(17, 'Circuit of the Americas', 'USA', '5.513 km', 20, 2012, 'Lewis Hamilton (6)', '1:36.169 (Charles Leclerc, 2019)', 440000, 'circuit-of-the-americas', 'cota.png'),
(18, 'Autódromo Hermanos Rodríguez', 'Mexico', '4.304 km', 17, 1963, 'Max Verstappen (5)', '1:17.774 (Valtteri Bottas, 2021)', 400000, 'autodromo-hermanos-rodriguez', 'mexicocity.png'),
(19, 'Interlagos', 'Brazil', '4.309 km', 15, 1973, 'Michael Schumacher (4)', '1:10.540 (Valtteri Bottas, 2018)', 304000, 'interlagos', 'interlagos.png'),
(20, 'Las Vegas Strip Circuit', 'USA', '6.201 km', 17, 2023, 'Max Verstappen (2)', '1:33.365 (Max Verstappen, 2025)', 315000, 'las-vegas', 'lasvegas.png'),
(21, 'Lusail International', 'Qatar', '5.419 km', 16, 2021, 'Max Verstappen (2)', '1:22.384 (Lando Norris, 2024)', 162000, 'lusail-international', 'lusail.png'),
(22, 'Yas Marina Circuit', 'United Arab Emirates', '5.281km', 16, 2009, 'Lewis Hamilton (5)', '1:25.637 (Kevin Magnussen, 2024)', 203000, 'yas-marina-circuit', 'yasmarina.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
