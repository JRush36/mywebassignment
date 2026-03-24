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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
