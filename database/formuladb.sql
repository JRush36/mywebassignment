-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 01:51 PM
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
(1, 'Lewis Hamilton', 'England', '41', 'Ferrari', 44, 380, 5019, 105, 7, 'lewham.png', 'ferrari_car.png', 'lewnum.png', 'lewis-hamilton'),
(2, 'Max Verstappen', 'Netherlands', '28', 'Red Bull', 3, 233, 3445, 71, 4, 'maxver.png', 'redbull_car.png', 'maxnum.png', 'max-verstappen'),
(3, 'Lando Norris', 'England', '26', 'McLaren', 1, 152, 1430, 11, 1, 'lannor.png', 'mclaren_car.png', 'lannum.png', 'lando-norris'),
(4, 'Oscar Piastri', 'Australia', '24', 'McLaren', 81, 70, 799, 9, 0, 'oscpia.png', 'mclaren_car.png', 'oscnum.png', 'oscar-piastri'),
(5, 'George Russell', 'England', '28', 'Mercedes', 63, 152, 1033, 5, 0, 'georus.png', 'mercedes_car.png', 'geonum.png', 'george-russell'),
(6, 'Charles Leclerc', 'Monaco', '28', 'Ferrari', 16, 173, 1672, 8, 0, 'chalec.png', 'ferrari_car.png', 'chanum.png', 'charles-leclerc'),
(7, 'Kimi Antonelli', 'Italy', '19', 'Mercedes', 12, 24, 150, 0, 0, 'kimant.png', 'mercedes_car.png', 'kimnum.png', 'kimi-antonelli'),
(8, 'Alexander Albon', 'Thailand', '29', 'Williams', 23, 130, 313, 0, 0, 'alealb.png', 'williams_car.png', 'alenum.png', 'alexander-albon'),
(9, 'Carlos Sainz', 'Spain', '31', 'Williams', 55, 233, 1337, 4, 0, 'carsai.png', 'williams_car.png', 'carnum.png', 'carlos-sainz'),
(10, 'Fernando Alonso', 'Spain', '44', 'Aston Martin', 14, 428, 2393, 32, 2, 'feralo.png', 'astonmartin_car.png', 'fernum.png', 'fernando-alonso'),
(11, 'Nico Hülkenberg', 'Germany', '38', 'Audi', 27, 254, 622, 0, 0, 'nichul.png', 'audi_car.png', 'nicnum.png', 'nico-hülkenberg'),
(12, 'Isack Hadjar', 'France', '21', 'Red Bull', 6, 24, 51, 0, 0, 'isahad.png', 'redbull_car.png', 'isanum.png', 'isack-hadjar'),
(13, 'Oliver Bearman', 'England', '20', 'Haas', 87, 27, 48, 0, 0, 'olibea.png', 'haas_car.png', 'olinum.png', 'oliver-bearman'),
(14, 'Liam Lawson', 'New Zealand', '24', 'VCARB', 30, 35, 44, 0, 0, 'lialaw.png', 'vcarb_car.png', 'lianum.png', 'liam-lawson'),
(15, 'Esteban Ocon', 'France', '29', 'Haas', 31, 180, 483, 1, 0, 'estoco.png', 'haas_car.png', 'estnum.png', 'esteban-ocon'),
(16, 'Lance Stroll', 'Canada', '27', 'Aston Martin', 18, 193, 325, 0, 0, 'lanstr.png', 'astonmartin_car.png', 'lncnum.png', 'lance-stroll'),
(17, 'Pierre Gasly', 'France', '30', 'Alpine', 10, 178, 458, 1, 0, 'piegas.png', 'alpine_car.png', 'pienum.png', 'pierre-gasly'),
(18, 'Gabriel Bortoleto', 'Brazil', '21', 'Audi', 5, 24, 19, 0, 0, 'gabbor.png', 'audi_car.png', 'gabnum.png', 'gabriel-bortoleto'),
(19, 'Franco Colapinto', 'Argentina', '22', 'Alpine', 43, 27, 5, 0, 0, 'fracol.png', 'alpine_car.png', 'franum.png', 'franco-colapinto'),
(20, 'Valtteri Bottas', 'Finland', '36', 'Cadillac', 77, 247, 1797, 10, 0, 'valbot.png', 'cadillac_car.png', 'valnum.png', 'valtteri-bottas'),
(21, 'Sergio Perez', 'Mexico', '36', 'Cadillac', 11, 285, 1638, 6, 0, 'serper.png', 'cadillac_car.png', 'sernum.png', 'sergio-perez'),
(22, 'Arvid Lindblad', 'England', '18', 'VCARB', 41, 0, 0, 0, 0, 'arvlin.png', 'vcarb_car.png', 'arvnum.png', 'arvid-lindblad');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `headquarters` text NOT NULL,
  `chassis` varchar(10) NOT NULL,
  `power_unit` text NOT NULL,
  `team_principal` text NOT NULL,
  `driver_1` text NOT NULL,
  `driver_2` text NOT NULL,
  `wins` int(11) NOT NULL,
  `constructor_titles` int(11) NOT NULL,
  `team_logo` varchar(100) DEFAULT NULL,
  `car_image` text DEFAULT NULL,
  `slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `name`, `country`, `headquarters`, `chassis`, `power_unit`, `team_principal`, `driver_1`, `driver_2`, `wins`, `constructor_titles`, `team_logo`, `car_image`, `slug`) VALUES
(1, 'BWT Alpine F1 Team', 'France', 'Enstone, UK', 'A526', 'Mercedes-AMG F1 M17', 'Flavio Briatore', 'Pierre Gasly', 'Franco Colapinto', 1, 0, 'alpine_img.png', 'alpine_car.png', 'bwt-alpine-f1-team'),
(2, 'Aston Martin Aramco F1 Team', 'United Kingdom', 'Silverstone, UK', 'AMR26', 'Honda RA626H', 'Adrian Newey', 'Fernando Alonso', 'Lance Stroll', 0, 0, 'astonmartin_img.png', 'astonmartin_car.png', 'aston-martin-aramco-f1-team'),
(3, 'Atlassian Williams F1 Team', 'United Kingdom', 'Grove, UK', 'FW48', 'Mercedes-AMG F1 M17', 'James Vowles', 'Carlos Sainz', 'Alexander Albon', 114, 9, 'williams_img.png', 'williams_car.png', 'atlassian-williams-f1-team'),
(4, 'Audi Revolut F1 Team', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'R26', 'Audi AFR 26 Hybrid', 'Mattia Binotto', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0, 'audi_img.png', 'audi_car.png', 'audi-revolut-f1-team'),
(5, 'Cadillac Formula 1 Team', 'USA', 'Fishers, USA & Silverstone, UK', 'MAC-26', 'Ferrari 067/6', 'Graeme Lowdon', 'Valtteri Bottas', 'Sergio Pérez', 0, 0, 'cadillac_img.png', 'cadillac_img.png', 'cadillac-formula-1-team'),
(6, 'Scuderia Ferrari HP', 'Italy', 'Maranello, Italy', 'SF-26', 'Ferrari 067/6', 'Fred Vasseur', 'Charles Leclerc', 'Lewis Hamilton', 248, 16, 'ferrari_img.png', 'ferrari_car.png', 'scuderia-ferrari-hp'),
(7, 'TGR Haas F1 Team', 'USA', 'Kannapolis, USA & Banbury, UK', 'VF-26', 'Ferrari 067/6', 'Ayao Komatsu', 'Oliver Bearman', 'Esteban Ocon', 0, 0, 'haas_img.png', 'haas_car.png', 'tgr-haas-f1-team'),
(8, 'McLaren Mastercard F1 Team', 'United Kingdom', 'Woking, UK', 'MCL40', 'Mercedes-AMG F1 M17', 'Andrea Stella', 'Lando Norris', 'Oscar Piastri', 203, 10, 'mclaren_img.png', 'mclaren_car.png', 'mclaren-mastercard-f1-team'),
(9, 'Mercedes-AMG Petronas F1 Team', 'Germany', 'Brackley, UK', 'F1 W17', 'Mercedes-AMG F1 M17', 'Toto Wolff', 'George Russell', 'Kimi Antonelli', 131, 8, 'mercedes_img.png', 'mercedes_car.png', 'mercedes-amg-petronas-f1-team'),
(10, 'Visa Cash App Racing Bulls F1 Team', 'Italy', 'Faenza, Italy', 'VCARB 03', 'Red Bull Ford DM01', 'Alan Permane', 'Liam Lawson', 'Arvid Lindblad', 0, 0, 'vcarb_img.png', 'vcarb_car.png', 'visa-cash-app-racing-bulls-f1-team'),
(11, 'Oracle Red Bull Racing', 'Austria', 'Milton Keynes, UK', 'RB22', 'Red Bull Ford DM01', 'Laurent Mekies', 'Max Verstappen', 'Isack Hadjar', 130, 6, 'redbull_img.png', 'redbull_car.png', 'oracle-red-bull-racing');

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
  `track_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`ID`, `Name`, `Country`, `Length`, `Corners`, `First Grand Prix`, `Most Wins`, `Lap Record`, `Attendance Record`, `track_image`) VALUES
(1, 'Albert Park', 'Australia', '5.278 km', 14, 1996, 'Michael Schumacher (4)', '1:19.813 (Charles Leclerc, 2024)', 480000, 'albertpark.png'),
(2, 'Shanghai International', 'China', '5.451 km', 16, 2004, 'Lewis Hamilton (6)', '1:32.238 (Michael Schumacher, 2004)', 260000, 'shanghai.png'),
(3, 'Suzuka', 'Japan', '5.807km', 18, 1987, 'Michael Schumacher (6)', '1:30.965 (Kimi Antonelli, 2025)', 357000, 'suzuka.png'),
(4, 'Miami International Autodrome', 'USA', '5.412 km', 19, 2022, 'Max Verstappen (2)', '1:29.708 (Max Verstappen, 2023)', 275000, 'miami.png'),
(5, 'Circuit Gilles-Villeneuve', 'Canada', '4.361 km', 14, 1978, 'Michael Schumacher & Lewis Hamilton (7)', '1:13.078 (Valterri Bottas, 2019)', 352000, 'gilles-villeneuve.png'),
(6, 'Circuit de Monaco', 'Monaco', '3.337 km', 19, 1950, 'Ayrton Senna (6)', '1:12.909 (Lewis Hamilton, 2021)', 250000, 'monaco.png'),
(7, 'Circuit de Barcelona-Catalunya', 'Spain', '4.657 km', 14, 1991, 'Michael Schumacher & Lewis Hamilton (6)', '1:15.743 (Oscar Piastri, 2025)', 288000, 'catalunya.png'),
(8, 'Red Bull Ring', 'Austria', '4.318 km', 10, 1970, 'Max Verstappen (4)', '1:07.924 (Oscar Piastri, 2025)', 304000, 'redbullring.png'),
(9, 'Silverstone', 'United Kingdom', '5.891 km', 18, 1950, 'Lewis Hamilton (8)', '1:27.097 (Max Verstappen, 2020)', 500000, 'silverstone.png'),
(10, 'Spa-Francorchamps', 'Belgium', '7.004 km', 19, 1950, 'Michael Schumacher (6)', '1:44.701 (Sergio Perez, 2024)', 389000, 'spafrancorchamps.png'),
(11, 'Hungaroring\r\n', 'Hungary', '4.381 km', 14, 1986, 'Lewis Hamilton (8)', '1:16.627 (Lewis Hamilton, 2020)', 310000, 'hungaroring.png'),
(12, 'Zandvoort', 'Netherlands', '4.259 km', 14, 1952, 'Jim Clark (4)', '1:11.097 (Lewis Hamilton, 2021)', 305000, 'zandvoort.png'),
(13, 'Monza', 'Italy', '5.793 km', 11, 1950, 'Michael Schumacher & Lewis Hamilton (5)', '1:20.901 (Lando Norris, 2025)', 370000, 'monza.png'),
(14, 'Madring', 'Spain', '5.416km', 22, 2026, 'N/A', 'N/A', 0, 'madring.png'),
(15, 'Baku City Circuit', 'Azerbaijan', '6.003 km', 20, 2016, 'Sergio Pérez (2)', '1:43.009 (Charles Leclerc, 2019)', 76000, 'baku.png'),
(16, 'Marina Bay Street Circuit', 'Singapore', '4.940 km', 19, 2008, 'Sebastian Vettel (5)', '1:33.808 (Lewis Hamilton, 2025)', 300000, 'singapore.png'),
(17, 'Circuit of the Americas', 'USA', '5.513 km', 20, 2012, 'Lewis Hamilton (6)', '1:36.169 (Charles Leclerc, 2019)', 440000, 'cota.png'),
(18, 'Autódromo Hermanos Rodríguez', 'Mexico', '4.304 km', 17, 1963, 'Max Verstappen (5)', '1:17.774 (Valtteri Bottas, 2021)', 400000, 'mexicocity.png'),
(19, 'Interlagos', 'Brazil', '4.309 km', 15, 1973, 'Michael Schumacher (4)', '1:10.540 (Valtteri Bottas, 2018)', 304000, 'interlagos.png'),
(20, 'Las Vegas Strip Circuit', 'USA', '6.201 km', 17, 2023, 'Max Verstappen (2)', '1:33.365 (Max Verstappen, 2025)', 315000, 'lasvegas.png'),
(21, 'Lusail International', 'Qatar', '5.419 km', 16, 2021, 'Max Verstappen (2)', '1:22.384 (Lando Norris, 2024)', 162000, 'lusail.png'),
(22, 'Yas Marina Circuit', 'United Arab Emirates', '', 16, 2009, 'Lewis Hamilton (5)', '1:25.637 (Kevin Magnussen, 2024)', 203000, 'yasmarina.png');

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
