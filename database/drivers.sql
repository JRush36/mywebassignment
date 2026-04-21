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
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` varchar(20) NOT NULL,
  `age` varchar(3) NOT NULL,
  `biography` text NOT NULL,
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

INSERT INTO `drivers` (`ID`, `name`, `country`, `age`, `biography`, `team`, `driver_no`, `grand_prix_entered`, `career_points`, `wins`, `world_titles`, `driver_photo`, `car_image`, `driver_number`, `slug`) VALUES
(1, 'Lewis Hamilton', 'England', '41', 'Sir Lewis Carl Davidson Hamilton, born 7 January 1985, is a British racing driver who competes in Formula One for Ferrari. Hamilton has won a joint-record seven Formula One World Drivers\' Championship titles—tied with Michael Schumacher—and holds the records for most wins (105), pole positions (104), and podium finishes (203), among others. ', 'Ferrari', 44, 380, 5019, 105, 7, 'lewham.png', 'ferrari_car.png', 'lewnum.png', 'lewis-hamilton'),
(2, 'Max Verstappen', 'Netherlands', '28', 'Max Emilian Verstappen, born 30 September 1997, is a Dutch and Belgian racing driver who competes under the Dutch flag in Formula One for Red Bull Racing. Verstappen has won four Formula One World Drivers\' Championship titles, which he won consecutively from 2021 to 2024 with Red Bull, and has won 71 Grands Prix across 12 seasons. ', 'Red Bull', 3, 233, 3445, 71, 4, 'maxver.png', 'redbull_car.png', 'maxnum.png', 'max-verstappen'),
(3, 'Lando Norris', 'England', '26', 'Lando Norris, born 13 November 1999, is a British racing driver who competes in Formula One for McLaren. Norris won the Formula One World Drivers\' Championship in 2025 with McLaren, and has won 11 Grands Prix across eight seasons. ', 'McLaren', 1, 152, 1430, 11, 1, 'lannor.png', 'mclaren_car.png', 'lannum.png', 'lando-norris'),
(4, 'Oscar Piastri', 'Australia', '24', 'Oscar Jack Piastri, born 6 April 2001, is an Australian racing driver who competes in Formula One for McLaren. Piastri has won nine Formula One Grands Prix across four seasons. ', 'McLaren', 81, 70, 799, 9, 0, 'oscpia.png', 'mclaren_car.png', 'oscnum.png', 'oscar-piastri'),
(5, 'George Russell', 'England', '28', 'George William Russell, born 15 February 1998, is a British racing driver who competes in Formula One for Mercedes. Russell has won six Formula One Grands Prix across eight seasons. ', 'Mercedes', 63, 152, 1033, 5, 0, 'georus.png', 'mercedes_car.png', 'geonum.png', 'george-russell'),
(6, 'Charles Leclerc', 'Monaco', '28', 'Charles Marc Hervé Perceval Leclerc, born 16 October 1997, is a Monégasque racing driver who competes in Formula One for Ferrari. Leclerc was runner-up in the Formula One World Drivers\' Championship in 2022 with Ferrari, and has won eight Grands Prix across nine seasons. ', 'Ferrari', 16, 173, 1672, 8, 0, 'chalec.png', 'ferrari_car.png', 'chanum.png', 'charles-leclerc'),
(7, 'Kimi Antonelli', 'Italy', '19', 'Andrea Kimi Antonelli, born 25 August 2006, is an Italian racing driver who competes in Formula One for Mercedes. Antonelli has won two Formula One Grands Prix across two seasons. ', 'Mercedes', 12, 24, 150, 0, 0, 'kimant.png', 'mercedes_car.png', 'kimnum.png', 'kimi-antonelli'),
(8, 'Alexander Albon', 'Thailand', '29', 'Alexander Philippe Albon Ansusinha, born 23 March 1996, is a Thai and British racing driver who competes under the Thai flag in Formula One for Williams. ', 'Williams', 23, 130, 313, 0, 0, 'alealb.png', 'williams_car.png', 'alenum.png', 'alexander-albon'),
(9, 'Carlos Sainz', 'Spain', '31', 'Carlos Sainz Vázquez de Castro, born 1 September 1994, is a Spanish racing driver who competes in Formula One for Williams. Sainz has won four Formula One Grands Prix across 12 seasons. ', 'Williams', 55, 233, 1337, 4, 0, 'carsai.png', 'williams_car.png', 'carnum.png', 'carlos-sainz'),
(10, 'Fernando Alonso', 'Spain', '44', 'Fernando Alonso Díaz, born 29 July 1981, is a Spanish racing driver who competes in Formula One for Aston Martin. Alonso has won two Formula One World Drivers\' Championship titles, which he won in 2005 and 2006 with Renault, and has won 32 Grands Prix across 23 seasons. He is the only driver to have won both the Formula One World Drivers\' Championship and the World Sportscar/World Endurance Drivers\' Championship. ', 'Aston Martin', 14, 428, 2393, 32, 2, 'feralo.png', 'astonmartin_car.png', 'fernum.png', 'fernando-alonso'),
(11, 'Nico Hülkenberg', 'Germany', '38', 'Nicolas Hülkenberg, born 19 August 1987, is a German racing driver who competes in Formula One for Audi. In endurance racing, Hülkenberg won the 24 Hours of Le Mans in 2015 with Porsche. ', 'Audi', 27, 254, 622, 0, 0, 'nichul.png', 'audi_car.png', 'nicnum.png', 'nico-hülkenberg'),
(12, 'Isack Hadjar', 'France', '21', 'Isack Alexandre Hadjar, born 28 September 2004, is a French and Algerian racing driver who competes under the French flag in Formula One for Red Bull Racing. ', 'Red Bull', 6, 24, 51, 0, 0, 'isahad.png', 'redbull_car.png', 'isanum.png', 'isack-hadjar'),
(13, 'Oliver Bearman', 'England', '20', 'Oliver James Bearman, born 8 May 2005, is a British racing driver who competes in Formula One for Haas. ', 'Haas', 87, 27, 48, 0, 0, 'olibea.png', 'haas_car.png', 'olinum.png', 'oliver-bearman'),
(14, 'Liam Lawson', 'New Zealand', '24', 'Liam Jared Lawson, born 11 February 2002, is a New Zealand racing driver who competes in Formula One for Racing Bulls. ', 'VCARB', 30, 35, 44, 0, 0, 'lialaw.png', 'vcarb_car.png', 'lianum.png', 'liam-lawson'),
(15, 'Esteban Ocon', 'France', '29', 'Esteban José Jean-Pierre Ocon-Khelfane, born 17 September 1996, is a French racing driver who competes in Formula One for Haas. Ocon won the 2021 Hungarian Grand Prix with Alpine. ', 'Haas', 31, 180, 483, 1, 0, 'estoco.png', 'haas_car.png', 'estnum.png', 'esteban-ocon'),
(16, 'Lance Stroll', 'Canada', '27', 'Lance Strulovitch, born 29 October 1998, is a Canadian racing driver who competes in Formula One for Aston Martin. ', 'Aston Martin', 18, 193, 325, 0, 0, 'lanstr.png', 'astonmartin_car.png', 'lncnum.png', 'lance-stroll'),
(17, 'Pierre Gasly', 'France', '30', 'Pierre Jean-Jacques Gasly, born 7 February 1996, is a French racing driver who competes in Formula One for Alpine. Gasly won the 2020 Italian Grand Prix with AlphaTauri. ', 'Alpine', 10, 178, 458, 1, 0, 'piegas.png', 'alpine_car.png', 'pienum.png', 'pierre-gasly'),
(18, 'Gabriel Bortoleto', 'Brazil', '21', 'Gabriel Lourenzo Bortoleto Oliveira, born 14 October 2004, is a Brazilian racing driver who competes in Formula One for Audi. ', 'Audi', 5, 24, 19, 0, 0, 'gabbor.png', 'audi_car.png', 'gabnum.png', 'gabriel-bortoleto'),
(19, 'Franco Colapinto', 'Argentina', '22', 'Franco Alejandro Colapinto, born 27 May 2003, is an Argentine racing driver who competes in Formula One for Alpine. ', 'Alpine', 43, 27, 5, 0, 0, 'fracol.png', 'alpine_car.png', 'franum.png', 'franco-colapinto'),
(20, 'Valtteri Bottas', 'Finland', '36', 'Valtteri Viktor Bottas, born 28 August 1989, is a Finnish racing driver who competes in Formula One for Cadillac. Bottas has twice finished runner-up in the World Drivers\' Championship in 2019 and 2020 with Mercedes, and has won 10 Grands Prix across 13 seasons. ', 'Cadillac', 77, 247, 1797, 10, 0, 'valbot.png', 'cadillac_car.png', 'valnum.png', 'valtteri-bottas'),
(21, 'Sergio Perez', 'Mexico', '36', 'Sergio Michel Pérez Mendoza, born 26 January 1990, is a Mexican racing driver who competes in Formula One for Cadillac. Pérez was runner-up in the Formula One World Drivers\' Championship in 2023 with Red Bull, and has won six Grands Prix across 15 seasons. ', 'Cadillac', 11, 285, 1638, 6, 0, 'serper.png', 'cadillac_car.png', 'sernum.png', 'sergio-perez'),
(22, 'Arvid Lindblad', 'England', '18', 'Arvid Anand Olof Lindblad, born 8 August 2007, is a British racing driver who competes in Formula One for Racing Bulls. ', 'VCARB', 41, 0, 0, 0, 0, 'arvlin.png', 'vcarb_car.png', 'arvnum.png', 'arvid-lindblad');

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
