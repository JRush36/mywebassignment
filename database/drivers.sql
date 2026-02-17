-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2026 at 02:37 PM
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
